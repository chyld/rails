class StackTest
  def main(value)
    fibonacci(value)
  end

  def fibonacci(value)
    if value > 2
      fibonacci(value - 1) + fibonacci(value - 2)
    else
      1
    end
  end

  def factorial(value)
    if value > 1
      value * factorial(value - 1)
    else
      1
    end
  end

  def x(value)
    if value != 1
      x(value - 1)
    end
    puts value
  end
end
