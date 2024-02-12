package B-Mod;

class Paths {
	public static var mod:String;
	var soundExtension = #if web "mp3" #else "ogg" #end;
	    
	public static function getPath(path:String):Dynamic {
		var path = "mods/" + mod + "/" + path;
		if (sys.FileSystem.exists(path))
		{
			return sys.io.File.getContent(path);
		}
		else
		{
			return null;
			trace("ERROR: FILE: " + image + " COULD NOT BE FOUND";
		}
	}

	public static function getImage(image:String):Dynamic {
		return getPath("images/" + image + ".png");
	}
      
	public static function getSound(sound:String):Dynamic {
		return getPath("sounds/" + sound + "." + soundExtension);
	}
			      
	public static function getMusic(music:String):Dynamic {
		return getPath("music/" + music + "." + soundExtension);
	}
}
