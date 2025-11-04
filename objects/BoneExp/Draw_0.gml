// Inherit the parent event
event_inherited();

if (point = 1) {
    sprite_index = spr_bone_1;
} else {
    sprite_index = spr_bone;
}

if global.papsbones = true{
if (point = 1) {
    sprite_index = spr_bone_paps_1;
} else{
    sprite_index = spr_bone_paps;
}
}
event_inherited();

