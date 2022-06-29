const double precision = 10e-5;

var currentValue = 1.0;
var lastValue = 2.0;

var terms = 0;

while (Math.Abs(currentValue - lastValue) >= precision) {

  lastValue = currentValue;
  currentValue = 0;
  terms++;

  for (var i = 0; i < terms; i++) {
    var term = 4.0 / (i * 2 + 1);

    if (i % 2 != 0)
      term *= -1;

    currentValue += term;
  }
}

Console.WriteLine($@"{currentValue}
converged after {terms} terms of infinite series");