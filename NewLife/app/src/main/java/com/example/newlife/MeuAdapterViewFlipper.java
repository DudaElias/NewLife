package com.example.newlife;

import android.content.Context;
import android.sax.TextElementListener;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Adapter;
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

public class MeuAdapterViewFlipper  extends BaseAdapter implements View.OnClickListener {
    private ArrayList<Questao> questoes;

    private int qtd;
    private int position;
    private Context mContext;
    int[] respostasUsuario;

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

        if(!questoes.get(position).tipo.equals("Dissertativa")) {
            String[] respostas = questoes.get(position).respostas.split(",");

            for (int i = 0; i < respostas.length; i++) {
                if (respostas[i].equals(clicado.getText().toString())) {
                    if (questoes.get(position).tipo.equals("Alternativa2")) {
                        respostasUsuario[position] += i;
                    } else if (questoes.get(position).tipo.equals("Alternativa1")) {
                        respostasUsuario[position] = i;
                    }
                }
            }
        }
       /* ViewFlipper ve = ((LinearLayout)v.getParent().getParent()).findViewById(R.id.adapterViewFlipper);
        ve.showNext();*/
    }
    boolean campoNumerico(String campo){ return campo.matches("[0-9]{"+campo.length()+"}"); }


}