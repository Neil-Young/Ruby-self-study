=begin
Your job is to write a function which increments a string, to create a new string. If the string already ends with a number, the number should be incremented by 1. If the string does not end with a number the number 1 should be appended to the new string.
Examples:
foo -> foo1
foobar23 -> foobar24
foo0042 -> foo0043
foo9 -> foo10
foo099 -> foo100
Attention: If the number has leading zeros the amount of digits should be considered.
=end

#my solution
def increment_string(input)
  last_num_in_str = input.scan( /\d+$/ ).last
  ("0".."9").include?(input[input.length-1])? input.gsub("#{last_num_in_str}","") << (last_num_in_str.to_i + 1).to_s.rjust(last_num_in_str.length, "0") :  input << "1"
end

#better solution
def increment_string(input)
  input.sub(/\d*$/) { |n| n.empty? ? 1 : n.succ }
end

increment_string("0009999")