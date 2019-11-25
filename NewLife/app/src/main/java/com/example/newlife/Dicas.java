package com.example.newlife;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.EditText;

import java.net.UnknownServiceException;
import java.util.List;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class Dicas extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_dicas);
        final Bundle b = getIntent().getExtras();
        final Usuario usu = (Usuario)b.getSerializable("usuario");
        Toolbar myToolbar = (Toolbar) findViewById(R.id.my_toolbar);
        setSupportActionBar(myToolbar);
        myToolbar.setOnMenuItemClickListener(new Toolbar.OnMenuItemClickListener() {

            @Override
            public boolean onMenuItemClick(MenuItem item) {

                if(item.getItemId()==R.id.pagina_p)
                {
                    // do something

                    Intent intent = new Intent(Dicas.this, User.class);

                    b.putSerializable("usuario",usu);
                    intent.putExtras(b);
                    startActivity(intent);
                }
                else if(item.getItemId()== R.id.dicas)
                {
                    // do something
                }else if(item.getItemId() == R.id.receitas){
                    // do something

                    Intent intent = new Intent(Dicas.this, Receitas.class);

                    b.putSerializable("usuario",usu);
                    intent.putExtras(b);
                    startActivity(intent);
                }
                else if(item.getItemId() == R.id.quiz){
                    // do something

                    Intent intent = new Intent(Dicas.this, QuizBase.class);
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

                            Intent data = new Intent(Dicas.this, TelaLogin.class);
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
