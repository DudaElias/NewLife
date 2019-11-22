package com.example.newlife;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.Manifest;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.media.Image;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterViewFlipper;
import android.widget.ArrayAdapter;
import android.widget.ImageButton;
import android.widget.Toast;
import android.widget.ViewFlipper;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Converter;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class QuizBase extends AppCompatActivity{


    private Animation slide_in_left, slide_in_right, slide_out_left, slide_out_right;
    ImageButton btnV, btnA;
    Usuario usu;

    ArrayList<Questao> teste = new ArrayList<>();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_quiz_base);
        final AdapterViewFlipper flipper = findViewById(R.id.adapterViewFlipper); // get the reference of AdapterViewFlipper
        btnV = findViewById(R.id.btnVoltar);
        btnA = findViewById(R.id.btnAvancar);
        slide_in_left = AnimationUtils.loadAnimation(this, R.anim.slide_in_left);
        slide_in_right = AnimationUtils.loadAnimation(this, R.anim.slide_in_right);
        slide_out_left = AnimationUtils.loadAnimation(this, R.anim.slide_out_left);
        slide_out_right = AnimationUtils.loadAnimation(this, R.anim.slide_out_right);


        Bundle b = getIntent().getExtras();
        usu = (Usuario)b.getSerializable("aluno");
        Retrofit r = new Retrofit.Builder()
                .baseUrl(JsonPlaceHolder.BASE_URL)
                .addConverterFactory(GsonConverterFactory.create())
                .build();


        JsonPlaceHolder j = r.create(JsonPlaceHolder.class);

        Call<List<Questao>> c = j.getDados();

        final ArrayList<Questao> listaOficial = new ArrayList<Questao>();

        c.enqueue(new Callback<List<Questao>>() {
            @Override
            public void onResponse(Call<List<Questao>> call, Response<List<Questao>> response) {


                List<Questao> lista = response.body();


                for (Questao q: lista) {
                    Questao qe = new Questao();
                    qe.setCodQuestao(q.getCodQuestao());
                    qe.setCodQuiz(q.getCodQuiz());
                    qe.setPergunta(q.getPergunta());
                    qe.setRespostas(q.getRespostas());
                    qe.setTipo(q.getTipo());
                    listaOficial.add(qe);
                }
                flipper.setAdapter(new MeuAdapterViewFlipper(QuizBase.this, listaOficial, 13));


            }

            @Override
            public void onFailure(Call<List<Questao>> call, Throwable t) {

                Toast.makeText(getApplicationContext(), t.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });


        flipper.setAutoStart(false);

        btnV.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (flipper.getDisplayedChild() == 0)
                    return;
               /* flipper.setInAnimation(QuizBase.this, R.animator.slideinleft);
                flipper.setOutAnimation(QuizBase.this,R.animator.slideoutright);*/
                flipper.showPrevious();
            }
        });
        btnA.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (flipper.getDisplayedChild() == 12) {

                    Algoritmo a = ((MeuAdapterViewFlipper)flipper.getAdapter()).alg;
                    Nivel n = ((MeuAdapterViewFlipper)flipper.getAdapter()).n;
                    int[] respostas = ((MeuAdapterViewFlipper)flipper.getAdapter()).respostasUsuario;
                    Retrofit r = new Retrofit.Builder()
                            .baseUrl(JsonPlaceHolder.BASE_URL)
                            .addConverterFactory(GsonConverterFactory.create())
                            .build();
                    JsonPlaceHolder j = r.create(JsonPlaceHolder.class);
                    usu.setAltura(respostas[7]);
                    usu.setIdade(respostas[9]);
                    usu.setDieta("");
                    usu.setEvolucao(0);
                    usu.setNivel(n.nivel);
                    usu.setPeso(respostas[8]);
                    if(a.m)
                        usu.setGenero('F');
                    else
                        usu.setGenero('M');
                    usu.setRestricoes(a.carboidratos+","+a.gorduras+","+a.proteinas+","+a.fibras+","+a.complexoB+","+a.vitC+","+a.vitD+","+a.sodio+","+a.antioxidante+","+a.magnesio+","+a.zinco+","+a.ferro+","+a.potassio+","+a.diabetes+","+a.ansiedadeStress+","+a.g);
                    Call<Usuario> call = j.criarUsuario(usu);

                    call.enqueue(new Callback<Usuario>() {
                        @Override
                        public void onResponse(Call<Usuario> call, Response<Usuario> response) {

                            Bundle b = new Bundle();
                            b.putSerializable("usuario",usu);
                            Intent data = new Intent(QuizBase.this, User.class);
                            data.putExtras(b);
                            startActivity(data);

                        }

                        @Override
                        public void onFailure(Call<Usuario> call, Throwable t) {

                        }
                    });
                    return;
                }
                /*if(flipper.getDisplayedChild() == 12)
                {
                    while(true) {
                    it = new IntentFilter(); // Instancia o filtro declarado logo após o onCreate().
                    it.addAction(BluetoothDevice.ACTION_FOUND);
                    it.addCategory(Intent.CATEGORY_DEFAULT);
                    registerReceiver(mReceiver, it); // Registra um Receiver para o App.
                    break;
                }


                BA = BluetoothAdapter.getDefaultAdapter();
                    BtEnable();}
*/
                /*flipper.setInAnimation(QuizBase.this, R.animator.slideinright);
                flipper.setInAnimation(QuizBase.this, R.animator.slideinright);
                flipper.setOutAnimation(QuizBase.this,R.animator.slideoutleft);*/
                flipper.showNext();
            }

        });





    }

}

