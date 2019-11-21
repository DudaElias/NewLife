package com.example.newlife;

import androidx.appcompat.app.AppCompatActivity;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Handler handler = new Handler();
        handler.postDelayed(new Runnable() {
            public void run() {
                Intent intent = new Intent(MainActivity.this, TelaLogin.class);
                startActivity(intent);
                overridePendingTransition(R.anim.fadein, R.anim.fadeout);
            }
        }, 1000);

        //Texto que aparecerá na barra de status (chamada para a notificação)
        String tickerText = "Você recebeu uma mensagem.";

        //Detalhes da notificação
        CharSequence titulo = "André";
        CharSequence mensagem = "Exemplo de nootificação";

        criarNotificacao(this, tickerText, titulo, mensagem, MainActivity.class);


    }
    protected void criarNotificacao(Context context, CharSequence msgBarraStatus, CharSequence titulo, CharSequence mensagem, Class activity){
        // Recupera o serviço do NotificationManager
        NotificationManager nm = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        Notification n = new Notification(R.drawable.circulo_user,msgBarraStatus, System.currentTimeMillis());

        // PendingIntent para executar a Activity se o usuário selecionar a notificação
        PendingIntent p = PendingIntent.getActivity(this, 0, new Intent(this, activity),0);

        // Flag utilizada para remover a notificação da barra de status quando o usuario clicar nela
        n.flags |= Notification.FLAG_AUTO_CANCEL;

        //Informações
        n.setLatestEventInfo(this, titulo, mensagem, p); // ta dando erro por causa do notificação q ta riscado

        // Espera 100ms e vibra por 250ms, espera por mais 100ms e vibra por 500ms
        n.vibrate = new long[]{100,250,100,500};

        //id da notificação
        nm.notify(R.string.app_name, n);
    }


}
