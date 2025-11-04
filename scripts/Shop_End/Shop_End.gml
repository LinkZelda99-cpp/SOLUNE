/*function Shop_End(){

var room_return=room_battle

if(room_exists(room_return)){

fader.alpha=1;

room_goto(room_return);

Fader_Fade(-1,0,20);

}

}

function Shop_End(){
	var room_return=Storage_GetTempGeneral().Get(FLAG_TEMP_SHOP_ROOM_RETURN);
	if(room_exists(room_return)){
		fader.alpha=1;
		room_goto(room_return);
		Fader_Fade(-1,0,20);
	}
}
/*/
function Shop_End() {
    var room_return = Storage_GetTempGeneral().Get(FLAG_TEMP_SHOP_ROOM_RETURN);

    if (room_exists(room_return)) {
        fader.target_room = room_return;
        fader.fade_mode = 1;              // tell fader it's fading OUT
        Fader_Fade(-1, 1, 20);            // fade to black
    }
}
