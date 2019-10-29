package com.example.newlife;

import java.util.List;

public class Quiz
{
    List<Questao> listaQuestao;
    int qualQuiz;
    public Quiz(int i, List<Questao> l)
    {
        qualQuiz = i;
        listaQuestao = l;
    }
}
