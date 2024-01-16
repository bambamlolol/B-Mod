package B-Mod;

import openfl.utils.Assets;

class Paths {
  public static var mod:String;

  public static function getImage(image:String) {
    var path = "assets/" + mod + "/images/" + image + ".png";
    if (sys.FileSystem.exists(path))
			return sys.io.File.getContent(path);
    else
      return null;
      trace("ERROR: FILE: " + image + ".png COULD NOT BE FOUND";
  }
}
