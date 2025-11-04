function MakeBoneExplode(X,Y,ANGLE,PAUSE,LENGTH,TYPE,OUT,BONESCOUNT,ROTATING,GRAVITY) 
{		
	if LENGTH == undefined{
		LENGTH = 20
	}
	if BONESCOUNT == undefined{
		BONESCOUNT = 5
	}
	if ROTATING == undefined{
		ROTATING = 1
	}
	if GRAVITY == undefined{
		GRAVITY = 0.1
	}
	if TYPE == undefined{
		TYPE = 0
	}
	var bp = instance_create_depth(X,Y,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH*2,Warning);
	bp.x = X;
	bp.y = Y;
	bp.image_angle = ANGLE;
	bp.PAUSEM = PAUSE;
	Warning.lengthbones = LENGTH;
	Warning.bonecount = BONESCOUNT;
	Warning.rotating = ROTATING;
	Warning.gravityneed = GRAVITY;
	Warning.type = TYPE
	Warning.out = OUT
	return bp;
}
