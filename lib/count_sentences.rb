require 'pry'

class String

  def sentence?(str)
    if str[str.length-1] == "."
      return true
    else
      return false
    end
  end

  def question?(str)
    if str[str.length-1] == "?"
      return true
    else
      return false
    end

  end

  def exclamation?(str)
    if str[str.length-1] == "!"
      return true
    else
      return false
    end

  end

  def count_sentences

  end
end
