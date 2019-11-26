package com.example.newlife;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
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
import java.util.Calendar;
import java.util.List;
import java.util.Random;

public class ListaDicasAdapter extends BaseAdapter{

    private int qtd;
    private int p;
    private int i;
    private Context mContext;
    private ArrayList<Dica> d;

   /* private int horas[] = {15,9,20,11,21};
    private int minutos[] = {0,30,0,0,30};
    private int segundos[] = {0,0,0,0,0};*/
   private int horas[] = {0,0,20,11,21};
    private int minutos[] = {11,12,0,0,30};
    private int segundos[] = {0,0,0,0,0};



    public ListaDicasAdapter(Context context, ArrayList<Dica> q, int qtd) {
        this.mContext = context;
        this.d = q;
        p = 0;
        this.qtd = qtd;
        i = 0;
    }

    @Override
    public int getCount() {
        return d.size();
    }

    @Override
    public Object getItem(int position) {
        return d.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(final int position, View convertView, ViewGroup parent) {

        final Dica version = d.get(position);
        this.p = position;
        if (convertView == null) {

            convertView = LayoutInflater.from(mContext).inflate(R.layout.dicas_notificacoes, parent, false);

        }

        if(version.getRestricoes().equals("1"))
        {
            Calendar calendar = Calendar.getInstance();

            calendar.set(Calendar.HOUR_OF_DAY, horas[i]);
            calendar.set(Calendar.MINUTE, minutos[i]);
            calendar.set(Calendar.SECOND, segundos[i]);

            AlarmManager alarm = (AlarmManager) mContext.getSystemService(Context.ALARM_SERVICE);
            Bundle bundle = new Bundle();
            bundle.putSerializable("dica", version);
            Intent inte = new Intent(mContext, AlertReceiver.class);
            inte.putExtra("nome", version.getNomeDica());
            inte.putExtra("descricao", version.getDescricao());
            PendingIntent pen = PendingIntent.getBroadcast(mContext, 1, inte, 0);
            alarm.setExact(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), pen);
            i++;
        }
        TextView titulo = convertView.findViewById(R.id.titulo);
        View imagem = convertView.findViewById(R.id.imagem);
        titulo.setText(version.nomeDica);
        int id = mContext.getResources().getIdentifier("sol", "drawable", mContext.getPackageName());
        Drawable drawable = mContext.getResources().getDrawable(id, null);
        imagem.setBackground(drawable);
        return convertView;
    }
}