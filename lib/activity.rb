class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = {}
  end

  def amount(money)
    @participants = {@name => money}
  end

end
