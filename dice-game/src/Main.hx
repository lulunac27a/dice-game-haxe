class Main {
	static function main() {
		trace("Dice Game");
		trace("Enter the number of dice to roll: ");
		rollDice(Sys.stdin()); // get input to roll the dice based on input
	}

	static function numberWithCommas(number:Int):String {
		var numString:String = Std.string(number);
		var numLen:Int = numString.length;
		var output:String = "";
		for (i in 0...numLen) {
			if ((numLen - i) % 3 == 0 && i > 0) {
				output += ",";
			}
			output += numString.charAt(i);
		}
		return output;
	}

	static function rollDice(input:haxe.io.Input):Void {
		var numberOfDice:Int = Std.parseInt(input.readLine()); // parse input to integer
		var dice:Array<Int> = []; // initialize empty array of dice
		var sum:Int = 0; // initialize dice sum to 0
		for (i in 0...numberOfDice) { // loop to entered number of dice based on input
			dice[i] = Std.random(6) + 1; // add dice array to rolled die and make dice result is between 1 to 6
			sum += dice[i]; // add die value to sum
			trace('Dice ${numberWithCommas(i + 1)}: ${numberWithCommas(dice[i])}'); // print die roll value
		}
		trace('Sum of dice: ${numberWithCommas(sum)}'); // print sum of all dice
	}
}
