package com.example.newlife;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.os.Bundle;
import android.os.Message;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import java.util.UUID;

public class ConnectionThread extends Thread {

    BluetoothSocket btSocket = null;
    BluetoothServerSocket btServerSocket = null;
    InputStream input = null;
    OutputStream output = null;

    String btDevAddress = null;
    String myUUID = "00001101-0000-1000-8000-00805F9B34FB"; // errado
    boolean server;
    boolean running = false;
    boolean isConnected = false;


    //construtor prepara o dispositivo para atuar como servidor
    public ConnectionThread() {
        this.server = true;
    }

    //construtor prepara o dispositivo para atuar como cliente
    public ConnectionThread(String btDevAddress){
        this.server = false;
        this.btDevAddress = btDevAddress;
    }

    //contem as instruções que serão efetivamente realizadas em uma nova thread
    public void run(){
        //anuncia que a thread está sendo executada
        this.running = true;
        //pega uma referencia para o adaptador Bluetooth padrão
        BluetoothAdapter btAdapter = BluetoothAdapter.getDefaultAdapter();

        if(this.server){
            //servidor
            try{
                //cria um socket de servidor Bluetooth.
                //permanece em estado de espera até que algum cliente estabeleça uma conexão.
                btServerSocket = btAdapter.listenUsingRfcommWithServiceRecord("Super Counter", UUID.fromString(myUUID));
                btSocket = btServerSocket.accept();

                //se a conexão foi estabelecida corretamente, o socket servidor pode ser liberado.
                if(btSocket != null){
                    btServerSocket.close();
                }
            }
            catch (IOException e){
                //significa que a conexão falhou
                e.printStackTrace();
                toMainActivity("---N".getBytes());
            }
        }
        else{
            //cliente
            try{
                //obtem uma representação do dispositivo Bluetooth com endereço btDevAddress.
                //cria um socket Bluetooth.
                BluetoothDevice btDevice = btAdapter.getRemoteDevice(btDevAddress);
                btSocket = btDevice.createInsecureRfcommSocketToServiceRecord(UUID.fromString(myUUID));

                btAdapter.cancelDiscovery();

                if(btSocket != null){
                    btSocket.connect();;
                }
            }
            catch (IOException e){
                //conexão falhou
                e.printStackTrace();
                toMainActivity("---N".getBytes());
            }
        }

        if(btSocket != null){
            this.isConnected = true;
            toMainActivity("---S".getBytes());

            try{
                input = btSocket.getInputStream();
                output = btSocket.getOutputStream();

                while (running){
                    byte[] buffer = new byte[1024];
                    int bytes;
                    int bytesRead = -1;
                    do {
                        bytes = input.read(buffer, bytesRead+1, 1);
                        bytesRead+=bytes;
                    } while(buffer[bytesRead] != '\n');


                    //A mensagem recebida é enviada para a Activity principal
                    toMainActivity(Arrays.copyOfRange(buffer, 0, bytesRead-1));

                }
            }catch (IOException e){
                e.printStackTrace();
                toMainActivity("---N".getBytes());
                this.isConnected = false;
            }
        }
    }

    private void toMainActivity(byte[] data) {

        Message message = new Message();
        Bundle bundle = new Bundle();
        bundle.putByteArray("data", data);
        message.setData(bundle);
       // MainActivity.handler.sendMessage(message); TA ESCRITO LA NA MAIN
    }
    public void write(byte[] data) {

        if(output != null) {
            try {

                //Transmite a mensagem.
                output.write(data);

            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {

            // Envia à Activity principal um código de erro durante a conexão.
            toMainActivity("---N".getBytes());
        }
    }

    //Método utilizado pela Activity principal para encerrar a conexão
    public void cancel() {

        try {

            running = false;
            this.isConnected = false;
            btServerSocket.close();
            btSocket.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
        running = false;
        this.isConnected = false;
    }

    public boolean isConnected() {
        return this.isConnected;
    }
}
