package B-Mod;

class Paths {
	public static var mod:String;
	var soundExtension = #if web "mp3" #else "ogg" #end;

	public static function getImage(image:String) {
		var path = "assets/" + mod + "/images/" + image + ".png";
		if (sys.FileSystem.exists(path))
		{
			return sys.io.File.getContent(path);
		}
		else
		{
			return null;
			trace("ERROR: FILE: " + image + ".png COULD NOT BE FOUND";
		}
	}
			      
	public static function getSound(sound:String) {
		var path = "assets/" + mod + "/sounds/" + sound + "." + soundExtension;
		if (sys.FileSystem.exists(path))
		{
			return sys.io.File.getContent(path);
		}
		else
		{
			return null;
			trace("ERROR: FILE: " + sound + "." + soundExtension + " COULD NOT BE FOUND";
		}
	}
			      
	public static function getMusic(music:String) {
		var path = "assets/" + mod + "/music/" + music + "." + soundExtension;
		if (sys.FileSystem.exists(path))
		{
			return sys.io.File.getContent(path);
		}
		else
		{
			return null;
			trace("ERROR: FILE: " + music + "." + soundExtension + " COULD NOT BE FOUND";
		}
	}
}
