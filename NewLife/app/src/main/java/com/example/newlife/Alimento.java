package com.example.newlife;

import com.google.gson.annotations.SerializedName;

import java.io.Serializable;

class Alimento implements Serializable {

    Integer id;
    String nome;
    Float carboidratos;
    Float gorduras;
    Float proteinas;
    Integer gluten, transgenico, lactinios, B,C,D, sodio,antioxidante, omega3, magnesio;
    Float zinco, ferro, potassio, colesterol, fibras;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Float getCarboidratos() {
        return carboidratos;
    }

    public void setCarboidratos(Float carboidratos) {
        this.carboidratos = carboidratos;
    }

    public Float getGorduras() {
        return gorduras;
    }

    public void setGorduras(Float gorduras) {
        this.gorduras = gorduras;
    }

    public Float getProteinas() {
        return proteinas;
    }

    public void setProteinas(Float proteinas) {
        this.proteinas = proteinas;
    }

    public Integer getGluten() {
        return gluten;
    }

    public void setGluten(Integer gluten) {
        this.gluten = gluten;
    }

    public Integer getTransgenico() {
        return transgenico;
    }

    public void setTransgenico(Integer transgenico) {
        this.transgenico = transgenico;
    }

    public Integer getLactinios() {
        return lactinios;
    }

    public void setLactinios(Integer lactinios) {
        this.lactinios = lactinios;
    }

    public Integer getB() {
        return B;
    }

    public void setB(Integer b) {
        B = b;
    }

    public Integer getC() {
        return C;
    }

    public void setC(Integer c) {
        C = c;
    }

    public Integer getD() {
        return D;
    }

    public void setD(Integer d) {
        D = d;
    }

    public Integer getSodio() {
        return sodio;
    }

    public void setSodio(Integer sodio) {
        this.sodio = sodio;
    }

    public Integer getAntioxidante() {
        return antioxidante;
    }

    public void setAntioxidante(Integer antioxidante) {
        this.antioxidante = antioxidante;
    }

    public Integer getOmega3() {
        return omega3;
    }

    public void setOmega3(Integer omega3) {
        this.omega3 = omega3;
    }

    public Integer getMagnesio() {
        return magnesio;
    }

    public void setMagnesio(Integer magnesio) {
        this.magnesio = magnesio;
    }

    public Float getZinco() {
        return zinco;
    }

    public void setZinco(Float zinco) {
        this.zinco = zinco;
    }

    public Float getFerro() {
        return ferro;
    }

    public void setFerro(Float ferro) {
        this.ferro = ferro;
    }

    public Float getPotassio() {
        return potassio;
    }

    public void setPotassio(Float potassio) {
        this.potassio = potassio;
    }

    public Float getColesterol() {
        return colesterol;
    }

    public void setColesterol(Float colesterol) {
        this.colesterol = colesterol;
    }

    public Float getFibras() {
        return fibras;
    }

    public void setFibras(Float fibras) {
        this.fibras = fibras;
    }
    @SerializedName("body")
    private String text;

    public String getText() {
        return text;
    }


}
