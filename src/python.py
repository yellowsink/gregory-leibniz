precision = 10e-5

currentvalue = -1
lastvalue = -2 # dummy values

terms = 0
while abs(currentvalue - lastvalue) >= precision:
  lastvalue = currentvalue

  currentvalue = 0
  terms += 1

  for i in range(terms):
    term = 4 / (1 + (2 * i))

    if i % 2 != 0:
      term *= -1
    
    currentvalue += term

print(currentvalue)
print("converged after", terms, "terms of infinite series")