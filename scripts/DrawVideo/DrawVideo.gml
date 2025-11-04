function DrawVideo(pathtovideo, _depth, _loop, _x, _y, _xscale, _yscale, _rotation, _alpha, _color){
	if _depth == undefined{
		_depth = 0
	}
    var video = instance_create_depth(0, 0, _depth, obj_playvideo)
	video.VideoX = _x
	video.VideoY = _y
	video.VideoXscale = _xscale
	video.VideoYscale = _yscale
	video.videopath = pathtovideo
	video.Rotation = _rotation
	video.Alpha = _alpha
	video.Color = _color
	video.Loop = _loop
	if StopVideo == undefined{
		video.StopVideos = 0
	}
	if _loop == undefined{
		video.Loop = false
	}
	if _x == undefined{
		video.VideoX = 0
	}
	if _y == undefined{
		video.VideoY = 0
	}
	if _xscale == undefined{
		video.VideoXscale = 1
	}
	if _yscale == undefined{
		video.VideoYscale = 1
	}
	if _alpha == undefined{
		video.Alpha = 1
	}
	if _rotation == undefined{
		video.Rotation = 0
	}
	if _color == undefined{
		video.Color = c_white
	}
	return video
}
function Video(pathtovideo, _depth, _loop, _x, _y, _xscale, _yscale, _rotation, _alpha, _color){
	if _depth == undefined{
		_depth = 0
	}
    var video = instance_create_depth(0, 0, _depth, obj_playvideo)
	video.VideoX = _x
	video.VideoY = _y
	video.VideoXscale = _xscale
	video.VideoYscale = _yscale
	video.videopath = pathtovideo
	video.Rotation = _rotation
	video.Alpha = _alpha
	video.Color = _color
	video.Loop = _loop
	if StopVideo == undefined{
		video.StopVideos = 0
	}
	if _loop == undefined{
		video.Loop = false
	}
	if _x == undefined{
		video.VideoX = 0
	}
	if _y == undefined{
		video.VideoY = 0
	}
	if _xscale == undefined{
		video.VideoXscale = 1
	}
	if _yscale == undefined{
		video.VideoYscale = 1
	}
	if _alpha == undefined{
		video.Alpha = 1
	}
	if _rotation == undefined{
		video.Rotation = 0
	}
	if _color == undefined{
		video.Color = c_white
	}
	return video
}
function ShowVideo(pathtovideo, _depth, _loop, _x, _y, _xscale, _yscale, _rotation, _alpha, _color){
	if _depth == undefined{
		_depth = 0
	}
    var video = instance_create_depth(0, 0, _depth, obj_playvideo)
	video.VideoX = _x
	video.VideoY = _y
	video.VideoXscale = _xscale
	video.VideoYscale = _yscale
	video.videopath = pathtovideo
	video.Rotation = _rotation
	video.Alpha = _alpha
	video.Color = _color
	video.Loop = _loop
	if StopVideo == undefined{
		video.StopVideos = 0
	}
	if _loop == undefined{
		video.Loop = false
	}
	if _x == undefined{
		video.VideoX = 0
	}
	if _y == undefined{
		video.VideoY = 0
	}
	if _xscale == undefined{
		video.VideoXscale = 1
	}
	if _yscale == undefined{
		video.VideoYscale = 1
	}
	if _alpha == undefined{
		video.Alpha = 1
	}
	if _rotation == undefined{
		video.Rotation = 0
	}
	if _color == undefined{
		video.Color = c_white
	}
	return video
}
function MakeVideo(pathtovideo, _depth, _loop, _x, _y, _xscale, _yscale, _rotation, _alpha, _color){
	if _depth == undefined{
		_depth = 0
	}
    var video = instance_create_depth(0, 0, _depth, obj_playvideo)
	video.VideoX = _x
	video.VideoY = _y
	video.VideoXscale = _xscale
	video.VideoYscale = _yscale
	video.videopath = pathtovideo
	video.Rotation = _rotation
	video.Alpha = _alpha
	video.Color = _color
	video.Loop = _loop
	if StopVideo == undefined{
		video.StopVideos = 0
	}
	if _loop == undefined{
		video.Loop = false
	}
	if _x == undefined{
		video.VideoX = 0
	}
	if _y == undefined{
		video.VideoY = 0
	}
	if _xscale == undefined{
		video.VideoXscale = 1
	}
	if _yscale == undefined{
		video.VideoYscale = 1
	}
	if _alpha == undefined{
		video.Alpha = 1
	}
	if _rotation == undefined{
		video.Rotation = 0
	}
	if _color == undefined{
		video.Color = c_white
	}
	return video
}
function CloseVideo(id){
	if instance_exists(id){
	id.StopVideos = true
	}
}
function UndrawVideo(id){
	if instance_exists(id){
	id.StopVideos = true
	}
}
function DisableVideo(id){
	if instance_exists(id){
	id.StopVideos = true
	}
}
function NoVideo(id){
	if instance_exists(id){
	id.StopVideos = true
	}
}
function StopVideo(id){
	if instance_exists(id){
	id.VideoPause = true
	}
}
function PauseVideo(id){
	if instance_exists(id){
	id.VideoPause = true
	}
}
function UnPauseVideo(id){
	if instance_exists(id){
	id.VideoPause = false
	}
}
function ResumeVideo(id){
	if instance_exists(id){
	id.VideoPause = false
	}
}
