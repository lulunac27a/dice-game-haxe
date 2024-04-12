class Main {
	static function main() {
		trace("Dice Game");
		trace("Enter the number of dice to roll: ");
		rollDice(Sys.stdin()); // get input to roll the dice based on input
	}

	static function rollDice(input:haxe.io.Input):Void {
		var numberOfDice:Int = Std.parseInt(input.readLine()); // parse input to integer
		var dice:Array<Int> = []; // initialize empty array of dice
		var sum:Int = 0; // initialize sum to 0
		for (i in 0...numberOfDice) { // loop to entered number of dice based on input
			dice[i] = Std.random(6); // add dice array to rolled die
			sum += dice[i]; // add die value to sum
			trace('Dice ${i + 1}: ${dice[i]}'); // print die roll value
		}
		trace('Sum of dice: ${sum}'); // print sum of all dice
	}
}
