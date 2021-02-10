require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end

  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
      if self.end_with?("!")
        true
      else
        false
      end
  end

  def count_sentences
   new_n = self.split
   counter = 0
   new_n.collect do |word|
    if word.end_with?(".")
      counter+=1
    elsif word.end_with?("?")
      counter+=1
    elsif word.end_with?("!")
      counter+=1
    end
  end
  counter
end

end