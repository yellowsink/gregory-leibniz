const precision = 10e-5;

let currentValue = 1;
let lastValue = 0;

let terms = 0;

while (Math.abs(currentValue - lastValue) >= precision) {
  lastValue = currentValue;

  currentValue = 0;
  terms++;

  for (let i = 0; i < terms; i++) {
    let term = 4 / (1 + 2 * i);

    if (i % 2 !== 0) term *= -1;

    currentValue += term;
  }
}

console.log(currentValue);
console.log(`converged after ${terms} terms of infinite series`);
