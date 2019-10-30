package com.example.newlife;

import androidx.versionedparcelable.ParcelField;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.GET;
import retrofit2.http.Path;

public interface JsonPlaceHolder {

    String BASE_URL = "http://143.106.200.223:3000/";

    @GET("questoes")
    Call<List<Questao>> getDados();

    @GET("usuario/{cod}")
    Call<Usuario> getUsuario(@Path("cod") String id);

}
