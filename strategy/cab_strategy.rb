class CabStrategy
  def initialize(distance:)
    @distance = distance
  end

  def estimated_time
    @distance * 3
  end

  def estimated_cost
    @distance * 4
  end
end
