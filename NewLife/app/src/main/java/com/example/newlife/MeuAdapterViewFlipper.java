package com.example.newlife;

import android.content.Context;
import android.sax.TextElementListener;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import org.w3c.dom.Text;

import java.util.ArrayList;

public class MeuAdapterViewFlipper  extends BaseAdapter implements View.OnClickListener {
    private ArrayList<Questao> questoes;
    private int qtd;
    private int position;
    private Context mContext;
    int[] respostasUsuario ;

    public MeuAdapterViewFlipper(Context context, ArrayList<Questao> q, int qtd) {
        this.mContext = context;
        this.questoes = q;
        this.qtd = qtd;
        respostasUsuario = new int[qtd];
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
    public View getView(int position, View convertView, ViewGroup parent) {

        Questao version = questoes.get(position);
        this.position = position;
        if (convertView == null) {
            if(version.tipo.equals("Alternativa1")) {
                convertView = LayoutInflater.from(mContext).inflate(R.layout.quiz_alternativa, parent, false);
                TextView qual = convertView.findViewById(R.id.tvQual);
                qual.setText(version.codQuestao+"");

                String[] respostas1 = version.respostas.split(",");
                TextView tv1 = convertView.findViewById(R.id.btn1);
                tv1.setText(respostas1[0]);
                TextView tv2 = convertView.findViewById(R.id.btn2);
                tv2.setText(respostas1[1]);
                TextView tv3 = convertView.findViewById(R.id.btn3);
                tv3.setText(respostas1[2]);
                TextView tv4 = convertView.findViewById(R.id.btn4);
                tv4.setText(respostas1[3]);
                TextView tvPergunta = convertView.findViewById(R.id.tvPergunta);
                tvPergunta.setText(version.pergunta);
                TextView tvQuantas = convertView.findViewById(R.id.tvQuantas);
                tvQuantas.setText("/"+qtd+"");

                tv1.setOnClickListener(this);
                tv2.setOnClickListener(this);
                tv3.setOnClickListener(this);
                tv4.setOnClickListener(this);

            }
            else if(version.tipo.equals("Dissertativa"))
            {
                convertView = LayoutInflater.from(mContext).inflate(R.layout.quiz_insercao, parent, false);
                TextView qual = convertView.findViewById(R.id.tvQual);
                qual.setText(version.codQuestao+"");
                EditText resposta = convertView.findViewById(R.id.etResposta);
                TextView tvPergunta = convertView.findViewById(R.id.tvPergunta);
                tvPergunta.setText(version.pergunta);
                TextView tvQuantas = convertView.findViewById(R.id.tvQuantas);
                tvQuantas.setText("/"+qtd+"");
            }
            else
            {
                convertView = LayoutInflater.from(mContext).inflate(R.layout.quiz_alternativa_plus, parent, false);
                TextView qual = convertView.findViewById(R.id.tvQual);
                qual.setText(version.codQuestao+"");

                String[] respostas1 = version.respostas.split(",");
                TextView tv1 = convertView.findViewById(R.id.btn1);
                tv1.setText(respostas1[0]);
                TextView tv2 = convertView.findViewById(R.id.btn2);
                tv2.setText(respostas1[1]);
                TextView tv3 = convertView.findViewById(R.id.btn3);
                tv3.setText(respostas1[2]);
                TextView tv4 = convertView.findViewById(R.id.btn4);
                tv4.setText(respostas1[3]);
                TextView tv5 = convertView.findViewById(R.id.btn5);
                tv5.setText(respostas1[4]);
                TextView tv6 = convertView.findViewById(R.id.btn6);
                tv6.setText(respostas1[5]);
                TextView tvPergunta = convertView.findViewById(R.id.tvPergunta);
                tvPergunta.setText(version.pergunta);
                TextView tvQuantas = convertView.findViewById(R.id.tvQuantas);
                tvQuantas.setText("/"+qtd+"");

                tv1.setOnClickListener(this);
                tv2.setOnClickListener(this);
                tv3.setOnClickListener(this);
                tv4.setOnClickListener(this);
                tv5.setOnClickListener(this);
                tv6.setOnClickListener(this);
            }
        }
        return convertView;
    }


    @Override
    public void onClick(View v) {

        String[] respostas = questoes.get(position).respostas.split(",");
        TextView clicado = (TextView) v;
        for(int i=0;i<respostas.length;i++)
            if(respostas[i].equals(clicado.getText().toString())) {
                if (questoes.get(position).tipo.equals("Alternativa2")) {
                    respostasUsuario[position] += i;
                } else if(questoes.get(position).tipo.equals("Alternativa1")){
                    respostasUsuario[position] = i;
                }
            }
        if(questoes.get(position).tipo.equals("Dissertativa")) {
            respostasUsuario[position] = Integer.parseInt(clicado.getText().toString());

        }

        if(position == qtd-1) {
            for (int i = 0; i < qtd; i++) {
                Log.d("n sei: ", respostasUsuario[i] + "");
            }
        }



    }
}