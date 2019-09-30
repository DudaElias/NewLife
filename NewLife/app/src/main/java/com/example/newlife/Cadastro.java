package com.example.newlife;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;

public class Cadastro extends AppCompatActivity {


    EditText edNome, edSenha, edSenhaNova, edEmail;
    ImageView btn;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cadastro);
        edNome = findViewById(R.id.edNome);
        edEmail = findViewById(R.id.edEmail);
        edSenha = findViewById(R.id.edSenha);
        edSenhaNova = findViewById(R.id.edSenhaNova);
        btn = findViewById(R.id.btnProximo);

        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent quiz = new Intent(Cadastro.this, Quiz.class);
                startActivity(quiz);
            }
        });

    }
}
