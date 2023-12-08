def event_handler(message, callback)
  puts "Received message: #{message}"
  callback.call(message.upcase)
end

callback_function = lambda { |result| puts "Callback: #{result}" }

event_handler("Hello, world!", callback_function)
