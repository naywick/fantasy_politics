def nb_year(p0, percent, aug, p)
    # your code
  pop = p0
  # percent = percent / 100
  counter = 0
  while pop < p
    puts pop
    counter += 1
    pop += pop * percent / 100
    puts pop
    pop += aug
    puts pop
    break
  end
  return counter
end

puts nb_year(1500, 5, 100, 5000)
