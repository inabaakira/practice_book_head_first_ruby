class Employee

  attr_reader :name

  def name=(name)
    if name == ""
      raise "Name can't be blank!'"
    end
    @name = name
  end

  def initialize(name = "Anonumous")
    self.name = name
  end

  def print_name
    puts "Name: #{name}"
  end

end

class SalariedEmployee < Employee

  attr_reader :salary

  def salary=(salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!'"
    end
    @salary = salary
  end

  def initialize(name = "Anonymous", salary = 0.0)
    super(name)
    self.salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end
end

class HourlyEmployee < Employee

  def self.securty_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end

  attr_reader :hourly_wege, :hours_per_week

  def hourly_wege=(hourly_wege)
    if hourly_wege < 0
      raise "A houry_wege of #{hourly_wege} is't valid!"
    end
    @hourly_wege = hourly_wege
  end

  def hours_per_week=(hours_per_week)
    if hours_per_week < 0
      raise "A hourly_per_week of #{hours_per_week} is't valid!"
    end
    @hours_per_week = hours_per_week
  end

  def initialize(name = "Anonymous", hourly_wege = 0.0, hours_per_week = 0.0)
    super(name)
    self.hourly_wege = hourly_wege
    self.hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_wege * hours_per_week * 2
    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay This Period: $#{formatted_pay}"
  end

end

jane = SalariedEmployee.new("Jane Doe", 50000)
jane.print_pay_stub

angela = HourlyEmployee.securty_guard("Angela Matthews")
ivan = HourlyEmployee.cashier("Ivan Stokes")

angela.print_pay_stub
ivan.print_pay_stub
