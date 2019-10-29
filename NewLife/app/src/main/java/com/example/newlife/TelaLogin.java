package com.example.newlife;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.ViewFlipper;

public class TelaLogin extends AppCompatActivity {

    ViewFlipper flipper;
    TextView login, criar;
    EditText nomeC, senhaC, emailC;
    Button logar, cadastrar;
    private Animation slide_in_left, slide_in_right, slide_out_left, slide_out_right;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tela_login);
        flipper = findViewById(R.id.flipper);
        login = findViewById(R.id.txtLogin);
        criar = findViewById(R.id.txtCriar);
        logar = findViewById(R.id.btnLogar);
        cadastrar = findViewById(R.id.btnCadastrar);
        nomeC = findViewById(R.id.txtNomeC);
        senhaC = findViewById(R.id.txtSenhaC);
        emailC = findViewById(R.id.txtEmailC);
        slide_in_left = AnimationUtils.loadAnimation(this, R.anim.slide_in_left);
        slide_in_right = AnimationUtils.loadAnimation(this, R.anim.slide_in_right);
        slide_out_left = AnimationUtils.loadAnimation(this, R.anim.slide_out_left);
        slide_out_right = AnimationUtils.loadAnimation(this, R.anim.slide_out_right);
        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(flipper.getDisplayedChild() == 0)
                    return;
                flipper.setInAnimation(slide_in_left);
                flipper.setOutAnimation(slide_out_right);
                flipper.showPrevious();
            }
        });

        criar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(flipper.getDisplayedChild() == 1)
                    return;
                flipper.setInAnimation(slide_in_right);
                flipper.setOutAnimation(slide_out_left);
                flipper.showNext();
            }
        });
        logar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                /*Intent data = new Intent(TelaLogin.this, QuizBase.class);
                startActivity(data);*/
            }
        });
        cadastrar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent data = new Intent(TelaLogin.this, QuizBase.class);
                Bundle x = new Bundle();
                x.putString("nome", nomeC.getText().toString());
                x.putString("senha",senhaC.getText().toString());
                x.putString("email",emailC.getText().toString());
                data.putExtras(x);
                startActivity(data);
            }
        });
    }
}
