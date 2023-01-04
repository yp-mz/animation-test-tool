import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxSpriteGroup;

class CharacterAnimationRegulator extends FlxSpriteGroup
{
	public var chX:Float = 0;
	public var chY:Float = 0;
	public var head:FlxSprite = new FlxSprite();
	public var body:FlxSprite = new FlxSprite();
	public var hand_d:FlxSprite = new FlxSprite();
	public var hand_u:FlxSprite = new FlxSprite();
	public var foot_d:FlxSprite = new FlxSprite();
	public var foot_u:FlxSprite = new FlxSprite();

	public var state:Array<String> = ["idle n", "idle b", "run n", "run b"];
	public var staten:Int = 0;

	public var part:Array<String> = ["self", "head", "hand u", "hand d", "foot u", "foot d"];
	public var partn:Int = 0;

	private function setXY(actor:FlxSprite, x:Float, y:Float)
	{
		actor.x = x;
		actor.y = y;
	}

	public function updateAn(name:String)
	{
		head.animation.play(name);
		body.animation.play(name);
		hand_u.animation.play(name);
		hand_d.animation.play(name);
		foot_u.animation.play(name);
		foot_d.animation.play(name);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
		updateAn(state[staten]);
		if (!FlxG.keys.pressed.ALT)
			setXY(this, chX, chY);

		if (FlxG.keys.justPressed.SPACE)
		{
			if (partn >= part.length - 1)
				partn = 0;
			else
				partn++;
			trace(part[partn]);
		}

		if (FlxG.keys.justPressed.E)
		{
			if (staten >= state.length - 1)
				staten = 0;
			else
				staten++;
			trace(state[staten]);
		}

		if (FlxG.keys.pressed.DOWN)
			switch (part[partn])
			{
				case "head":
					head.y++;
				case "hand u":
					hand_u.y++;
				case "hand d":
					hand_d.y++;
				case "foot u":
					foot_u.y++;
				case "foot d":
					foot_d.y++;
				case "self":
					if (FlxG.keys.pressed.ALT)
						this.y++;
					else
						chY++;
			}

		if (FlxG.keys.pressed.UP)
			switch (part[partn])
			{
				case "head":
					head.y--;
				case "hand u":
					hand_u.y--;
				case "hand d":
					hand_d.y--;
				case "foot u":
					foot_u.y--;
				case "foot d":
					foot_d.y--;
				case "self":
					if (FlxG.keys.pressed.ALT)
						this.y--;
					else
						chY--;
			}

		if (FlxG.keys.pressed.RIGHT)
			switch (part[partn])
			{
				case "head":
					head.x++;
				case "hand u":
					hand_u.x++;
				case "hand d":
					hand_d.x++;
				case "foot u":
					foot_u.x++;
				case "foot d":
					foot_d.x++;
				case "self":
					if (FlxG.keys.pressed.ALT)
						this.x++;
					else
						chX++;
			}

		if (FlxG.keys.pressed.LEFT)
			switch (part[partn])
			{
				case "head":
					head.x--;
				case "hand u":
					hand_u.x--;
				case "hand d":
					hand_d.x--;
				case "foot u":
					foot_u.x--;
				case "foot d":
					foot_d.x--;
				case "self":
					if (FlxG.keys.pressed.ALT)
						this.x--;
					else
						chX--;
			}

		// if (FlxG.keys.pressed.DOWN || FlxG.keys.pressed.UP || FlxG.keys.pressed.LEFT || FlxG.keys.pressed.RIGHT)
		if (FlxG.keys.justPressed.ENTER)
			switch (part[partn])
			{
				case "head":
					trace("head", head.x - this.x, head.y - this.y);
				case "hand u":
					trace("hand u", hand_u.x - this.x, hand_u.y - this.y);
				case "hand d":
					trace("hand d", hand_d.x - this.x, hand_d.y - this.y);
				case "foot u":
					trace("foot u", foot_u.x - this.x, foot_d.y - this.y);
				case "foot d":
					trace("foot d", foot_d.x - this.x, foot_d.y - this.y);
				case "self":
					// trace(this.x, this.y);
					// case "self":
					trace(state[staten], this.x - chX, this.y - chY);
			}
	}
}
