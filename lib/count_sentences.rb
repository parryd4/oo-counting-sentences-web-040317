require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self[-1] == "!"
  end

  def punc
    [".", "!", "?"]
  end

  def count_sentences
    count = 0
    count_array = self.split(' ')
    count_array.each do |word|
      punc.each {|p| count += 1 if word[-1] == p}
    end
    count
  end

end
