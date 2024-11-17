/// @description 
if(selection){
	if(!edit_points)
		edit_points = true
	else{
		global.action = false;
		edit_points = false;
		selection = false;
		point_x = points_path[index_path].x;
		point_y = points_path[index_path].y;
	}
}
array_foreach(points_path, function(_element, _index){ _element.visible = edit_points});
