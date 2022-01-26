require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    s_count = self.split(/[!?.]/)
    remove_empty_space = s_count.reject! {|s| s.empty?}
    binding.pry
    s_count.count
  end
end