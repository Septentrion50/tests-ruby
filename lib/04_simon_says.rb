def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, num=2)
  out = []
  num.times do
    out << string
  end
  return out.join(" ")
end

def start_of_word(string, num=1)
  return string[0..num-1]
end

def first_word(string)
  string.split[0]
end

def titleize(string)
  dont_cap = ["and", "or", "the", "a"]
  to_cap = string.split
  capped = []
  capped << to_cap[0].capitalize
  to_cap[1..-1].each do |i|
    if dont_cap.include?(i)
      capped << i
    else
      capped << i.capitalize
    end
  end
  return capped.join(" ")
end
