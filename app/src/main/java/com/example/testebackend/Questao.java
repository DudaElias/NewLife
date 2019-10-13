package com.example.testebackend;

public class Questao
{

    int qual;
    int quiz;
    String tipo;
    String pergunta;
    String[] respostas;


    public int getQual() {
        return qual;
    }

    public void setQual(int qual) {
        this.qual = qual;
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

    public String[] getRespostas() {
        return respostas;
    }

    public void setRespostas(String[] respostas) {
        this.respostas = respostas;
    }


    public int getQuiz() {
        return quiz;
    }

    public void setQuiz(int quiz) {
        this.quiz = quiz;
    }

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
    public Questao()
    {
    }
}
