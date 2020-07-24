require 'pry'

class String

  def sentence?
    self.end_with?(".")? true : false
  end

  def question?
    self.end_with?("?")? true : false
  end

  def exclamation?
    self.end_with?("!")? true : false
  end

  def count_sentences
    container = self.split(/\.|\?|\!/)
    container.delete_if {|sentence| sentence.length == 0}
    container.length
  end
end
