let precision = 10e-5

let rec find last terms =
  
  let newValue =
    [0..terms]
    |> List.map (fun i ->
        if i % 2 = 0 then
          4. / (float(i) * 2. + 1.)
        else
          -4. / (float(i) * 2. + 1.)
      )
    |> List.sum
  
  if abs(newValue - last) < precision then
    newValue, terms
  else
    find newValue (terms + 1)

let found, terms = find 0. 1

printfn $"""%f{found}
converged after %i{terms} terms of infinite series"""