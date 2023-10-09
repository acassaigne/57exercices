def return_on_investment(rate)
  72 / rate
end

def check_number(input)
  could_be_a_number = Integer(input) rescue nil
  if could_be_a_number
    return :a_number
  end
  :not_a_number
end

def convert_if_needed(n)
  if check_number(n) == :a_number
    return Integer(n)
  end
  n
end

def sum_of(a)
  result = 0
  for n in a
    result += n
  end
  result
end

class RequestNumbers
  def initialize(input_source)
    @input_source = input_source
  end

  def numbers(times)
    result = []
    times.times do
      a_number = @input_source.input
      result.append(Integer(a_number)) if check_number(a_number) == :a_number
    end
    result
  end
end
