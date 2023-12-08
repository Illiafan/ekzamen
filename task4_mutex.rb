require 'thread'

counter = 0
mutex = Mutex.new

threads = []

5.times do
  threads << Thread.new do
    mutex.synchronize do
      counter += 1
    end
  end
end

threads.each(&:join)

puts "Counter: #{counter}"
