package com.example.newlife;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import org.w3c.dom.Text;

import java.util.ArrayList;
import java.util.List;

public class ListaReceitasAdapter extends BaseAdapter {

    private int qtd;
    private int position;
    private Context mContext;
    private ArrayList<Receita> receitas;


    public ListaReceitasAdapter(Context context, ArrayList<Receita> q, int qtd) {
        this.mContext = context;
        this.receitas = q;
        this.qtd = qtd;
    }

    @Override
    public int getCount() {
        return receitas.size();
    }

    @Override
    public Object getItem(int position) {
        return receitas.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {

        Receita version = receitas.get(position);
        this.position = position;
        if (convertView == null) {

            convertView = LayoutInflater.from(mContext).inflate(R.layout.lista_receita_adapter, parent, false);
            TextView tvNome = convertView.findViewById(R.id.tvReceita);
            TextView tvPeriodo = convertView.findViewById(R.id.tvPeriodo);

            tvNome.setText(version.nomeReceita);
            tvPeriodo.setText(version.periodo);
        }
        return convertView;
    }
}