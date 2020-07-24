require 'pry'

class String

  def sentence?
   self.end_with?(".")
  end

  def question?
   self.end_with?("?")
  end

  def exclamation?
   self.end_with?("!")
  end

  def count_sentences
  answer = self.split /(?!,)\p{Punct}{1,}/
  answer.size
  end


end
