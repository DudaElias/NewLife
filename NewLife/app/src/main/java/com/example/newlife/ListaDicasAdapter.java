package com.example.newlife;

import android.content.Context;
import android.graphics.drawable.Drawable;
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

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class ListaDicasAdapter extends BaseAdapter {

    private int qtd;
    private int position;
    private Context mContext;
    private ArrayList<Dica> receitas;


    public ListaDicasAdapter(Context context, ArrayList<Dica> q, int qtd) {
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

        Dica version = receitas.get(position);
        this.position = position;
        if (convertView == null) {

            convertView = LayoutInflater.from(mContext).inflate(R.layout.dicas_notificacoes, parent, false);
            TextView titulo = convertView.findViewById(R.id.titulo);
            View imagem = convertView.findViewById(R.id.imagem);
            titulo.setText(version.nomeDica);
            int id = mContext.getResources().getIdentifier("sol", "drawable", mContext.getPackageName());
            Drawable drawable = mContext.getResources().getDrawable(id, null);
            imagem.setBackground(drawable);
        }
        return convertView;
    }
}