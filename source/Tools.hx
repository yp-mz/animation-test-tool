package;

class Tools
{
	public static function getFrames(way:String)
	{
		return flixel.graphics.frames.FlxAtlasFrames.fromSparrow(way + '.png', way + '.xml');
	}
}
