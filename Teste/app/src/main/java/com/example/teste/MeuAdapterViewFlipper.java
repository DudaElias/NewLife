package com.example.teste;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

public class MeuAdapterViewFlipper  extends BaseAdapter {
    private List<Questao> questoes;
    private int qtd;
    private Context context;

    public MeuAdapterViewFlipper(Context context, List<Questao> q, int qtd) {
        this.context = context;
        this.questoes = q;
        this.qtd = qtd;
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

        if (convertView == null) {
                convertView = LayoutInflater.from(context).inflate(R.layout.quiz_alternativa, null);
        }
            if (version.tipo.equals("Alternativa1")) {
                TextView qual = convertView.findViewById(R.id.tvQual);
                qual.setText(version.codQuestao + "");
                Button tv1 = convertView.findViewById(R.id.btn1);
                String[] respostas1  = version.getRespostas().split(",");
                tv1.setText(respostas1[0]);
                Button tv2 = convertView.findViewById(R.id.btn2);
                tv2.setText(respostas1[1]);
                Button tv3 = convertView.findViewById(R.id.btn3);
                tv3.setText(respostas1[2]);
                Button tv4 = convertView.findViewById(R.id.btn4);
                tv4.setText(respostas1[3]);
                TextView tvPergunta = convertView.findViewById(R.id.tvPergunta);
                tvPergunta.setText(version.pergunta.toString());
                TextView tvQuantas = convertView.findViewById(R.id.tvQuantas);
                tvQuantas.setText("/" + qtd + "");
            }
        return convertView;
    }
}
