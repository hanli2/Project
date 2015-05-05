package edu.neu.cs5200.rest.client;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


@JsonIgnoreProperties()
public class Recipe {
	
	private String label;
	private Double calories;
	private String source;
	private String image;
	private String level;
	private String ingredientLines;
	
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public Double getCalories() {
		return calories;
	}
	public void setCalories(Double calories) {
		this.calories = calories;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getIngredientLines() {
		return ingredientLines;
	}
	public void setIngredientLines(String ingredientLines) {
		this.ingredientLines = ingredientLines;
	}



}
