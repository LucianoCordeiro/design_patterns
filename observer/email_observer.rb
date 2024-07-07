class EmailObserver
  def notify(order:)
    puts "Message sent to #{email}"
    puts "Your order #{order.id} has been updated to #{order.status}"
    puts "\n"
  end


  def email
    "luciano@cesar.com.br"
  end

end
