def say_hello(name)
  "Hello, #{name}, nice to meet you"
end

def show_count_characters(word)
  "#{word} has #{word.length} characters"
end
def author_said(author, quote)
  "#{author} said \"#{quote}\""
end

def show_math(n1, n2)
  return "Invalid input" if check_number(n1) == :not_a_number || check_number(n2) == :not_a_number
  n1 = Integer(n1)
  n2 = Integer(n2)
  "#{n1} + #{n2} = #{n1+n2}\n" +
  "#{n1} - #{n2} = #{n1-n2}\n" +
  "#{n1} * #{n2} = #{n1*n2}\n" +
  "#{n1} / #{n2} = #{n1/n2}"
end
