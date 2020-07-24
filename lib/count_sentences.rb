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
    split_string = self.split(/[!.]/)
    split_string.length
  end

end

# test_string = String.new("This is a string! It has three sentences. Right?")
# puts test_string
# split_string = test_string.split(/[!.]/)
# puts split_string
# puts split_string.class
# puts split_string.length



# count_sentences("This is a string! It has three sentences. Right?")

# string = "This is a string! It has three sentences. Right?"
# split_sentence_array = string.split(/[!.]/)
# puts
