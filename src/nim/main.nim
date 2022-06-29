import strutils

const precision = 10e-5

var currentValue = 1.0
var lastValue = 0.0

var terms = 0;

while abs(currentValue - lastValue) >= precision:
  lastValue = currentValue

  currentValue = 0
  terms += 1

  for i in countup(0, terms):
    var term = 4.0 / (1.0 + (2.0 * float(i)))

    if i mod 2 != 0: term *= -1.0

    currentValue += term

echo currentValue
echo "converged after " & intToStr(terms) & " terms of infinite series"