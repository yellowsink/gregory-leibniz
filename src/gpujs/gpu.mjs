// lmao node-gyp fail moment
// deno doesnt support gpu properly but oh well
//import { GPU } from "gpu.js";
import gpujs from "https://cdn.esm.sh/gpu.js@2.15.2/dist/gpu-browser";

const gpu = new gpujs.GPU();

const kern = gpu.createKernel(function() {
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

  return [currentValue, terms];
}).setOutput([1]);

console.log(kern());