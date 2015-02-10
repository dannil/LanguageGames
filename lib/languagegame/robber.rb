class Robber

  @@lower_consonants = "bcdfghjklmnpqrstvwxz"
  @@upper_consonants = "BCDFGHJKLMNPQRSTVWXZ"
  
  def self.to_robber(phrase)
    result = String.new
    phrase.each_char do |s|
      if @@lower_consonants.include? s
        s = s + "o" + s
      end
      if @@upper_consonants.include? s
        s = s + "O" + s
      end
      result.concat(s)
    end
    return result
  end
  
  def self.from_robber(phrase)
    result = String.new
    @@lower_consonants.each_char do |s|
      phrase.gsub! s + "o" + s, s
    end
    @@upper_consonants.each_char do |s|
      phrase.gsub! s + "O" + s, s
    end
    return phrase
  end
  
end