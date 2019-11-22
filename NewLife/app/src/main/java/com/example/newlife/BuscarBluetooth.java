package com.example.newlife;

import androidx.appcompat.app.AppCompatActivity;

import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class BuscarBluetooth extends MainActivity implements AdapterView.OnItemClickListener
        {
protected List<BluetoothDevice> lista;
private ListView listView;
private static final int RETORNO_PESQUISA = 1;

@Override
protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_buscar_bluetooth);

        listView = (ListView)findViewById(R.id.list);
        }

@Override
protected void onResume()
        {
        super.onResume();
        if (bta != null)
        {
        Set<BluetoothDevice> pareados = bta.getBondedDevices();
        lista = new ArrayList<BluetoothDevice>(pareados);
        updateLista();
        }
        }

protected void updateLista()
        {
        List<String> nomes = new ArrayList<String>();
        for (BluetoothDevice device : lista)
        {
        boolean pareado = device.getBondState() == BluetoothDevice.BOND_BONDED;
        nomes.add(device.getName() + " - " +
        device.getAddress() + (pareado?"Pareado":""));
        }
        // cria o layout da lista
        int layout = android.R.layout.simple_list_item_1;
        ArrayAdapter<String> adapter = new ArrayAdapter<String>
                            (this, layout, nomes);
                                    listView.setAdapter(adapter);
                                    listView.setOnItemClickListener(this);

                                    }

@Override
public void onItemClick(AdapterView<?> parent, View view, int position, long id) {

        btDevice = lista.get(position);
        Intent it = new Intent();
        it.putExtra(BluetoothDevice.EXTRA_DEVICE,btDevice);
        setResult(RETORNO_PESQUISA, it);
        finish();
        }}

