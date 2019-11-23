package com.example.newlife;

import androidx.appcompat.app.AppCompatActivity;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
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
    TextView login, criar, blue;
    EditText nomeC, senhaC, emailC, senhaCN;
    Button logar, cadastrar;

    private static final int RETORNO_LIGA = 0;
    private static final int RETORNO_PESQUISA = 1;

    protected BluetoothAdapter bta;
    protected BluetoothDevice btDevice;
    private Animation slide_in_left, slide_in_right, slide_out_left, slide_out_right;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tela_login);
        flipper = findViewById(R.id.flipper);
        login = findViewById(R.id.txtLogin);
        criar = findViewById(R.id.txtCriar);
        blue = findViewById(R.id.txtBlue);
        logar = findViewById(R.id.btnLogar);
        cadastrar = findViewById(R.id.btnCadastrar);
        senhaCN = findViewById(R.id.txtSenhaCN);
        nomeC = findViewById(R.id.txtNomeC);
        senhaC = findViewById(R.id.txtSenhaC);
        emailC = findViewById(R.id.txtEmailC);

        bta = BluetoothAdapter.getDefaultAdapter();
        Button c = findViewById(R.id.conectar);
        Button b = findViewById(R.id.batimentos);
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
                if(flipper.getDisplayedChild() == 0) {
                    flipper.setInAnimation(slide_in_right);
                    flipper.setOutAnimation(slide_out_left);
                    flipper.showNext();
                }
                else
                {
                    flipper.setInAnimation(slide_in_left);
                    flipper.setOutAnimation(slide_out_right);
                    flipper.showPrevious();
                }
            }
        });

        blue.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(flipper.getDisplayedChild() == 2)
                    return;
                if(flipper.getDisplayedChild() == 0)
                {
                    flipper.setInAnimation(slide_in_right);
                    flipper.setOutAnimation(slide_out_left);
                    flipper.showPrevious();
                }
                else {
                    flipper.setInAnimation(slide_in_right);
                    flipper.setOutAnimation(slide_out_left);
                    flipper.showNext();
                }
            }
        });
        c.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent it = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
                startActivityForResult(it,RETORNO_LIGA);
            }
        });
        b.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent iBuscar = new Intent(TelaLogin.this,BuscarBluetooth.class);
                startActivityForResult(iBuscar,RETORNO_PESQUISA);
            }
        });
        logar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                EditText edtNome = findViewById(R.id.txtLNome);
                EditText edtSenha = findViewById(R.id.txtLSenha);

                if(edtNome.getText().toString().equals("") || edtSenha.getText().toString().equals(""))
                {
                    Toast.makeText(TelaLogin.this, "Preencha todos os campos!", Toast.LENGTH_SHORT).show();

                }
                else {

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
                            if (usu.size() == 0) {
                                Toast.makeText(TelaLogin.this, "Usuário não encontrado", Toast.LENGTH_SHORT).show();

                            } else {
                                EditText s = findViewById(R.id.txtLSenha);
                                if (usu.get(0).getSenha().equals(s.getText().toString())) {
                                    Bundle b = new Bundle();
                                    b.putSerializable("usuario", usu.get(0));
                                    Intent data = new Intent(TelaLogin.this, User.class);
                                    data.putExtras(b);
                                    startActivity(data);
                                } else {
                                    Toast.makeText(TelaLogin.this, "Senha incorreta", Toast.LENGTH_SHORT).show();
                                }
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
            }
        });
        cadastrar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (senhaC.getText().toString().equals("") || senhaCN.getText().toString().equals("") || nomeC.getText().toString().equals("") || emailC.getText().toString().equals("")) {

                    Toast.makeText(TelaLogin.this, "Preencha todos os campos!", Toast.LENGTH_SHORT).show();
                } else {
                    if (senhaC.getText().toString().equals(senhaCN.getText().toString())) {
                        Retrofit r = new Retrofit.Builder()
                                .baseUrl(JsonPlaceHolder.BASE_URL)
                                .addConverterFactory(GsonConverterFactory.create())
                                .build();
                        JsonPlaceHolder j = r.create(JsonPlaceHolder.class);
                        EditText e = findViewById(R.id.txtNomeC);
                        Call<List<Usuario>> c = j.getUsuario(e.getText().toString());
                        c.enqueue(new Callback<List<Usuario>>() {
                            @Override
                            public void onResponse(Call<List<Usuario>> call, Response<List<Usuario>> response) {
                                List<Usuario> usu = response.body();
                                if (usu.size() == 0) {
                                    final Intent data = new Intent(TelaLogin.this, QuizBase.class);
                                    final Usuario user = new Usuario();
                                    user.setNome(nomeC.getText().toString());
                                    user.setEmail(emailC.getText().toString());
                                    user.setSenha(senhaC.getText().toString());
                                    Bundle x = new Bundle();
                                    x.putSerializable("usuario", user);
                                    data.putExtras(x);
                                    startActivity(data);

                                } else {
                                    Toast.makeText(TelaLogin.this, "Usuário já existe!", Toast.LENGTH_SHORT).show();
                                }
                            }

                            @Override
                            public void onFailure(Call<List<Usuario>> call, Throwable t) {
                                EditText s = findViewById(R.id.txtLNome);
                                Log.d("potato", t.getMessage());
                                s.setText(t.getMessage());
                            }
                        });
                    } else {
                        Toast.makeText(TelaLogin.this, "Senhas não correspondem!", Toast.LENGTH_SHORT).show();
                    }


                }
            }
        });
    }

    @Override
    protected void onActivityResult(int RequestCode, int resultCode, Intent data)
    {
        super.onActivityResult(RequestCode,resultCode,data);

        switch (RequestCode) {
            case RETORNO_LIGA:
                if (bta.isEnabled()) {
                    Toast.makeText(this, "Esta ligado o BT", Toast.LENGTH_SHORT).show();
                }
                break;
            case RETORNO_PESQUISA:

                Bundle params = (data != null) ? data.getExtras() : null;
                if (params != null) {
                    btDevice = data.getParcelableExtra(BluetoothDevice.EXTRA_DEVICE);
                    Intent iConnect = new Intent(this, SendBluetooth.class);
                    iConnect.putExtra(BluetoothDevice.EXTRA_DEVICE,btDevice);
                    startActivity(iConnect);
                }

                break;
            default:
                break;
        }
    }
}
