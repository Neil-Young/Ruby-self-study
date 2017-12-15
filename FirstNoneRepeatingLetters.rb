=begin
def  first_non_repeating_letter(s)
  non_repeating_flag = 0
  return "nil" if s.length == 0 || s == nil
  return s if s.length ==  1
  (0..s.length).each do |x|
    if s.downcase.count(s[x].to_s.downcase) == 1
      puts s[x]
      break
    end
  end
  puts "" if non_repeating_flag == 0
end
=end

def  first_non_repeating_letter(s)
  s.each_char do |ch|
    puts ch if s.downcase.count(ch.downcase) < 2
  end
  puts "nil"
end

first_non_repeating_letter('a,aaADDBaaab')
