require 'date'

class Lesson1
  def sum(val = 0)
    val.to_s.split('').map(&:to_i) .inject { |a, e| a + e }
  end

  def age(birthday)
    if birthday.nil?
      'Invalid Date Format'
    else
      date_now = Date.parse(Time.now.to_s)
      day = (date_now - Date.parse(birthday)).to_i
      str = "I live #{day / 365} years or #{day}, days or #{day * 24} hours,
       or #{day * 24 * 60} minutes, or #{day * 24 * 60 * 60} seconds"
      # puts str.include?('26')
      str
    end
  end

  def name
    puts "What's your name? "
    your_name = gets
    your_second_name = gets
    your_father_name = gets
    name_out = "Hello #{your_name} #{your_second_name} #{your_father_name}!"
    name_out
  end
end
