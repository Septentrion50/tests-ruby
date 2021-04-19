def who_is_bigger(a, b, c)
  out = [a, b, c]
  out.each do |i|
    if i.nil?
      return "nil detected"
    end
  end
  if out.max == a
    return "a is bigger"
  elsif out.max == b
    return "b is bigger"
  elsif out.max == c
    return "c is bigger"
  end
end

def reverse_upcase_noLTA(string)
  string.reverse!.upcase.gsub!(/[LTA]/, "")
end

def array_42(arr)
  arr.include?(42)
end

def magic_array(arr)
  arr.flatten.sort.map{|x| x * 2}.reject{|x| x % 3 == 0 }.uniq.sort
end
