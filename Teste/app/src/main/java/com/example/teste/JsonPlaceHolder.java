package com.example.teste;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.GET;

public interface JsonPlaceHolder {

    String BASE_URL = "http://143.106.200.36:3000/";

    @GET("questoes")
    Call<List<Questao>> getDados();

}
