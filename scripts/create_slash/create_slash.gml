///@arg x
///@arg y
///@arg direction
///@arg wait
///@arg scale

function create_slash(_x, _y, _dir, _wait, _scale){
	var inst=instance_create_depth(_x,_y,0,battle_bullet_slash);
	inst.angle=_dir;
	inst.image_angle=_dir;
	inst.wait=_wait
	inst.slashwidth = _scale
	return inst
}