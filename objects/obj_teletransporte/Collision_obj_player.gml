/// @description 
if(!global.play_mockup) exit;
if(other.speed  == 0) exit;
global.index_room = action;
room_goto(global.rooms_list[action].room_id);
exit;