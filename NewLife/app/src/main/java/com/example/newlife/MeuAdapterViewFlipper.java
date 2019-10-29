package com.example.newlife;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.ArrayList;

public class MeuAdapterViewFlipper  extends BaseAdapter {
    private ArrayList<Questao> questoes;
    private int qtd;
    private Context mContext;

    public MeuAdapterViewFlipper(Context context, ArrayList<Questao> q, int qtd) {
        this.mContext = context;
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
            }
        }
        return convertView;
    }
}