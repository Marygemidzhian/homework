puts "Як тебе звати ?"
name = gets.chomp
puts "Який твій зріст ? "
height = gets.chomp
if height.to_i > 110
puts " #{name}, ваша вага #{height.to_i - 110.to_i }"
elsif height.to_i <= 110
  puts "Ваша вага оптимальна"
end