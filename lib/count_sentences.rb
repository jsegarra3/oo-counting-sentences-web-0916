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

  def any_punc_ending
    self.question? || self.exclamation? || self.sentence?
  end

  def count_sentences
    self.split.each_with_object([]) {|piece,obj| obj << piece if piece.any_punc_ending}.length
  end
end

# test="Three of these. Sentences are?? The Suck!"
# binding.pry
# puts test.count_sentences
