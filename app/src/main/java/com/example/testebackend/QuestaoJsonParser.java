package com.example.testebackend;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import java.util.ArrayList;
import java.util.List;
public class QuestaoJsonParser
{
    public static List<Questao> parseDados(String content) {
        try {

            JSONArray jsonArray = new JSONArray(content);
            List<Questao> produtoList = new ArrayList<>();
            for (int i = 0; i< jsonArray.length(); i++){
                JSONObject jsonObject = jsonArray.getJSONObject(i);
                Questao produto = new Questao();
                produto.setQuiz(jsonObject.getInt("codQuiz"));
                produto.setQual(jsonObject.getInt("codQuestao"));
                produto.setTipo(jsonObject.getString("tipo"));
                produto.setPergunta(jsonObject.getString("pergunta"));
                String s = jsonObject.getString("respostas");
                produto.setRespostas(s.split(" , "));
                produtoList.add(produto);
            }
            return produtoList;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

}
