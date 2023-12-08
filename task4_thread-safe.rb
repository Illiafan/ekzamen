require 'thread'

queue = Queue.new

threads = []

5.times do |i|
  threads << Thread.new do
    queue << "Thread #{i} data"
  end
end

threads.each(&:join)

until queue.empty?
  puts queue.pop
end
