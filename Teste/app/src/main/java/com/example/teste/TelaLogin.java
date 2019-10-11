package com.example.teste;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.ViewFlipper;

import java.util.ArrayList;
import java.util.List;

import in.goodiebag.carouselpicker.CarouselPicker;

public class TelaLogin extends AppCompatActivity {

    ViewFlipper flipper;
    TextView login, criar;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_tela_login);
        flipper = findViewById(R.id.flipper);
        login = findViewById(R.id.txtLogin);
        criar = findViewById(R.id.txtCriar);

        login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(flipper.getDisplayedChild() == 0)
                    return;
                flipper.showPrevious();
            }
        });

        criar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(flipper.getDisplayedChild() == 1)
                    return;
                flipper.showNext();
            }
        });
    }
}
