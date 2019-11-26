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
import android.widget.AdapterView;
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
                final List<Receita> as = response.body();
                final List<Alimento> alimentos = new ArrayList<>();
                final ArrayList<Receita> atual = new ArrayList<Receita>();
                dados = new String[response.body().size()];
                int i = 0;
                for (Receita r : as) {
                    dados[i] = r.getNomeReceita();
                    atual.add(r);
                }
                //String[] params = new String[]{"carbo", "gordu", "pro", "fibras", "B", "C", "D", "sodio", "antioxidante", "magnesio", "zinco", "ferro", "potassio", "diabetes", "estresse", "gli", "ins"};
                String[] res = usu.getRestricoes().split(",");
               final  int[] data = new int[13];
                for (int in = 0; in < 13; in++)
                    data[in] = Integer.parseInt(res[in]);

                for (final Receita receita : as) {


                    final String[] alimentosNaReceita = receita.alimentos.split(",");

                        Call<List<Alimento>> a = j.getAlimentos();
                        a.enqueue(new Callback<List<Alimento>>() {
                            @Override
                            public void onResponse(Call<List<Alimento>> call, Response<List<Alimento>> response) {
                                List<Alimento> ali = response.body();
                                final Receita p = receita;
                                int[] melhoresCafe = new int[3];
                                int[] auxCafe = new int[3];
                                auxCafe[0] = 20000000;
                                auxCafe[1] = 20000000;
                                auxCafe[2] = 20000000;
                                int[] melhoresAl = new int[3];
                                int[] auxAl = new int[3];

                                auxAl[0] = 20000000;
                                auxAl[1] = 20000000;
                                auxAl[2] = 20000000;

                                int[] melhoresLanche = new int[3];
                                int[] auxLanche = new int[3];

                                auxLanche[0] = 20000000;
                                auxLanche[1] = 20000000;
                                auxLanche[2] = 20000000;
                                int x = 0;


                                int[] melhoresJantar = new int[3];
                                int[] auxJantar = new int[3];

                                auxJantar[0] = 20000000;
                                auxJantar[1] = 20000000;
                                auxJantar[2] = 20000000;

                                int gord = 0, carb = 0, prot = 0, fibras = 0, vitB = 0, vitC = 0, vitD = 0, sodio = 0, antoxi = 0, mag = 0, zinc = 0, fer = 0, pot = 0;
                                for (Alimento a : ali)
                                    alimentos.add(a);
                                for (int y = 0; y < alimentosNaReceita.length; y++) {

                                    for (Alimento alimento : alimentos) {
                                        if (alimento.nome.equals(alimentosNaReceita[y])) {

                                            int gorduras, proteinas, carboidratos;
                                            if (alimento.gorduras < 1)
                                                gorduras = 2;
                                            else if (alimento.gorduras > 10)
                                                gorduras = 0;
                                            else
                                                gorduras = 1;

                                            if (alimento.proteinas < 5)
                                                proteinas = 2;
                                            else if (alimento.proteinas > 15)
                                                proteinas = 0;
                                            else
                                                proteinas = 1;

                                            if (alimento.carboidratos < 1)
                                                carboidratos = 2;
                                            else if (alimento.carboidratos > 10)
                                                carboidratos = 0;
                                            else
                                                carboidratos = 1;


                                            gord += ComparaDieta(gorduras, data[0]);
                                            prot += ComparaDieta(proteinas, data[1]);
                                            carb += ComparaDieta(carboidratos, data[2]);
                                            fibras += ComparaDieta(alimento.fibras.intValue(), data[3]);
                                            vitB += ComparaDieta(alimento.B, data[4]);
                                            vitC += ComparaDieta(alimento.C, data[5]);
                                            vitD += ComparaDieta(alimento.D, data[6]);
                                            sodio += ComparaDieta(alimento.sodio, data[7]);
                                            antoxi += ComparaDieta(alimento.sodio, data[8]);
                                            mag += ComparaDieta(alimento.magnesio, data[9]);
                                            zinc += ComparaDieta(alimento.zinco.intValue(), data[10]);
                                            fer += ComparaDieta(alimento.ferro.intValue(), data[11]);
                                            pot += ComparaDieta(alimento.potassio.intValue(), data[12]);
                                        }

                                    }

                                }
                                int somatoria = gord + carb + prot + fibras + vitB + vitC + vitD + sodio + antoxi + mag + zinc + fer + pot;

                                for (int k = 0; k < 3; k++) {
                                    if (receita.periodo.equals("Café da manhã")) {
                                        if (auxCafe[k] > somatoria) {
                                            auxCafe[k] = somatoria;
                                            melhoresCafe[k] = x;
                                            break;
                                        }
                                    } else if (receita.periodo.equals("Almoço")) {
                                        if (auxAl[k] > somatoria) {
                                            auxAl[k] = somatoria;
                                            melhoresAl[k] = x;
                                            break;
                                        }
                                    } else if (receita.periodo.equals("Lanche")) {
                                        if (auxLanche[k] > somatoria) {
                                            auxLanche[k] = somatoria;
                                            melhoresLanche[k] = x;
                                            break;
                                        }
                                    } else {
                                        if (auxJantar[k] > somatoria) {
                                            auxJantar[k] = somatoria;
                                            melhoresJantar[k] = x;
                                            break;

                                        }
                                    }
                                }
                                x++;

                                final ArrayList<Receita> receitasArray = new ArrayList<>();
                                receitasArray.add(as.get(melhoresCafe[0]));
                                receitasArray.add(as.get(melhoresCafe[1]));
                                receitasArray.add(as.get(melhoresCafe[2]));
                                receitasArray.add(as.get(melhoresAl[0]));
                                receitasArray.add(as.get(melhoresAl[1]));
                                receitasArray.add(as.get(melhoresAl[2]));
                                receitasArray.add(as.get(melhoresLanche[0]));
                                receitasArray.add(as.get(melhoresLanche[1]));
                                receitasArray.add(as.get(melhoresLanche[2]));
                                receitasArray.add(as.get(melhoresJantar[0]));
                                receitasArray.add(as.get(melhoresJantar[1]));
                                receitasArray.add(as.get(melhoresJantar[2]));
                                final ListaReceitasAdapter adapter = new ListaReceitasAdapter(Receitas.this, receitasArray, 12);
                                listview.setAdapter(adapter);
                                listview.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                                    @Override
                                    public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                                        Intent intent = new Intent(Receitas.this, ReceitaAtual.class);
                                        Bundle bundle = new Bundle();
                                        bundle.putSerializable("receita", receitasArray.get(position));
                                        intent.putExtras(bundle);
                                        startActivity(intent);
                                    }
                                });
                            }

                            @Override
                            public void onFailure(Call<List<Alimento>> call, Throwable t) {
                                Log.d("potato", t.getMessage());
                            }
                        });


                        /*       2    1      0
                            g	< 1	1<g<10  >10
                            p	< 5	1<g<15  >15
                            c	< 1	1<g<10  >10 */

                }



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
                }else if(item.getItemId() == R.id.receitas){
                }else if(item.getItemId() == R.id.quiz){
                    // do something

                    Intent intent = new Intent(Receitas.this, QuizBase.class);
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

                            Intent data = new Intent(Receitas.this, TelaLogin.class);
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
    public int ComparaDieta(int comida, int usu)
    {
        int retorno = 0;

        if(comida == usu)
            retorno = 0;
        else if(comida == 2)
        {
            if(usu == 1)
                retorno = 1;
            else
                retorno = 2;
        }
        else if(comida == 0)
        {
            if(usu == 1)
                retorno = 1;
            else
                retorno = 2;
        }
        else if(comida == 1)
            retorno = 1;


        return retorno;


    }
}