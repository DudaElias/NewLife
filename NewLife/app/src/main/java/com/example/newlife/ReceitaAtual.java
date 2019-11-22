package com.example.newlife;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

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


        String[] dados  = new String[500];
        String[] dadosQtd = receita.medidas.split(",");
        String [] dadosIng = receita.alimentos.split(",");
        for(int i = 0; i < dadosQtd.length; i++)
        {
            dados[i] = dadosQtd[i] + " " + dadosIng[i];
        }
        ArrayAdapter<String> adapter = new ArrayAdapter<String>(ReceitaAtual.this, android.R.layout.simple_list_item_1, dados);
        lstIng.setAdapter(adapter);

        dados = receita.modoPreparo.split(".");
        ArrayAdapter<String> adapter2 = new ArrayAdapter<String>(ReceitaAtual.this, android.R.layout.simple_list_item_1, dados);
        lstModo.setAdapter(adapter2);
    }
}
