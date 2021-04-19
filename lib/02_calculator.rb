def add(num_1, num_2)
  return num_1 + num_2
end

def subtract(num_1, num_2)
  return num_1 - num_2
end

def sum(arr)
  out = 0
  arr.each do |i|
    out += i
  end
  return out
end

def multiply(num_1, num_2)
  return num_1 * num_2
end

def pow(num_1, num_2)
  return num_1 ** num_2
end

def factorial(num)
  (1..num).inject(:*) || 1
end 
