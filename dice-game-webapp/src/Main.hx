import js.Browser;

class Main {
	static function main() {
		var appContent:js.html.DivElement = cast(Browser.document.getElementById("app"), js.html.DivElement);
		var rollButton:js.html.ButtonElement = cast(Browser.document.getElementById("roll"), js.html.ButtonElement);
		var diceInput:js.html.InputElement = cast(Browser.document.getElementById("dice"), js.html.InputElement);
		rollButton.onclick = (event) -> {
			var numberOfDice:Int = Std.parseInt(diceInput.value);
			appContent.innerHTML = "";
			var dice:Array<Int> = [];
			for (i in 0...numberOfDice) {
				dice[i] = Std.random(6) + 1;
				var newDice:js.html.DivElement = cast(js.Browser.document.createElement("div"), js.html.DivElement);
				newDice.id = 'dice-${i + 1}';
				newDice.textContent = 'Dice ${i + 1}: ${dice[i]}';
				appContent.appendChild(newDice);
			}
		}
	}
}
