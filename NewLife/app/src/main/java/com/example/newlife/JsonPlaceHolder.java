package com.example.newlife;

import androidx.versionedparcelable.ParcelField;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;

public interface JsonPlaceHolder {

    String BASE_URL = "http://143.106.201.152:3000/";

    @GET("questoes")
    Call<List<Questao>> getDados();

    @GET("usuario/{id}")
    Call<List<Usuario>> getUsuario(@Path("id") String id);

    @POST("usuario")
    Call<Usuario>criarUsuario(@Body Usuario inserido);

}
