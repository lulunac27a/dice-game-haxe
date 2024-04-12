class Main {
	static function main() {
		trace("Dice Game");
		trace("Enter the number of dice to roll: ");
		rollDice(Sys.stdin()); // get input to roll the dice based on input
	}

	static function rollDice(input:haxe.io.Input) {
		var numberOfDice:Int = Std.parseInt(input.readLine()); // parse input to integer
		var dice:Array<Int> = []; // initialize empty array of dice
		for (i in 0...numberOfDice) {
			dice[i] = Std.random(6); // add dice array to rolled die
			trace('Dice ${i + 1}: ${dice[i]}'); // print die roll value
		}
	}
}
