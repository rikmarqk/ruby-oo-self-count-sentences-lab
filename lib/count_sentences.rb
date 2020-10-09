require 'pry'

class String

  def sentence?
    if self.end_with?(".") then true
      elsif self.end_with? != (".") then false
    end
  end

  def question?
    if self.end_with?("?") then true
      elsif self.end_with? != ("?") then false
    end
  end

  def exclamation?
    if self.end_with?("!") then true
      elsif self.end_with? != ("!") then false
    end
  end

  def count_sentences
    count = 0
    self.split(/(?<=[?.!])/).collect{|string| if string.length>1 then count +=1 end}
    count
  end
end