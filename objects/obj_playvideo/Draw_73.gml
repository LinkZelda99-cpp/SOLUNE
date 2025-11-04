var _videoData = video_draw()
var _videoStatus = _videoData[0]
if _videoStatus == 0
{
	draw_surface_ext(_videoData[1], VideoX, VideoY, VideoXscale, VideoYscale, Rotation, Color, Alpha)
}
if StopVideos == true{
    video_close()
    instance_destroy(self)
}
if RoomVid != room{
	video_close()
    instance_destroy(self)
}
if VideoPause == true{
	video_pause()
}
if VideoPause == false{
	video_resume()
}
