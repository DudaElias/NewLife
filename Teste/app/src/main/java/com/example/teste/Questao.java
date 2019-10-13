package com.example.teste;

public class Questao {
    int qual;
    String tipo;
    String pergunta;
    String[] respostas;

    public Questao(int w, String x, String y, String[] z)
    {
        qual = w;
        tipo = x;
        if(tipo == "Dissertativa")
            respostas = null;
        else
            respostas = z;
        pergunta = y;
    }
}
