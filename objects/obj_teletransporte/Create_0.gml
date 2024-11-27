/// @description 
index_creation = array_length(global.objects_room);

array_push(global.objects_room, id);

components = {
	"textfield": {
		min : 0,
		max : array_length(global.rooms_list) -1,
		text_info: "Gameckup:"
	}
}