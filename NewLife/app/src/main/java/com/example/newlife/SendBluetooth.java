package com.example.newlife;

import androidx.appcompat.app.AppCompatActivity;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

public class SendBluetooth extends AppCompatActivity {
    private  static final UUID uuid = UUID.fromString("00001101-0000-1000-8000-00805f9b34fb");
    private BluetoothDevice btDevice;
    private TextView txtDevice;
    private EditText edtMsg;

    private BluetoothSocket socket;
    private OutputStream out;
    private InputStream in;

    private Button btnConectar;
    private Button btnEnviar;

    Thread workerThread;
    byte[] readBuffer;
    int    readBufferPosition;
    int    contador;
    volatile boolean stopWorker;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_send_bluetooth);

        txtDevice = (TextView)findViewById(R.id.txtDevice);

        btDevice = getIntent().getParcelableExtra(BluetoothDevice.EXTRA_DEVICE);
        //txtDevice.setText( btDevice.getName() + " - " + btDevice.getAddress());
        try
        {
                socket = btDevice.createRfcommSocketToServiceRecord(uuid);
                socket.connect();

                out = socket.getOutputStream();
                in  = socket.getInputStream();

                beginListenForData();

        } catch (Exception e)
        {
            Log.e("BT","erro bt " + e.getMessage());
        }

    }
    private void beginListenForData()
    {
        final Handler handler = new Handler();
        final byte delimiter = 0x0A; // ascii para nova linha

        stopWorker = false;
        readBufferPosition = 0;
        readBuffer = new byte[1024];

        workerThread = new Thread(new Runnable() {
            @Override
            public void run() {

                while (!Thread.currentThread().isInterrupted() && !stopWorker)
                {
                    try
                    {
                        int bytesAvailable = in.available();
                        if(bytesAvailable > 0)
                        {
                            byte[] recebidos = new byte[bytesAvailable];
                            in.read(recebidos);
                            for (int i= 0; i<bytesAvailable;i++)
                            {
                                byte b = recebidos[i];

                                if (b == delimiter)
                                {
                                    byte[] msgFinal = new byte[readBufferPosition];
                                    System.arraycopy(readBuffer,0,msgFinal,0,msgFinal.length);
                                    final String data = new String(msgFinal,"US-ASCII");
                                    readBufferPosition = 0;

                                    handler.post(new Runnable() {
                                        @Override
                                        public void run() {
                                            if (Integer.parseInt(data.replace("\r", "")) <= 0 || Integer.parseInt(data.replace("\r", "")) >= 200)
                                                txtDevice.setText("Seu dedo não foi colocado corretamente!");
                                            else if (Integer.parseInt(data.replace("\r", "")) > 180)
                                                txtDevice.setText("Seus batimentos estão acelerados!");
                                            else
                                                txtDevice.setText(data);

                                        }
                                    });

                                }else
                                {
                                    readBuffer[readBufferPosition++] = b;
                                }
                            }
                        }


                    }catch (Exception e)
                    {

                    }
                }
            }
        });

        workerThread.start();

    }

    @Override
    public void onDestroy()
    {
        try {
            in.close();
            out.close();
            socket.close();
            stopWorker = true;
        }catch (Exception e){

        }

        super.onDestroy();


    }
}








