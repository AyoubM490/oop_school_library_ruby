class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} has not implement method '#{__method__}'"
  end
end