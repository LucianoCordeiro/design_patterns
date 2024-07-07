Dir[File.join(__dir__, '*.rb')].each { |file| require file }

class GoDowntown
  attr_writer :strategy
  def initialize(strategy:)
    @strategy = strategy
  end

  def ride_info
    puts "Estimated cost: $#{@strategy.estimated_cost}"
    puts "Estimated time: #{@strategy.estimated_time} minutes"
  end
end
