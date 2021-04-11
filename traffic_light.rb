available_lights = %w{ red green yellow }

puts "Traffic light sumulator"
puts "===================="

light = 'red'

while available_lights.include?(light) || light != 'exit'
  puts "Please enter 'red' 'green' or 'yellow'"
  puts "For exit enter 'exit':"

  light = STDIN.gets.chomp()

  puts "===================="

  case light
    when "green"
      puts "go!\n\n"
    when "yellow"
      puts "wait!\n\n"
    when "red" 
      puts "stop!\n\n" 
  end
end
