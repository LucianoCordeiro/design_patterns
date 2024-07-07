Dir[File.join(__dir__, '*.rb')].each { |file| require file }

class UpdateOrderStatus
  def initialize(order:, new_status:, observers:)
    @order = order
    @new_status = new_status
    @observers = observers
  end

  def perform
    update_order_status
    notify_observer
  end

  def update_order_status
    @order.status = @new_status
  end

  def notify_observer
    @observers.each do |observer|
      observer.notify(order: @order)
    end
  end
end
