package com.example.newlife;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.os.Bundle;
import android.view.MenuItem;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

import java.util.ArrayList;

public class DicaAtual extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dica_autal);
        Bundle b = getIntent().getExtras();
        Dica dica = (Dica)b.getSerializable("dica");
        TextView tvNome = findViewById(R.id.nome);
        TextView lstIng = findViewById(R.id.des);

        tvNome.setText(dica.getNomeDica());
        lstIng.setText(dica.getDescricao());
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
