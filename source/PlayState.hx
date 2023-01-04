package;

import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	// var character:Character = new Character("assets/images/characters/chicken chicken/head", "assets/images/characters/chicken chicken/hand u",
	// 	"assets/images/characters/chicken chicken/hand d", "assets/images/characters/chicken chicken/foot u",
	// 	"assets/images/characters/chicken chicken/foot d", "assets/images/characters/chicken chicken/body");
	// var idle:FlxSprite = new FlxSprite(200, 100);
	override public function create()
	{
		super.create();
		// character.x = 100;
		// character.y = 100;
		var land:FlxSprite = new FlxSprite(0, 400);
		land.makeGraphic(600, 10);
		add(land);
		// idle.animation.play("a");
		// idle.frames = Tools.getFrames("assets/images/characters/chicken chicken/chicken chicken");
		// idle.animation.addByPrefix("idle b", "idleb", 60, true);
		// idle.animation.addByPrefix("idle n", "idlen", 60, true);
		// idle.animation.addByPrefix("run b", "runb", 60, true);
		// idle.animation.addByPrefix("run n", "runn", 60, true);
		// add(idle);
		// add(character);
	}

	override public function update(elapsed:Float)
	{
		// idle.animation.play(character.state[character.staten]);
		// if (FlxG.keys.justPressed.E)
		// {
		// 	// idle.animation.reset();
		// }
		super.update(elapsed);
	}
}
