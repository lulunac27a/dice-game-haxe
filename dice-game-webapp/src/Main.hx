import js.Browser;

class Main {
	static function main() {
		var appContent:js.html.DivElement = cast(Browser.document.getElementById("app"), js.html.DivElement);
		var rollButton:js.html.ButtonElement = cast(Browser.document.getElementById("roll"), js.html.ButtonElement);
		var diceInput:js.html.InputElement = cast(Browser.document.getElementById("dice"), js.html.InputElement);
		rollButton.onclick = (event) -> { // when roll dice button is clicked
			var numberOfDice:Int = Std.parseInt(diceInput.value); // get number of dice to roll
			appContent.innerHTML = ""; // set app content to empty string
			var dice:Array<Int> = []; // initialize dice array
			for (i in 0...numberOfDice) {
				dice[i] = Std.random(6) + 1; // roll the dice
				var newDice:js.html.DivElement = cast(js.Browser.document.createElement("div"), js.html.DivElement);
				newDice.id = 'dice-${i + 1}'; // set id to dice-number to make id's unique
				newDice.textContent = 'Dice ${i + 1}: ${dice[i]}'; // set text to each die value
				appContent.appendChild(newDice); // append dice values to app content
			}
		}
	}
}
