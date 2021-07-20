// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function disentangle_ingredient_from_holder(ingredient){
	if(ingredient.related_setter){
		ingredient.related_setter.related_ingredient_inst = false;
		ingredient.related_setter = false;
	}
}