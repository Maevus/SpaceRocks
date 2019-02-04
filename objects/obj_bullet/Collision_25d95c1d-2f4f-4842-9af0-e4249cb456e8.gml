score += 10;
instance_destroy();
audio_play_sound(snd_die, 1, false);

// keyword other will refer to other instance in colliding event.
with(other){
	// code in here called by instance of other obj in collision.
	instance_destroy(); 	
	
	if(sprite_index == spr_asteroid_huge){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances", obj_astroid);
			new_asteroid.sprite_index = spr_asteroid_medium;
		}
	} else if (sprite_index == spr_asteroid_medium){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances", obj_astroid);
			new_asteroid.sprite_index = spr_asteroid_small;
		}
	}

	
	repeat(10){
		instance_create_layer(x,y, "Instances", obj_debris);
	}
}