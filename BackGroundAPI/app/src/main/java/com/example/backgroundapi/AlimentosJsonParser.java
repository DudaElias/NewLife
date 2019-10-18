package com.example.backgroundapi;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import java.util.ArrayList;
import java.util.List;
public class AlimentosJsonParser {
    public static List<AlimentosAPI> parseDados(String content) {
        try {

            JSONArray jsonArray = new JSONArray(content);
            AlimentosAPI produto = new AlimentosAPI();
            List<AlimentosAPI> produtoList = new ArrayList<>();
            for (int i = 0; i< jsonArray.length(); i++){
                JSONObject jsonObject = jsonArray.getJSONObject(i);
                produto.setId(jsonObject.getInt("id"));
                produto.setNome(jsonObject.getString("description"));
                produto.setCarboidrato(jsonObject.getInt("carbohydrate_g"));
                produto.setSodio(jsonObject.getInt("sodium_mg"));
                produto.setCalorias(jsonObject.getInt("energy_kcal"));
                produto.setFibras(jsonObject.getInt("fiber_g"));
                produtoList.add(produto);
            }
            return produtoList;
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}