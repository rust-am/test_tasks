def celsius_to_farenheit(cel)
  (cel * 9/5.0) + 32
end

def is_number?(str)
  true if Float(str) rescue false
end

celsius = nil

puts "Celsius to fahrenheit converter"

until is_number?(celsius) && celsius.to_f > -273.15
  puts "===================="
  puts "Please enter degrees in celsius:"
  celsius = STDIN.gets.chomp()

  if !is_number?(celsius) 
    puts "Input should be numeric!"
  elsif celsius.to_f <= -273.15
    puts "Input should be higher than -273.15°C!"
  end
end

puts "===================="
puts "#{celsius.to_f.round(2)}°C = #{celsius_to_farenheit(celsius.to_f).round(2)}°F"
