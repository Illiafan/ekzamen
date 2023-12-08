# Інтерфейс, який має бути адаптований
class Target
  def request
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Клас, який ми хочемо адаптувати
class Adaptee
  def specific_request
    puts "Adaptee's specific request"
  end
end

# Адаптер, який робить Adaptee сумісним з Target
class Adapter < Target
  def initialize(adaptee)
    @adaptee = adaptee
  end

  def request
    @adaptee.specific_request
  end
end

# Використання
adaptee = Adaptee.new
adapter = Adapter.new(adaptee)
adapter.request
