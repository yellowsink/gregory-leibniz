precision = 10e-5

currentvalue = 1.0 # dummy values
lastvalue = 2.0 # dummy values

terms = 0
while (currentvalue - lastvalue).abs >= precision do
  lastvalue = currentvalue

  currentvalue = 0.0
  terms += 1

  terms.times do |i|
    term = 4.0 / (1 + (2 * i))

    if i % 2 != 0 then
      term *= -1
    end
    
    currentvalue += term
  end
end

puts currentvalue
puts "converged after " + terms.to_s + " terms of infinite series"