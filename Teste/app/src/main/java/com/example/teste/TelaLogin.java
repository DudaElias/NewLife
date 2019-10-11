package com.example.teste;

import androidx.appcompat.app.AppCompatActivity;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import android.widget.ViewFlipper;

import java.util.ArrayList;
import java.util.List;

import in.goodiebag.carouselpicker.CarouselPicker;

public class TelaLogin extends AppCompatActivity {

    ViewFlipper flipper;
    TextView login, criar;
    private Animation slide_in_left, slide_in_right, slide_out_left, slide_out_right;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tela_login);
        flipper = findViewById(R.id.flipper);
        login = findViewById(R.id.txtLogin);
        criar = findViewById(R.id.txtCriar);

        slide_in_left = AnimationUtils.loadAnimation(this, R.anim.slide_in_left);
        slide_in_right = AnimationUtils.loadAnimation(this, R.anim.slide_in_right);
        slide_out_left = AnimationUtils.loadAnimation(this, R.anim.slide_out_left);
        slide_out_right = AnimationUtils.loadAnimation(this, R.anim.slide_out_right);
        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(flipper.getDisplayedChild() == 0)
                    return;
                flipper.setInAnimation(slide_in_left);
                flipper.setOutAnimation(slide_out_right);
                flipper.showPrevious();
            }
        });

        criar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(flipper.getDisplayedChild() == 1)
                    return;
                flipper.setInAnimation(slide_in_right);
                flipper.setOutAnimation(slide_out_left);
                flipper.showNext();
            }
        });
    }
}
