package com.example.newlife;

public class Algoritmo
{
    int diabetes, hipotensao, hipertensao, ansiedadeStress, insonia, i, g;
    double a, p;
    boolean m = true;
    String restricao[];


    //0= mais, 1=normal; 2=pouco
    int gorduras, proteinas, carboidratos, magnesio, zinco, ferro, potassio, complexoB, vitC, vitD, antioxidante, sodio, fibras, hidratacao, luzAzul, exercicio;


    public Algoritmo (int diabetes, int hipotensao, int hipertensao, int ansiedadeStress, int insonia, int idade, int glicemia, double altura, double peso, boolean mulher){
        //alto =0; normal = 1; baixo = 2;
        a = altura;
        p = peso;
        int imc;
        g = glicemia;
        m = mulher;
        i = idade;

        if(IMC(altura, peso) <= 18.5)
            imc = 2;
        else if(IMC(altura, peso) > 25)
            imc = 0;
        else
            imc = 1;

        //Gorduras
        if(idade<=18 || idade>=65 || diabetes == 0 || diabetes == 1 || imc !=1 || hipertensao==0)
            this.gorduras = 0;
        else
            this.gorduras = 1;

        //Proteinas
        if((idade>12 && idade <19) || imc != 1)
            this.proteinas = 0;
        else
            this.proteinas = 1;


        //Carboidratos
        if(this.insonia == 0){
            this.carboidratos=0;
        }
        else if(idade>=18|| diabetes ==0 || diabetes== 1 || ansiedadeStress==0||imc==1 ||hipertensao==0)
            this.carboidratos = 2;
        else
            this.carboidratos=1;

        //Magnesio
        if(idade>64 || diabetes == 0 || diabetes == 1 || ansiedadeStress == 0|| hipertensao==0|| insonia==0)
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
            this.ferro = 0;
        else if(idade>64)
            this.ferro = 2;
        else
            this.ferro = 1;

        //Potassio
        if(!mulher || idade>18 || diabetes == 1 || ansiedadeStress==0|| hipertensao == 0||insonia==0)
            this.potassio=0;
        else if(idade<13)
            this.potassio=2;
        else
            this.potassio = 1;

        //Complexo B
        if(!mulher || (idade>12 && idade <19) || diabetes ==0 || diabetes == 1|| ansiedadeStress==0|| hipertensao==0|| hipotensao==0|| insonia==0)
            this.complexoB = 0;
        else
            this.complexoB = 1;

        //Vitamina C
        if(!mulher || idade>18 ||ansiedadeStress==0)
            this.vitC = 0;
        else if(idade<13)
            this.vitC=2;
        else
            this.vitC=1;

        //Vitamina D
        if(idade>64 || diabetes == 0 || diabetes == 1 ||ansiedadeStress==0|| hipertensao==0|| insonia==2)
            this.vitD=0;
        else if(idade<13)
            this.vitD=2;
        else
            this.vitD = 1;

        //Antioxidante
        if(!mulher || ansiedadeStress == 0 || idade>12)
            this.antioxidante = 0;
        else
            this.antioxidante =1;

        //Sodio
        if(hipertensao==0)
            this.sodio=2;
        else
            this.sodio=1;

        //Fibras
        if(!mulher || idade >64 || diabetes == 0|| diabetes==1|| glicemia == 0 || imc != 1 || hipertensao == 0 || hipotensao == 0)
            this.fibras=0;
        else
            this.fibras= 1;

        //Hidratação
        if(idade<19)
            this.hidratacao = 2;
        else if(mulher || diabetes == 1 || idade>18)
            this.hidratacao = 1;
        else
            this.hidratacao=0;

        this.exercicio = 0;
        this.luzAzul = 0;
    }

    public double IMC(double altura, double peso){
        double imc;
        imc = peso/(Math.pow(altura, 2))*10000;
        return imc;
    }
}