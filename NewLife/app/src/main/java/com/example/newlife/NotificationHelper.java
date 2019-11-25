package com.example.newlife;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.ContextWrapper;

import androidx.core.app.NotificationCompat;


public class NotificationHelper extends ContextWrapper {

    private NotificationManager mManager;
    public static final String channel1ID = "channel1ID";
    public static final String channel1Name = "Channel 1";
    public static final String channel2ID = "channel2ID";
    public static final String channel2Name = "Channel 2";


    public NotificationHelper(Context base) {
        super(base);
        createChannels();
    }

    public void createChannels()
    {
        NotificationChannel channel1 = new NotificationChannel(channel1ID, channel1Name, NotificationManager.IMPORTANCE_DEFAULT);
        channel1.enableLights(true);
        channel1.enableVibration(true);
        channel1.setLightColor(R.color.colorPrimary);
        channel1.setLockscreenVisibility(Notification.VISIBILITY_PRIVATE);
        getManager().createNotificationChannel(channel1);
    }

    public NotificationManager getManager()
    {
        if(mManager == null)
        {
            mManager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);

        }
        return mManager;
    }

    public NotificationCompat.Builder getChannelNotification(String title, String message)
    {
        return new NotificationCompat.Builder(getApplicationContext(), channel1ID)
                .setContentTitle(title)
                .setContentText(message)
                .setSmallIcon(R.drawable.sol);

    }
}
