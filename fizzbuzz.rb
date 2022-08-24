# frozen_string_literal: true

def basic
  (1..100).each do |i|
    if (i % 3).zero? && (i % 5).zero?
      puts 'FizzBuzz'
    elsif (i % 5).zero?
      puts 'Buzz'
    elsif (i % 3).zero?
      puts 'Fizz'
    else
      puts i
    end
  end
end

def advanced(from, to)
  (from..to).each do |i|
    # @type [Array<String>]
    result = []

    result.append('Fizz') if (i % 3).zero?
    result.append('Buzz') if (i % 5).zero?
    result.append('Bang') if (i % 7).zero?

    if (i % 11).zero?
      result.clear
      result.append('Bong')
    end

    if (i % 13).zero?
      index = result.find_index {|x| x.start_with?('B', 'b') } || 0
      result.insert(index, 'Fezz')
    end

    result.reverse! if (i % 17).zero?

    result.push(i) if result.empty?

    puts result.join('')
  end
end

advanced(255200, 255255)