package com.example.newlife;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import androidx.core.app.NotificationCompat;

import java.util.Random;

public class AlertReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        NotificationHelper not = new NotificationHelper(context);
        String nome = intent.getStringExtra("nome");
        String descricao = intent.getStringExtra("descricao");
        NotificationCompat.Builder nb = not.getChannelNotification(nome,descricao);
        Random random = new Random();
        int m = random.nextInt(9999 - 1000) + 1000;
        not.getManager().notify(m, nb.build());
    }
}
