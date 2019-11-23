package com.example.newlife;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.os.Bundle;
import android.view.MenuItem;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

import java.util.ArrayList;

public class ReceitaAtual extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_receita_atual);

        Bundle b = getIntent().getExtras();
        Receita receita = (Receita)b.getSerializable("receita");
        TextView tvNome = findViewById(R.id.nome);
        ListView lstIng = findViewById(R.id.ingredientes);
        ListView lstModo = findViewById(R.id.modo);

        tvNome.setText(receita.getNomeReceita());


        ArrayList<String> dados  = new ArrayList<String>();
        ArrayList<String> dados2 = new ArrayList<String>();
        String[] dadosQtd = receita.medidas.split(",");
        String [] dadosIng = receita.alimentos.split(",");
        String [] modo = receita.modoPreparo.split("/");
        for(int i = 0; i < dadosQtd.length; i++)
        {
            dados.add(dadosQtd[i] + " " + dadosIng[i]);
        }
        for(int i = 0; i < modo.length; i++)

            dados2.add(modo[i]);
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(ReceitaAtual.this, android.R.layout.simple_list_item_1, dados);
        lstIng.setAdapter(adapter);
        ArrayAdapter<String> adapter2 = new ArrayAdapter<String>(ReceitaAtual.this, android.R.layout.simple_list_item_1, dados2);
        lstModo.setAdapter(adapter2);

        Toolbar t = findViewById(R.id.my_toolbar);
        setSupportActionBar(t);

        getSupportActionBar().setDisplayShowHomeEnabled(true);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);


    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {

        if(item.getItemId() == android.R.id.home)
        {
            finish();
        }

        return super.onOptionsItemSelected(item);
    }
}
