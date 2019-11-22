package com.example.newlife;

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
import java.util.List;

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
            Retrofit r = new Retrofit.Builder()
                    .baseUrl(JsonPlaceHolder.BASE_URL)
                    .addConverterFactory(GsonConverterFactory.create())
                    .build();
            JsonPlaceHolder j = r.create(JsonPlaceHolder.class);
            Call<List<Receita>> c = j.getReceitas();
        c.enqueue(new Callback<List<Receita>>() {
                @Override
                public void onResponse(Call<List<Receita>> call, Response<List<Receita>> response) {
                    List<Receita> usu = response.body();
                    dados = new String[response.body().size()];
                    int i = 0;
                    for(Receita r : usu)
                    {
                        dados[i] = r.getNomeReceita();
                        Log.d("potato", r.getNomeReceita());
                        i++;
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
