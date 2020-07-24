require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
  end
end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
  end
end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
  end
end

#used stack-overflow.
#self calls upon the string that is passed through
#scan is like split and will split the string.
#regex .. ^ is negation. Looking for characters that are NOT in the list
#+ allows you to return infinite matches. otherwise it would not let you split several.
#scan the string, capture all the characters that are NOT !.? until you find the characters that are .. then collect them, remove them & count
  def count_sentences
    self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
  end
end

# other though processes. still confused why i can't use scan.
#@if self.include?(".")
#val_array = self.split("[!.?]")
# val_array = self.split(["/,|?/"])
# val_array.count
#puts val_array.reject{|element| element.empty?}
#return values.count
#binding.pry
#if there are no sentences . return zero
#else return sentence count
