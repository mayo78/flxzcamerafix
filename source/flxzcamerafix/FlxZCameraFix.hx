package flxzcamerafix;

// based off the script made by raltyro
// update this guy manually
// the deluaifcation of bambi invasion is now complete
// uhh i made this into a library so its easier to just have
import flixel.FlxCamera;

@:allow(flxzcamerafix.CameraFixer)
class FlxZCameraFix extends FlxCamera {
	static final betterShake = true;
	static final betterShakeHardness = .5;
	static final betterShakeFadeTime = .15;
	static final useScrollForShake = true;
	var fixer:CameraFixer;
	public function new(X:Int = 0, Y:Int = 0, Width:Int = 0, Height:Int = 0, Zoom:Float = 0) {
		super(X, Y, Width, Height, Zoom);
		fixer = new CameraFixer(this);
	}
	override function update(elapsed:Float) {
		fixer.update(elapsed);
		super.update(elapsed);
	}
	override function destroy() {
		super.destroy();
		fixer.destroy();
	}
}