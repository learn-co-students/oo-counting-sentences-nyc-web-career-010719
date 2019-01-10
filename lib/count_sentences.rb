require 'pry'

class String

  def sentence?
    # Need a method to detect with end_with?
    # if a string ends with a period.
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
    array = self.split(/[\.!?] /)
    array.length
  end
end
