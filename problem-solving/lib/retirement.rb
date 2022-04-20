require 'date'

class Retirement
  def calculate(num1, num2)
    # Why doesn't it work to call a method to check nums and return a string???? 
    # self.check_nums(num1, num2)
    return "Error. Age cannot be negative." if num1 < 0 || num2 < 0
    diff = num2 - num1
    return "Error. Retirment age cannot be less than current age." if diff < 0
    year = DateTime.now.year
    "You have #{diff} years left until you can retire. It is #{year}, so you can retire in #{year + diff}."
  end

  def check_nums(num1, num2)
    return "Error. Age cannot be negative." if num1 < 0 || num2 < 0
  end
end
