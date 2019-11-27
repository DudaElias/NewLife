package com.example.newlife;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class User extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_user_page);
        Toolbar myToolbar = (Toolbar) findViewById(R.id.my_toolbar);
        final Bundle b = getIntent().getExtras();
        final Usuario usu = (Usuario)b.getSerializable("usuario");
        TextView tvNivel = findViewById(R.id.nivel);

        TextView tvNome = findViewById(R.id.nome);
        TextView tvGenero = findViewById(R.id.genero);
        TextView tvIdade = findViewById(R.id.idade);
        TextView tvImc = findViewById(R.id.IMC);
        TextView tvGlicemia = findViewById(R.id.glicemia);

        tvNome.setText(usu.getNome());
        if(usu.getGenero() == 'F')
            tvGenero.setText("Mulher");
        else
            tvGenero.setText("Homem");
        tvIdade.setText("Idade: " + usu.getIdade()+ "");
        String[] res = usu.getRestricoes().split(",");
        tvGlicemia.setText(res[15]);
        double imc;
        imc = usu.peso/(Math.pow(usu.altura, 2))*10000;
        int imcInt = (int) imc;
        tvImc.setText("IMC:"+ imcInt);
        tvNivel.setText(usu.nivel+"");
        final ArrayList<Dica> dicas = new ArrayList<Dica>();
        final Retrofit r = new Retrofit.Builder()
                .baseUrl(JsonPlaceHolder.BASE_URL)
                .addConverterFactory(GsonConverterFactory.create())
                .build();
        final JsonPlaceHolder j = r.create(JsonPlaceHolder.class);
        Call<List<Dica>> a = j.getDicas();
        a.enqueue(new Callback<List<Dica>>() {
            @Override
            public void onResponse(Call<List<Dica>> call, Response<List<Dica>> response) {
                List<Dica> lista2 = response.body();
                int i = 0;
                for (Dica q: lista2) {
                    Dica qe = new Dica();
                    qe.setCodDica(q.getCodDica());
                    qe.setDescricao(q.getDescricao());
                    qe.setImagem(q.getImagem());
                    qe.setRestricoes(q.getRestricoes());
                    qe.setNomeDica(q.getNomeDica());
                    dicas.add(qe);
                    if (qe.getRestricoes().equals("1")) {
                        Calendar calendar = Calendar.getInstance();
                        if (qe.getCodDica() == 8) {
                            calendar.set(Calendar.HOUR_OF_DAY, 9);
                            calendar.set(Calendar.MINUTE, 00);
                            calendar.set(Calendar.SECOND, 00);

                            AlarmManager alarm = (AlarmManager) getSystemService(Context.ALARM_SERVICE);
                            Intent inte1 = new Intent(User.this, AlertReceiver.class);
                            inte1.putExtra("nome", qe.getNomeDica());
                            inte1.putExtra("descricao", qe.getDescricao());
                            PendingIntent pen1 = PendingIntent.getBroadcast(User.this, 1, inte1, 0);
                            alarm.setRepeating(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), AlarmManager.INTERVAL_DAY, pen1);
                        } else if (qe.getCodDica() == 9) {
                            calendar.set(Calendar.HOUR_OF_DAY, 10);
                            calendar.set(Calendar.MINUTE, 30);
                            calendar.set(Calendar.SECOND, 00);

                            AlarmManager alarm = (AlarmManager) User.this.getSystemService(Context.ALARM_SERVICE);
                            Intent inte2 = new Intent(User.this, AlertReceiver.class);
                            inte2.putExtra("nome", qe.getNomeDica());
                            inte2.putExtra("descricao", qe.getDescricao());
                            PendingIntent pen2 = PendingIntent.getBroadcast(User.this, 2, inte2, 0);
                            alarm.setRepeating(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), AlarmManager.INTERVAL_DAY, pen2);
                        } else if (qe.getCodDica() == 10) {
                            calendar.set(Calendar.HOUR_OF_DAY, 20);
                            calendar.set(Calendar.MINUTE, 00);
                            calendar.set(Calendar.SECOND, 00);

                            AlarmManager alarm = (AlarmManager) User.this.getSystemService(Context.ALARM_SERVICE);
                            Intent inte3 = new Intent(User.this, AlertReceiver.class);
                            inte3.putExtra("nome", qe.getNomeDica());
                            inte3.putExtra("descricao", qe.getDescricao());
                            PendingIntent pen3 = PendingIntent.getBroadcast(User.this, 3, inte3, 0);
                            alarm.setRepeating(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), AlarmManager.INTERVAL_DAY, pen3);
                        } else if (qe.getCodDica() == 11) {
                            calendar.set(Calendar.HOUR_OF_DAY, 11);
                            calendar.set(Calendar.MINUTE, 00);
                            calendar.set(Calendar.SECOND, 00);

                            AlarmManager alarm = (AlarmManager) User.this.getSystemService(Context.ALARM_SERVICE);
                            Intent inte4 = new Intent(User.this, AlertReceiver.class);
                            inte4.putExtra("nome", qe.getNomeDica());
                            inte4.putExtra("descricao", qe.getDescricao());
                            PendingIntent pen4 = PendingIntent.getBroadcast(User.this, 4, inte4, 0);
                            alarm.setRepeating(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(),AlarmManager.INTERVAL_DAY ,pen4);
                        } else {
                            calendar.set(Calendar.HOUR_OF_DAY, 21);
                            calendar.set(Calendar.MINUTE, 30);
                            calendar.set(Calendar.SECOND, 00);

                            AlarmManager alarm = (AlarmManager) User.this.getSystemService(Context.ALARM_SERVICE);
                            Intent inte5 = new Intent(User.this, AlertReceiver.class);
                            inte5.putExtra("nome", qe.getNomeDica());
                            inte5.putExtra("descricao", qe.getDescricao());
                            PendingIntent pen5 = PendingIntent.getBroadcast(User.this, 5, inte5, 0);
                            alarm.setRepeating(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), AlarmManager.INTERVAL_DAY, pen5);
                        }


                        i++;
                    }
                }

            }

            @Override
            public void onFailure(Call<List<Dica>> call, Throwable t) {
                Log.d("potato", t.getMessage());
            }
        });

        setSupportActionBar(myToolbar);
        myToolbar.setOnMenuItemClickListener(new Toolbar.OnMenuItemClickListener() {

            @Override
            public boolean onMenuItemClick(MenuItem item) {

                if(item.getItemId()==R.id.pagina_p)
                {
                    // do something

                }
                else if(item.getItemId()== R.id.dicas)
                {
                    // do something
                    Intent intent = new Intent(User.this, Dicas.class);
                    b.putSerializable("usuario",usu);
                    intent.putExtras(b);
                    startActivity(intent);
                }
                else if(item.getItemId() == R.id.receitas){
                    // do something

                    Intent intent = new Intent(User.this, Receitas.class);

                    b.putSerializable("usuario",usu);
                    intent.putExtras(b);
                    startActivity(intent);
                }

                else if(item.getItemId() == R.id.quiz){
                    Intent intent = new Intent(User.this, QuizBase.class);
                    b.putSerializable("usuario",usu);
                    intent.putExtras(b);
                    startActivity(intent);
                }
                else
                {
                    Retrofit r = new Retrofit.Builder()
                            .baseUrl(JsonPlaceHolder.BASE_URL)
                            .addConverterFactory(GsonConverterFactory.create())
                            .build();
                    JsonPlaceHolder j = r.create(JsonPlaceHolder.class);
                    Call<Usuario> c = j.deletarUsuario(usu.id);
                    c.enqueue(new Callback<Usuario>() {
                        @Override
                        public void onResponse(Call<Usuario> call, Response<Usuario> response) {

                            Intent data = new Intent(User.this, TelaLogin.class);
                            startActivity(data);

                        }

                        @Override
                        public void onFailure(Call<Usuario> call, Throwable t) {

                        }
                    });
                }

                return false;
            }
        });
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.options_menu, menu);
        return true;
    }

}
