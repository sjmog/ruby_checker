class SystemConfigured
  def self.call
    attempt_ruby
  end

  private

  def self.attempt_ruby
    begin
      # All the tasks
      2 + 4
      "hi".concat("ya")
      Object.inspect
    rescue
      return false
    end
    return true
  end
end