import js.Browser;

class Main {
	static function main() {
		var appContent = cast(Browser.document.getElementById("app"), js.html.DivElement);
		var rollButton = cast(Browser.document.getElementById("roll"), js.html.ButtonElement);
		var diceInput = cast(Browser.document.getElementById("dice"), js.html.InputElement);
		rollButton.onclick = (event) -> {
			var numberOfDice = Std.parseInt(diceInput.value);
			appContent.innerHTML = "";
			var dice = [];
			for (i in 0...numberOfDice) {
				dice[i] = Std.random(6) + 1;
				var newDice = js.Browser.document.createElement("div");
				newDice.id = 'dice-${i + 1}';
				newDice.textContent = 'Dice ${i + 1}: ${dice[i]}';
				appContent.appendChild(newDice);
			}
		}
	}
}
