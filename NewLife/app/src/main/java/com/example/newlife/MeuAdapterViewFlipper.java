package com.example.newlife;

import android.content.Context;
import android.content.Intent;
import android.sax.TextElementListener;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewFlipper;

import org.w3c.dom.Text;

import java.util.ArrayList;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class MeuAdapterViewFlipper  extends BaseAdapter implements View.OnClickListener, AdapterView.OnItemSelectedListener {
    private ArrayList<Questao> questoes;

    private int qtd;
   int position;
    private Context mContext;
    int[] respostasUsuario;
    Nivel n;
    Algoritmo alg;
    int check = 0;

    public MeuAdapterViewFlipper(Context context, ArrayList<Questao> q, int qtd) {
        this.mContext = context;
        this.questoes = q;
        this.qtd = qtd;
        respostasUsuario = new int[qtd];
        for(int i = 0; i <qtd; i++)
            respostasUsuario[i] = -1;
    }

    @Override
    public int getCount() {
        return questoes.size();
    }

    @Override
    public Object getItem(int position) {
        return questoes.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {

        Questao version = questoes.get(position);
        this.position = position;
        if (convertView == null) {
            if(version.tipo.equals("Alternativa1")) {
                convertView = LayoutInflater.from(mContext).inflate(R.layout.quiz_alternativa, parent, false);
                TextView qual = convertView.findViewById(R.id.tvQual);
                qual.setText(version.codQuestao+""+"/"+ qtd+"");

                String[] respostas1 = version.respostas.split(",");
                Button tv1 = convertView.findViewById(R.id.btn1);
                tv1.setText(respostas1[0]);
                Button tv2 = convertView.findViewById(R.id.btn2);
                tv2.setText(respostas1[1]);
                Button tv3 = convertView.findViewById(R.id.btn3);
                tv3.setText(respostas1[2]);
                Button tv4 = convertView.findViewById(R.id.btn4);
                tv4.setText(respostas1[3]);
                TextView tvPergunta = convertView.findViewById(R.id.tvPergunta);
                tvPergunta.setText(version.pergunta);
                /*TextView tvQuantas = convertView.findViewById(R.id.tvQuantas);
                tvQuantas.setText("/"+qtd+"");*/

                tv1.setOnClickListener(this);
                tv2.setOnClickListener(this);
                tv3.setOnClickListener(this);
                tv4.setOnClickListener(this);

            }
            else if(version.tipo.equals("Dissertativa"))
            {
                convertView = LayoutInflater.from(mContext).inflate(R.layout.quiz_insercao, parent, false);
                TextView qual = convertView.findViewById(R.id.tvQual);
                qual.setText(version.codQuestao+""+"/"+ qtd+"");
                final EditText resposta = convertView.findViewById(R.id.edResposta);
                final View  aux = convertView;
                TextView tvPergunta = convertView.findViewById(R.id.tvPergunta);
                tvPergunta.setText(version.pergunta);
                /*TextView tvQuantas = convertView.findViewById(R.id.tvQuantas);
                tvQuantas.setText("/"+qtd+"");*/
                resposta.addTextChangedListener(new TextWatcher() {
                    @Override
                    public void beforeTextChanged(CharSequence s, int start, int count, int after) {

                    }

                    @Override
                    public void onTextChanged(CharSequence s, int start, int before, int count) {

                    }

                    @Override
                    public void afterTextChanged(Editable s)
                    {
                        if(s.toString().equals(""))
                            return;
                        if(campoNumerico(s.toString()))
                            respostasUsuario[position] = Integer.parseInt(s.toString());
                        else {
                            Toast.makeText(aux.getContext(), "Apenas caracteres numéricos!", Toast.LENGTH_SHORT).show();
                        }
                    }
                });

            }
            else if(version.tipo.equals("Alternativa2"))
            {
                convertView = LayoutInflater.from(mContext).inflate(R.layout.quiz_alternativa_plus, parent, false);
                TextView qual = convertView.findViewById(R.id.tvQual);
                qual.setText(version.codQuestao+""+"/"+ qtd+"");

                String[] respostas1 = version.respostas.split(",");
                Button tv1 = convertView.findViewById(R.id.btn1);
                tv1.setText(respostas1[0]);
                Button tv2 = convertView.findViewById(R.id.btn2);
                tv2.setText(respostas1[1]);
                Button tv3 = convertView.findViewById(R.id.btn3);
                tv3.setText(respostas1[2]);
                Button tv4 = convertView.findViewById(R.id.btn4);
                tv4.setText(respostas1[3]);
                Button tv5 = convertView.findViewById(R.id.btn5);
                tv5.setText(respostas1[4]);
                Button tv6 = convertView.findViewById(R.id.btn6);
                tv6.setText(respostas1[5]);
                TextView tvPergunta = convertView.findViewById(R.id.tvPergunta);
                tvPergunta.setText(version.pergunta);
                /*TextView tvQuantas = convertView.findViewById(R.id.tvQuantas);
                tvQuantas.setText("/"+qtd+"");*/

                tv1.setOnClickListener(this);
                tv2.setOnClickListener(this);
                tv3.setOnClickListener(this);
                tv4.setOnClickListener(this);
                tv5.setOnClickListener(this);
                tv6.setOnClickListener(this);

            }
            else
            {
                convertView = LayoutInflater.from(mContext).inflate(R.layout.quiz_escolha, parent, false);
                TextView qual = convertView.findViewById(R.id.tvQual);
                qual.setText(version.codQuestao+""+"/"+ qtd+"");
                TextView tvPergunta = convertView.findViewById(R.id.tvPergunta);
                tvPergunta.setText(version.pergunta);
                /*TextView tvQuantas = convertView.findViewById(R.id.tvQuantas);
                tvQuantas.setText("/"+qtd+"");*/
                Spinner resposta = (Spinner) convertView.findViewById(R.id.spEscolha);

                List<String> list = new ArrayList<String>();
                for(int i = 0; i < version.respostas.split(",").length;i++)
                    list.add(version.respostas.split(",")[i]);
                ArrayAdapter<String> dataAdapter = new ArrayAdapter<String>(convertView.getContext(), R.layout.adaptador_spinner, list);
                dataAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                resposta.setAdapter(dataAdapter);
                resposta.setOnItemSelectedListener(this);
        }
        }
        return convertView;
    }

    public View getView(int position, View convertView, ViewGroup parent, boolean p) {
        convertView = LayoutInflater.from(mContext).inflate(R.layout.quiz_insercao, parent, false);
        return convertView;
    }

    @Override
    public void onClick(View v) {

            TextView clicado = (TextView) v;

            if (!questoes.get(position).tipo.equals("Dissertativa")) {
                String[] respostas = questoes.get(position).respostas.split(",");

                for (int i = 0; i < respostas.length; i++) {
                    if (respostas[i].equals(clicado.getText().toString())) {
                        if (questoes.get(position).tipo.equals("Alternativa2")) {
                            respostasUsuario[position] = 0;
                            respostasUsuario[position] += i;
                        } else if (questoes.get(position).tipo.equals("Alternativa1")) {
                            respostasUsuario[position] = i;
                        }
                    }
                }
            }
        }
    boolean campoNumerico(String campo){ return campo.matches("[0-9]{"+campo.length()+"}"); }


    @Override
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {

        respostasUsuario[position] = i;
        n = new Nivel(respostasUsuario[1], respostasUsuario[0]);
        //int diabetes, int hipotensao, int hipertensao, int ansiedadeStress, int insonia, int idade, int glicemia, double altura, double peso, boolean mulher
        int hipo, hiper;
        boolean m;
        if (respostasUsuario[3] == 0 || respostasUsuario[3] == 1) {
            hipo = 0;
            hiper = respostasUsuario[3];
        } else if (respostasUsuario[3] == 2) {
            hipo = 1;
            hiper = 0;
        } else
            hipo = hiper = 0;
        if (respostasUsuario[position] == 0)
            m = true;
        else
            m = false;
        alg = new Algoritmo(respostasUsuario[2], hipo, hiper, respostasUsuario[4], respostasUsuario[5], respostasUsuario[9], respostasUsuario[10], respostasUsuario[7], respostasUsuario[8], m);
        n.nivel = n.DeterminarNivel();
    }


    protected void PuxarBanco()
    {
        Retrofit r = new Retrofit.Builder()
                .baseUrl(JsonPlaceHolder.BASE_URL)
                .addConverterFactory(GsonConverterFactory.create())
                .build();


        JsonPlaceHolder j = r.create(JsonPlaceHolder.class);

        Call<List<Alimento>> c = j.getAlimentos();
        Call<List<Receita>> re = j.getReceitas();

        final ArrayList<Questao> listaOficial = new ArrayList<Questao>();

        c.enqueue(new Callback<List<Alimento>>() {
            @Override
            public void onResponse(Call<List<Alimento>> call, Response<List<Alimento>> response) {


                List<Alimento> lista = response.body();


                for (Alimento q: lista) {
                    Log.d("alimento", q.nome);
                }


            }

            @Override
            public void onFailure(Call<List<Alimento>> call, Throwable t) {

            }
        });
        re.enqueue(new Callback<List<Receita>>() {
            @Override
            public void onResponse(Call<List<Receita>> call, Response<List<Receita>> response) {


                List<Receita> lista = response.body();


                for (Receita q: lista) {
                    Log.d("receita: ", q.nomeReceita);
                }


            }

            @Override
            public void onFailure(Call<List<Receita>> call, Throwable t) {

            }
    });
    }


    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {

    }
}