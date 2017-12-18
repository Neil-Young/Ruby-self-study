=begin
Write a program to determine if a string contains all unique characters. Return true if it does and false otherwise.
The string may contain any of the 128 ASCII characters.
=end




def unique_chars?(str)
  uni_array = Array.new()
  str.each_char{|x| uni_array.push(x)}
  uni_array.uniq.length == str.length ? true : false
end

unique_chars?("  nAa")