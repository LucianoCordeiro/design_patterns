class SmsObserver
  def notify(order:)
    puts "Message sent to #{phone_number}"
    puts "Your order #{order.id} has been updated to #{order.status}"
    puts "\n"
  end

  def phone_number
    "5541997410000"
  end
end
