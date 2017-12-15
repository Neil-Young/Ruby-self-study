require'prime'
def gap(g, m, n)
  prime_array = Array.new()
  prime_couple = Array.new()
  (m..n).each do |x|
    if Prime.prime?(x)
      prime_array.push(x)
    end
  end
  (0..prime_array.size-2).each do |i|
    if prime_array[i+1] - prime_array[i] == g
      prime_couple.push(prime_array[i].to_i).push(prime_array[i+1].to_i)
      break
    end
  end
  if prime_couple.size == 0
    puts "nil"
  end
  puts prime_couple
end


gap(4,300,4000)