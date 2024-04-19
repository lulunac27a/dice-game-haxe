import js.lib.intl.NumberFormat;
import js.Browser;
import js.html.*;

class Main {
	static function main() {
		var appContent:DivElement = cast(Browser.document.getElementById("app"), js.html.DivElement);
		var rollButton:ButtonElement = cast(Browser.document.getElementById("roll"), js.html.ButtonElement);
		var diceInput:InputElement = cast(Browser.document.getElementById("dice"), js.html.InputElement);
		rollButton.onclick = (event) -> { // when roll dice button is clicked
			var numberOfDice:Int = Std.parseInt(diceInput.value); // get number of dice to roll
			appContent.innerHTML = ""; // set app content to empty string
			var dice:Array<Int> = []; // initialize dice array
			var sum:Int = 0; // initialize dice sum to 0
			for (i in 0...numberOfDice) {
				dice[i] = Std.random(6) + 1; // roll the dice
				sum += dice[i]; // add die value to sum
				var newDice:js.html.DivElement = cast(Browser.document.createElement("div"), js.html.DivElement);
				newDice.id = 'dice-${i + 1}'; // set id to dice-number to make id's unique
				newDice.textContent = 'Dice ${new NumberFormat().format(i + 1)}: ${dice[i]}'; // set text to each die value
				appContent.appendChild(newDice); // append dice values to app content
			}
			appContent.innerHTML += '\nSum of dice: ${new NumberFormat().format(sum)}'; // print sum of all dice and append to app content
		}
	}
}
