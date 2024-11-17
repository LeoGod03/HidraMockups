function scr_search_array(_mat, _array){
	
	for(var _index = 0; _index < array_length(_mat); _index ++){
		if(_mat[_index][0] == _array[0] && _mat[_index][1] == _array[1])
			return true;
		
	}
	return false;

}