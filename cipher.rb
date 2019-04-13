def cipherize(operation, string, number)
  output = ""
  string.split("").each do |letter|
    if letter.ord == 32
      output += 32.chr
    elsif letter.ord + number > 122
      output += (letter.ord + number - 26).chr
    elsif letter.ord + number < 97
      output += (letter.ord + number + 27).chr
    else
      output += (letter.ord + number).chr
    end  
  end
  print(output)
end

puts "Would you like to encrypt or decrypt a message? "
operation = gets.chomp
puts "What is your message?"
string = gets.chomp
puts "How would you like to shift your message? "
number = gets.chomp.to_i

cipherize(operation, string, number)