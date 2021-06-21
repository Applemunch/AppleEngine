import haxe.macro.Context.Message;
import hxp.*;
import lime.tools.*;

class Project extends HXProject {
    
    public function new () {
        
        super ();

        if(debug)setenv("BUILD_DIR", "export/debug");
        else setenv("BUILD_DIR", "export/release");

        meta = { title: "TrollEngine", file: "TrollEngine", packageName: "com.ninjamuffin99.funkin", version: "1.1.1" };
        window = {width: "1280", height: "720", fps: "", background: "#000000", hardware: "true", vsync: "false"};

        if(target == Platform.WINDOWS || target == Platform.MAC || target == Platform.LINUX) window = {orientation: "landscape", fullscreen: false, resizeable: true, vsync: "true"};
        if(target == Platform.IOS || target == Platform.ANDROID) window = {orientation: "landscape", fullscreen: true, width: 0, height: 0, resizable: false};

        app.preloader = "flixelsystem.FlxPreloader";

        haxelibs.push (new Haxelib ("lime"));
        haxelibs.push (new Haxelib ("flixel"));
        haxelibs.push (new Haxelib ("flixel-ui"));
        haxelibs.push (new Haxelib ("lime"));
        haxelibs.push (new Haxelib ("lime"));
        sources.push ("source");
        
        // Other code goes here!
        
    }
    
}