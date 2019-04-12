def shift(string, number)
  shifted_ascii_arr = []
  input = string.split('')
  output = ''
  
  input.each do |letter|
    letter.ord == 32 ? shifted_ascii = 32 : shifted_ascii = letter.ord - number    
    shifted_ascii_arr.push(shifted_ascii)
  end

  shifted_ascii_arr.each { |number| output += number.chr }  
  print(output)
end
