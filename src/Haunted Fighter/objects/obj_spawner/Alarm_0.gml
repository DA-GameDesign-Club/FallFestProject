/// @description Spawn Enemy

unspawned = true;

if (instance_number(obj_ghost) < 10) {
			
		if (!place_meeting(x, y, obj_ghost)) {
			
			instance_create_layer(x, y, layer_get_id("Enemies"), obj_ghost);
			show_debug_message(place_meeting(x, y, obj_ghost));
			unspawned = false;
			
		}
			
}

alarm[0] = irandom_range(0.5*room_speed, 5*room_speed); // Reset Alarm