package com.example.newlife;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

class Dica implements Serializable {
    int codDica;
    String nomeDica;
    String descricao;
    String restricoes;
    String imagem;
    @SerializedName("body")
    private String text;


    public int getCodDica() {
        return codDica;
    }

    public void setCodDica(int codDica) {
        this.codDica = codDica;
    }

    public String getNomeDica() {
        return nomeDica;
    }

    public void setNomeDica(String nomeDica) {
        this.nomeDica = nomeDica;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }


    public String getRestricoes() {
        return restricoes;
    }

    public void setRestricoes(String restricoes) {
        this.restricoes = restricoes;
    }

}
