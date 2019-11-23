package com.example.newlife;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;

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
        tvGenero.setText(usu.getGenero()+" ");
        tvIdade.setText("Idade: " + usu.getIdade()+ "");
        double imc;
        imc = usu.peso/(Math.pow(usu.altura, 2))*10000;
        tvImc.setText("IMC:"+ imc);
        tvNivel.setText(usu.nivel+"");

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

                else{
                    // do something

                    Intent intent = new Intent(User.this, QuizBase.class);
                    b.putSerializable("usuario",usu);
                    intent.putExtras(b);
                    startActivity(intent);
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
