threads = []

5.times do |i|
  threads << Thread.new do
    puts "Thread #{i} started"
    sleep(rand(3))  # Імітація роботи в потоці
    puts "Thread #{i} finished"
  end
end

threads.each(&:join)
puts "All threads finished"
