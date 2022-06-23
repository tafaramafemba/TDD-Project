class Solver
  def factorial(number)
    return 'invalid number' if number.negative?
    return 1 if number.zero?

    sum = 0
    num_array = *(1..number)
    num_array.each { |number| sum += number }
    sum
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'FizzBuzz'
    elsif (num % 3).zero?
      'Fizz'
    elsif (num % 5).zero?
      'Buzz'
    else
      num.to_s
    end

  end
end
