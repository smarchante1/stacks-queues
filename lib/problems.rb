require_relative './Stack.rb'
require_relative './Queue.rb'

def balanced(string)
  stack = Stack.new
  list = string.split('')
  list.each do |character|
    if ['(', '[', '{'].include?(character)
      stack.push(character)
    else
      top_character = stack.pop
      if character == ')'
        return false if top_character != '('
      elsif character == '}'
        return false if top_character != '{'
      elsif character == ']'
        return false if top_character != '['
      end
    end
  end

  return stack.empty?
end

def is_operator(character)
  return ["+", "-", "*", "/"].include? character
end

def do_math(num1, num2, operator)
  case operator
  when "+"
    return num1 + num2
  when "-"
    return num1 - num2
  when "*"
    return num1 * num2
  when "/"
    return num1 / num2
  else
    raise ArgumentError, "Wrong operator"
  end
end

def evaluate_postfix(postfix_expression)
  stack = Stack.new

  list = postfix_expression.split('')

  index = 2
  stack.push(list[0].to_i)
  stack.push(list[1].to_i)

  while index < list.length
    if is_operator(list[index])
      num2 = stack.pop
      num1 = stack.pop
      answer = do_math(num1, num2, list[index])
      stack.push(answer)
    else
      stack.push(list[index].to_i)
    end

    index += 1
  end
    return stack.pop
end
