/**
 * Make a function which calculates the angle between the hands of a clock
 * The function takes two arguments, hours, and minutes. These will be integers between 1 - 12 and 0 - 59 respectively.
 * The hour hand is assumed to move continuously (not incrementally).
 * So that means the the position of the hour hand is affected by the minute hand.
 * The result of the function should be the angle between the hands. The result of the function should always be >= 0 and <= 180.
 * Good luck
 */

// Stokes - There are several ways to go about this.  My method of choice is to convert the hour and minute hands to degrees, then calculate the angle accordingly.
function calculateClockAngle(hours, minutes) {
  let minuteAngle = (minutes / 60) * 360;
  let hourAngle = (hours / 12) * 360 + minutes / 2; // Stokes - That last part could be written (minutes / 60) * 30 but it's been simplified to minutes / 2.
  let angle = Math.abs(hourAngle - minuteAngle);
  angle = angle > 180 ? Math.abs(angle - 360) : angle;
  return angle;
}

//Using these examples should help
console.log(calculateClockAngle(1, 15));
console.log(calculateClockAngle(3, 37));
console.log(calculateClockAngle(12, 0));
console.log(calculateClockAngle(8, 8));
