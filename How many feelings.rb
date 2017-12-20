=begin
You have two arguments: string - a string of random letters(only lowercase) and array - an array of strings(feelings). Your task is to return how many specific feelings are in the array.

For example:

string -> 'yliausoenvjw'
array -> ['anger', 'awe', 'joy', 'love', 'grief']
output -> '3 feelings.' // 'awe', 'joy', 'love'


string -> 'griefgriefgrief'
array -> ['anger', 'awe', 'joy', 'love', 'grief']
output -> '1 feeling.' // 'grief'


string -> 'abcdkasdfvkadf'
array -> ['desire', 'joy', 'shame', 'longing', 'fear']
output -> '0 feelings.'
If the feeling can be formed once - plus one to the answer.

If the feeling can be formed several times from different letters - plus one to the answer.

Eeach letter in string participates in the formation of all feelings. 'angerw' -> 2 feelings: 'anger' and 'awe'.
=end

# my solution
def count_feelings(string, arr)
  count_how_many_feelings = 0
  start_string = string
  flag = 0
  (0..arr.length-1).each do |x|
    (0..arr[x].length-1).each do |y|
      string.include?(arr[x][y]) ? flag += 1 : flag -= 1
        if  string.include?(arr[x][y])
          string = string.sub(arr[x][y],"")
        end
    end
    string = start_string
    flag == arr[x].length ? count_how_many_feelings += 1 : count_how_many_feelings += 0
    flag = 0
  end
  return "#{count_how_many_feelings} feelings." if count_how_many_feelings > 1 || count_how_many_feelings ==0
  return "#{count_how_many_feelings} feeling." if count_how_many_feelings == 1
end

# better solution
def count_feelings(string, arr)
count = arr.select do |feeling|
  feeling.chars.all?{|letter| string.count(letter) >= feeling.count(letter)}
end.count
count == 1 ? "1 feeling." : "#{count} feelings."
end


count_feelings("sapwhsmibhbbgsnolxcklfkyisfxesswsdluapsfgayiieenrwrnpesgmrnfagnewvszsmrsv" , ["anger", "schadenfreude", "joy", "awe", "love", "shyness", "surprise", "hatred", "boredom", "fear", "shame", "bitterness"])