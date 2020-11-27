var bone = require('bonescript');
const { time } = require('console');
var leds = ["USR0", "USR1", "USR2", "USR3"];
var state = 0;
leds.forEach(function(leds) { bone.pinMode(leds, bone.OUTPUT)});

function toggleLEDs(chosenLED) {
    bone.digitalWrite(chosenLED, state);
}
setTimeout(toggleLEDs, 250);
function increaseLED()  {
    state =  state ^ 1;
    for (var i = 0; i<leds.length; i++) {
        toggleLEDs(leds[i]);
    }
}
setInterval(increaseLED, 1000);