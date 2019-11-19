package com.example.newlife;

public class Algoritmo
{
    int diabetes, hipertensao, ansiedadeStress, insonia, idade, glicemia;
    double altura, peso;
    boolean mulher = true;
    String restricao[];


    //0= mais, 1=normal; 2=pouco
    int gorduras, proteinas, carboidratos, magnesio, zinco, ferro, potassio, complexoB, vitC, vitD, antioxidante, sodio, fibras, hidratacao, luzAzul, exercicio;


    public Algoritmo (int diabetes, int hipertensao, int ansiedadeStress, int insonia, int idade, int glicemia, double altura, double peso, boolean mulher){

        //alto =0; normal = 1; baixo = 2;
        int imc;

        if(IMC(altura, peso) <= 18.5)
            imc = 2;
        else if(IMC(altura, peso) > 25)
            imc = 0;
        else
            imc = 2;


        //Gorduras
        if(idade<19|| idade>64 || diabetes == 0 || diabetes == 1 || imc !=1 || hipertensao==0){
            this.gorduras = 0;
        }
        else{
            this.gorduras = 1;
        }

        //Proteinas
        if((idade>12 && idade <19) || imc != 1)
            this.proteinas = 0;
        else
            this.proteinas = 1;


        //Carboidratos
        if(this.insonia == 0){
            this.carboidratos=0;
        }
        else if(idade>18|| diabetes ==0 || diabetes== 1 || ansiedadeStress==0||imc==1 ||hipertensao==0)
            this.carboidratos = 2;
        else
            this.carboidratos=1;

        //Magnesio
        if(!mulher || idade>64 || diabetes == 0 || diabetes == 1 || ansiedadeStress == 0|| hipertensao==0|| insonia==0)
            this.magnesio = 0;
        else
            this.magnesio = 1;

        //Zinco
        if(!mulher || (idade>12 && idade<19) || idade>64)
            this.zinco = 0;
        else
            this.zinco = 1;

        //Ferro
        if(mulher || (idade>12 && idade<19))
            this.ferro = 1;
       // else if(idade>64)

       /* else{
            this.proteinas = 1;
            this.carboidratos = 1;
            this.magnesio = 1;
            this.zinco = 1;
            this.ferro = 1;
            this.potassio = 1;
            this.complexoB = 1;
            this.vitC = 1;
            this.vitD = 1;
            this.antioxidante = 1;
            this.sodio = 1;
            this.fibras = 1;
            this.hidratacao = 1;
            this.luzAzul = 1;
            this.exercicio = 1;
        }*/

    }

    public double IMC(double altura, double peso){
        double imc;
        imc = peso/Math.pow(altura, 2);
        return imc;
    }
}