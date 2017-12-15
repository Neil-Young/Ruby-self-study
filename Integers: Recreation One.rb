require 'prime'
def list_squared(m, n)
  #Neil Young
  num_array = Array.new()
  sum_for_num_array = 0
  (m..n).each do |z|
    (1..z).each do |x|
      if z % x == 0
        sum_for_num_array += x**2
      end
    end
    if Math.sqrt(sum_for_num_array) % 1 == 0
      num_array.push ([z, sum_for_num_array])
      sum_for_num_array = 0
    else
      sum_for_num_array = 0
    end
  end
  puts num_array
end


list_squared(10,2500)