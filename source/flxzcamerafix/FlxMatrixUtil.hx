package flxzcamerafix;

import flixel.math.FlxAngle;
import flixel.math.FlxMatrix;

class FlxMatrixUtil {
	public static function skew(mat:FlxMatrix, x = .0, y = .0) {
		var skb = Math.tan(y * FlxAngle.TO_RAD);
		var skc = Math.tan(x * FlxAngle.TO_RAD);

		mat.b = mat.a * skb + mat.b;
		mat.c = mat.c + mat.d * skc;
		
		mat.ty = mat.tx * skb + mat.ty;
		mat.tx = mat.tx + mat.ty * skc;

		return mat;
	}
}