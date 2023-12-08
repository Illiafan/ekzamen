class Workable
  def work
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class Eatable
  def eat
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class Worker < Workable
  def work
    # реалізація роботи
  end
end

class Manager
  def manage(worker)
    worker.work
  end
end
