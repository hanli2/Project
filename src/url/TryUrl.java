package url;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.*;
import java.util.ArrayList;

import org.json.*;

import com.fasterxml.jackson.databind.ObjectMapper;

public class TryUrl {
	
	private final String FIND_RECIPE_BY_NAME = "https://api.edamam.com/search?q=meat&app_id=4f0561fa&app_key=6d16ad35a6fe3dbaa5b3585da180abf9";

	public Recipe[] findRecipeByName(String name){
		
		String urlStr = FIND_RECIPE_BY_NAME.replace("meat", name);
        
		String json = getJsonStringForUrl(urlStr);
		
		JSONObject obj;
		JSONArray myArrayJsonObj = new JSONArray();
		try {
			obj = new JSONObject(json);
			
			ArrayList<String> receipts = new ArrayList<String>();
			
			JSONArray arr = obj.getJSONArray("hits");
			
			for (int i = 0; i < arr.length(); i++)
			{
			    String label = arr.getJSONObject(i).getJSONObject("recipe").getString("label");
			    String source = arr.getJSONObject(i).getJSONObject("recipe").getString("source");
			    double calories = arr.getJSONObject(i).getJSONObject("recipe").getDouble("calories");
			    String image = arr.getJSONObject(i).getJSONObject("recipe").getString("image");
			    String level = arr.getJSONObject(i).getJSONObject("recipe").getString("level");
			    JSONArray brr = arr.getJSONObject(i).getJSONObject("recipe").getJSONArray("ingredientLines");
			    String ingredientLines = brr.toString();
			    
				JSONObject mySingleJsonObj = new JSONObject();
			    mySingleJsonObj.put("label", label);
			    mySingleJsonObj.put("source", source);
			    mySingleJsonObj.put("calories", calories);
			    mySingleJsonObj.put("image", image);
			    mySingleJsonObj.put("level", level);
			    mySingleJsonObj.put("ingredientLines", ingredientLines);
			    
			    myArrayJsonObj.put(mySingleJsonObj);
			}
			
		} catch (JSONException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		String myNewData = myArrayJsonObj.toString();
		
		ObjectMapper mapper = new ObjectMapper();
		
		
	    try {
			return mapper.readValue(myNewData, Recipe[].class);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return null;

	}

	
	private String getJsonStringForUrl(String urlStr) {
		try {
			URL url = new URL(urlStr);
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");
			InputStream in = connection.getInputStream();
			InputStreamReader isr = new InputStreamReader(in, StandardCharsets.UTF_8); 
			BufferedReader reader = new BufferedReader(isr);
			String out;
			StringBuffer json = new StringBuffer();
			while((out = reader.readLine()) != null){
				json.append(out);
			}

			return json.toString();

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
	

//	public static void main(String[] args) {
//		TryUrl client = new TryUrl();
//		
//		Recipe[] recipes = client.findRecipeByName("chicken");
//
//			for(Recipe recipe : recipes){
//				System.out.println(recipe.getLabel());
//				System.out.println(recipe.getSource());
//				System.out.println(recipe.getCalories());
//				System.out.println(recipe.getLevel());
//				System.out.println(recipe.getIngredientLines());
//			}
//	}


}
