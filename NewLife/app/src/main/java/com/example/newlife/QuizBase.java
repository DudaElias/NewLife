package com.example.newlife;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.media.Image;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
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

public class QuizBase extends AppCompatActivity {


    private Animation slide_in_left, slide_in_right, slide_out_left, slide_out_right;
    ImageButton btnV, btnA;

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
                flipper.setAdapter(new MeuAdapterViewFlipper(QuizBase.this, listaOficial, 7));


            }

            @Override
            public void onFailure(Call<List<Questao>> call, Throwable t) {

                Toast.makeText(getApplicationContext(), t.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });

        /*teste.add(new Questao(1, "Alternativa1", "Quanto come fora?", "Raramente,1x por semana, 2 ou 3 x por semana, Quase sempre"));
        teste.add(new Questao(2, "Alternativa1", "Atividade física?", "Raramente, 1 por semana, 2/3 por semana, +5 por semana"));
        teste.add(new Questao(3, "Alternativa1", "Possui diabetes","Sim, tipo 1,Sim, tipo 2, Não, mas sou pré,Não"));
        teste.add(new Questao(4, "Alternativa1", "Possui hipertensão?","Sim, altisssima,Sim, grave, Não, normal, Não, baixa"));
        teste.add(new Questao(5, "Alternativa1", "Problemas com estresse e ansieadade?", new String[]{"Sim, diariamente", "Sim, muitas vezes", "Sim, mas pouco", "Raramente"));
        teste.add(new Questao(6, "Alternativa1", "Quanto dorme por noite?","8h ou +, Entre 6 e 8h, Entre 4 e 5h, Menos que 4h"));
        teste.add(new Questao(7, "Alternativa1", "Quanto de água bebe por dia?","-1L, 1/2L, 3/5L, +5L"));

        flipper.setAdapter(new MeuAdapterViewFlipper(this, teste, 7));*/



        flipper.setAutoStart(false);
        btnV.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (flipper.getDisplayedChild() == 0)
                    return;
                /*flipper.setInAnimation(QuizBase.this, R.animator.slideinleft);
                flipper.setOutAnimation(QuizBase.this,R.animator.slideoutright);*/
                flipper.showPrevious();
            }
        });
        btnA.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (flipper.getDisplayedChild() == 6)
                    return;
                /*flipper.setInAnimation(QuizBase.this, R.animator.slideinright);
                flipper.setInAnimation(QuizBase.this, R.animator.slideinright);
                flipper.setOutAnimation(QuizBase.this,R.animator.slideoutleft);*/
                flipper.showNext();
            }
        });

    }

}

