require 'date'
puts "В якому році ви народилися?"
year = gets.chomp.to_i
puts "В якому місяці ви народилися? "
month = gets.chomp.to_i
puts "В якого числа ви народилися? "
data = gets.chomp.to_i


date = Date.new(year,month,data).yday

puts date




























