class SubwayStrategy
  def initialize(distance:)
    @distance = distance
  end

  def estimated_time
    @distance * 2
  end

  def estimated_cost
    @distance * 2
  end
end
