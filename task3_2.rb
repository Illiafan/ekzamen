class Worker
  def work
    # реалізація роботи
  end

  def eat
    # реалізація прийому їжі
  end
end

class Manager
  def manage(worker)
    worker.work
    worker.eat
  end
end
