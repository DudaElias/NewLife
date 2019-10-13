package com.example.testebackend;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    TextView textViewTarefa;
    ProgressBar progressBar;
    List<Questao> produtoList;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        textViewTarefa = (TextView) findViewById(R.id.textView);
        textViewTarefa.setMovementMethod(new ScrollingMovementMethod());
        progressBar = (ProgressBar) findViewById(R.id.progressBar);
        progressBar.setVisibility(View.INVISIBLE);
        produtoList = new ArrayList<>();
    }
    protected void atualizarView(){
        if (produtoList != null){
            for (Questao produto: produtoList) {
                textViewTarefa.append(produto.getPergunta() + "\n");
            }
        }
    }
    protected void atualizarView(String message){
        textViewTarefa.append(message + "\n");
    }

    private boolean isOnline(){
        ConnectivityManager cm =
                (ConnectivityManager)getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo networkInfo = cm.getActiveNetworkInfo();
        if(networkInfo != null && networkInfo.isConnectedOrConnecting()){
            return true;
        } else {
            return false;
        }
    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main, menu);
        return super.onCreateOptionsMenu(menu);
    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        if (item.getItemId() == R.id.iniciar_tarefa){
            if (isOnline()) {
                MyTask task = new MyTask();
                task.execute("http://143.106.200.120:3000/questoes");
            }
            else
                Toast.makeText(this,"Rede não está disponível",Toast.LENGTH_LONG).show();
        }
        if(item.getItemId() == R.id.limpar_tarefas){
            textViewTarefa.setText("");
            progressBar.setVisibility(View.INVISIBLE);
        }
        return super.onOptionsItemSelected(item);
    }

    private void buscarDados(String uri) {
        MyTask task = new MyTask();
        task.execute(uri);
    }


    private class MyTask extends AsyncTask<String, String, String>{
        @Override
        protected void onPreExecute() {
            progressBar.setVisibility(View.VISIBLE);
            atualizarView("Tarefa Iniciada");
        }
        @Override
        protected String doInBackground(String... params) {
            String conteudo = HttpManager.getDados(params[0]);
            return conteudo;

        }
        @Override
        protected void onPostExecute(String s) {
            produtoList = QuestaoJsonParser.parseDados(s);
            atualizarView();
            progressBar.setVisibility(View.INVISIBLE);
        }
        @Override
        protected void onProgressUpdate(String... values) {
            //atualizarView(values[0]);
        }

    }

}
