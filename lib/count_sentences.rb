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
     period_array = self.split(". ")
     question_array = self.split("? ")
     exclamation_array = self.split("! ")
     #binding.pry
     if(period_array.any? == false && question_array.any? == false && exclamation_array.any? == false)
       number_sentences = 0
     else
       number_sentences = period_array.size + question_array.size + exclamation_array.size - 2
     end
     #binding.pry
     return number_sentences
  end
end

"".count_sentences
"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
