/// @description 

if(global.play_mockup) exit;

if(selection){
	if(!edit_points)
		edit_points = true
	else{
		global.action = false;
		edit_points = false;
		selection = false;
		point_x = points[index_path].x;
		point_y = points[index_path].y;
	}
}
array_foreach(points, function(_element, _index){ _element.visible = edit_points});
