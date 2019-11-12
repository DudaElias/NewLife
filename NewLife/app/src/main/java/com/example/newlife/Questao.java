package com.example.newlife;

import com.google.gson.annotations.SerializedName;

public class Questao
{

    int codQuestao;
    int codQuiz;
    String tipo;
    String pergunta;
    String respostas;


    @SerializedName("body")
    private String text;

    public String getText() {
        return text;
    }

    public int getCodQuestao() {
        return codQuestao;
    }

    public void setCodQuestao(int qual) {
        this.codQuestao = qual;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getPergunta() {
        return pergunta;
    }

    public void setPergunta(String pergunta) {
        this.pergunta = pergunta;
    }

    public String getRespostas() {
        return respostas;
    }

    public void setRespostas(String respostas) {
        this.respostas = respostas;
    }


    public int getCodQuiz() {
        return codQuiz;
    }

    public void setCodQuiz(int quiz) {
        this.codQuiz = quiz;
    }

    public Questao(int w, String x, String y, String z)
    {
        codQuestao = w;
        tipo = x;
        if(tipo == "Dissertativa")
            respostas = null;
        else
            respostas = z;
        pergunta = y;
    }
    public Questao() {
    }

}
