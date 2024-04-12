class Main {
	static function main() {
		trace("Dice Game");
		trace("Number of dice: ");
		rollDice(Sys.stdin());
	}

	static function rollDice(input:haxe.io.Input) {
		var numberOfDice:Int = Std.parseInt(input.readLine());
		var dice:Array<Int> = [];
		for (i in 0...numberOfDice) {
			dice[i] = Std.random(6);
			trace('Dice ${i + 1}: ${dice[i]}');
		}
	}
}
