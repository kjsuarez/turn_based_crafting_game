function disentangle_ingredient_from_holder(ingredient){
	if(ingredient.related_setter){
		ingredient.related_setter.related_ingredient_inst = false;
		ingredient.related_setter = false;
	}
}