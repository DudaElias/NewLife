package com.example.newlife;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class Receitas extends AppCompatActivity {

    String[] dados;
    ListView listview;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_receitas);
        final Bundle b = getIntent().getExtras();
        final Usuario usu = (Usuario)b.getSerializable("usuario");
                    listview = (ListView) findViewById(R.id.list);
           final Retrofit r = new Retrofit.Builder()
                    .baseUrl(JsonPlaceHolder.BASE_URL)
                    .addConverterFactory(GsonConverterFactory.create())
                    .build();
           final JsonPlaceHolder j = r.create(JsonPlaceHolder.class);
            Call<List<Receita>> c = j.getReceitas();
        c.enqueue(new Callback<List<Receita>>() {
                @Override
                public void onResponse(Call<List<Receita>> call, Response<List<Receita>> response) {
                    List<Receita> as = response.body();
                    final List<Alimento> alimentos = new ArrayList<>();
                    dados = new String[response.body().size()];
                    int i = 0;
                    for(Receita r : as)
                    {
                        dados[i] = r.getNomeReceita();
                        Log.d("potato", r.getNomeReceita());
                        i++;
                    }
                    //String[] params = new String[]{"carbo", "gordu", "pro", "fibras", "B", "C", "D", "sodio", "antioxidante", "magnesio", "zinco", "ferro", "potassio", "diabetes", "estresse", "gli", "ins"};
                    String[] res = usu.getRestricoes().split(",");

                    int carbo, prot, gor;
                    if(res[13].equals("0") || res[13].equals("1") ||( usu.peso/Math.pow(usu.altura, 2)*10000) >25 || usu.getIdade() >=65)
                    {
                        carbo = 10;
                        prot = 30;
                        gor = 60;
                    }
                    else if(res[14].equals("0") || res[14].equals("1") || res[16].equals("0")|| res[16].equals("1")|| res[7].equals("2"))
                    {
                        carbo = 15;
                        prot = 35;
                        gor = 50;
                    }
                    else if(Integer.parseInt(res[15]) <= 70 || usu.getIdade() < 13)
                    {
                        carbo = 20;
                        prot = 35;
                        gor = 45;
                    }
                    else
                    {
                        carbo = 15;
                        prot = 40;
                        gor = 45;

                    }

                    Call<List<Alimento>> a = j.getAlimentos();
                    a.enqueue(new Callback<List<Alimento>>() {
                        @Override
                        public void onResponse(Call<List<Alimento>> call, Response<List<Alimento>> response) {
                           List<Alimento> ali = response.body();

                           for(Alimento a : ali)
                               alimentos.add(a);

                        }

                            @Override
                            public void onFailure(Call<List<Alimento>> call, Throwable t) {
                                Log.d("potato", t.getMessage());
                            }
                        });

                    int[] melhoresCafe = new int[3];
                    int[] melhoresAl = new int[3];
                    int[] melhoresLanche = new int[3];
                    int[] melhoresJantar = new int[3];
                    for(Receita receita : as)
                    {

                        int carboR = 0, protR = 0, gorR = 0;
                        int j;
                        String[] alimentosNaReceita = receita.alimentos.split(",");
                        for(j = 0; j < alimentosNaReceita.length; j++) {
                            for (Alimento alimento : alimentos) {
                                if (alimento.nome.equals(alimentosNaReceita[j])) {
                                    carboR += alimento.carboidratos;
                                    protR += alimento.proteinas;
                                    gorR += alimento.gorduras;
                                }
                            }
                        }
                        double carboP = 0, protP = 0, gorP = 0;
                        int soma = carboR+protR+gorR;
                        carboP = (carboR*100)/(soma);
                        protP = (protR*100)/(soma);
                        gorP = (gorR*100)/(soma);

                        for(int l = 0; l < 3; l++)
                        {
                            if()// periodo do dia
                            {
                                int somaVet = carbo + alimentos.get(vet[l]).carboidratos;
                                int somaAtual = carbo + carboR;
                                if (somaAtual < somaVet)
                                    vet[l] = j;
                            }
                        }



                    }
                    ArrayAdapter<String> adapter = new ArrayAdapter<String>(Receitas.this, android.R.layout.simple_list_item_1, dados);
                    listview.setAdapter(adapter);
                }

                @Override
                public void onFailure(Call<List<Receita>> call, Throwable t) {
                Log.d("potato", t.getMessage());
            }
        }); Toolbar myToolbar = (Toolbar) findViewById(R.id.my_toolbar);
        setSupportActionBar(myToolbar);
        myToolbar.setOnMenuItemClickListener(new Toolbar.OnMenuItemClickListener() {

            @Override
            public boolean onMenuItemClick(MenuItem item) {

                if(item.getItemId()==R.id.pagina_p)
                {
                    // do something

                    Intent intent = new Intent(Receitas.this, User.class);

                    b.putSerializable("usuario",usu);
                    intent.putExtras(b);
                    startActivity(intent);
                }
                else if(item.getItemId()== R.id.dicas)
                {
                    // do something

                    Intent intent = new Intent(Receitas.this, Dicas.class);

                    b.putSerializable("usuario",usu);
                    intent.putExtras(b);
                    startActivity(intent);
                }
                else{
                    // do something

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
