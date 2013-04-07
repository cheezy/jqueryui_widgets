class String
  def convert_to_number
    return self.to_i if self.length > 0
    self
  end
end