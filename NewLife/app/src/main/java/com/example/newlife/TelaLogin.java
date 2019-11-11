package com.example.newlife;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewFlipper;

import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

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

                Retrofit r = new Retrofit.Builder()
                        .baseUrl(JsonPlaceHolder.BASE_URL)
                        .addConverterFactory(GsonConverterFactory.create())
                        .build();
                JsonPlaceHolder j = r.create(JsonPlaceHolder.class);
                EditText e = findViewById(R.id.txtLNome);
                Call<List<Usuario>> c = j.getUsuario(e.getText().toString());
                c.enqueue(new Callback<List<Usuario>>() {
                    @Override
                    public void onResponse(Call<List<Usuario>> call, Response<List<Usuario>> response) {
                        List<Usuario> usu = response.body();
                        EditText s = findViewById(R.id.txtLSenha);
                        if(usu.get(0).getSenha().equals(s.getText().toString()));
                        {
                            Intent data = new Intent(TelaLogin.this, QuizBase.class);
                            startActivity(data);
                        }
                    }

                    @Override
                    public void onFailure(Call<List<Usuario>> call, Throwable t) {
                        EditText s = findViewById(R.id.txtLNome);
                        Log.d("potato", t.getMessage());
                        s.setText(t.getMessage());
                    }
                });
            }
        });
        cadastrar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent data = new Intent(TelaLogin.this, QuizBase.class);
                Retrofit r = new Retrofit.Builder()
                        .baseUrl(JsonPlaceHolder.BASE_URL)
                        .addConverterFactory(GsonConverterFactory.create())
                        .build();
                JsonPlaceHolder j = r.create(JsonPlaceHolder.class);
                Usuario usu = new Usuario();
                //Bundle x = new Bundle();
               // x.putString("nome", nomeC.getText().toString());
                //x.putString("senha",senhaC.getText().toString());
                //x.putString("email",emailC.getText().toString());
                usu.setNome(nomeC.getText().toString());
                usu.setEmail(emailC.getText().toString());
                usu.setSenha(senhaC.getText().toString());
                usu.setAltura(0);
                usu.setDieta("");
                usu.setEvolucao(0);
                usu.setNivel(0);
                usu.setPeso(0);
                usu.setRestricoes("");
                Call<Usuario> call = j.criarUsuario(usu);

                call.enqueue(new Callback<Usuario>() {
                    @Override
                    public void onResponse(Call<Usuario> call, Response<Usuario> response) {
                        Log.d("batata", "foi");
                    }

                    @Override
                    public void onFailure(Call<Usuario> call, Throwable t) {

                    }
                });
                //data.putExtras(x);
                startActivity(data);
            }
        });
    }
}
