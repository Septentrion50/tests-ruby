def translate(string)
  out = []
  sentence = string.split
  vow = /[aeiou]/i
  cons = /[bcdfghjklmnpqrstvwxyz]/i
  punc = /[\.!:;\?,\()]/
  sentence.each do |i|
    word = i.split(//)  # Il fait bien le split
    if word[0].match?(vow)  # Regex fonctionnel
      if word[-1].match?(punc)
        p = word.pop
        word << "ay"
        word << p
        out << word.join("")
      else
        word << "ay"
        out << word.join("")
      end
    else
      if word[-1].match?(punc)
        p = word.pop
      else
        p = ""
      end
      if word[0] == word[0].upcase
        word[0] = word[0].downcase
        while word[0].match?(cons)
          if word[0] == "q" && word[1] == "u"
            word.rotate!(2)
          else
            word.rotate!(1)
          end
        end
        word << "ay"
        word << p
        out << word.join("").capitalize
      else
        while word[0].match?(cons)
          if word[0] == "q" && word[1] == "u"
            word.rotate!(2)
          else
            word.rotate!(1)
          end
        end
        word << "ay"
        word << p
        out << word.join("")
      end
    end
  end
  return out.join(" ")
end
