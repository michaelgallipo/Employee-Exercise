# Represent employee data as a class
class Employee

  attr_accessor :first_name, :last_name, :salary, :active
  @@master_employee_array = []
  # attr_writer :first_name, :last_name, :salary, :active
  # attr_writer :first_name, :last_name, :salary, :active

  def initialize(options_hash)
    if 
      options_hash[:first_name].nil? then
      @first_name = "John"
    else
      @first_name = options_hash[:first_name]
    end
    if 
      options_hash[:last_name].nil? then
      @last_name = "Doe"
    else
      @last_name = options_hash[:last_name]
    end
    if 
      options_hash[:salary].nil? then
      @salary = 25000
    else
      @salary = options_hash[:salary]
    end
    if 
      options_hash[:active].nil? then
      @active = false
    else
      @active = options_hash[:active]
    end
    master_employee_array << [@first_name, @last_name, @salary, @active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
    puts @salary
  end

  def full_name
    if @last_name.end_with? "s" then
      puts "#{first_name} #{last_name}, Esquire"
    else
      puts "#{first_name} #{last_name}"
    end
  end

  def master_employee_array
    @@master_employee_array
  end

end

employee1 = Employee.new({last_name: "Carter", salary: 80000, active: true, first_name: "Majora"})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee3 = Employee.new(active: true)
employee4 = Employee.new(first_name: "Fred", last_name: "Wesley")
employee5 = Employee.new(first_name: "George", last_name: "Wesley")
employee6 = Employee.new(first_name: "Ron", last_name: "Wesley", salary: 120000, active: true)
employee7 = Employee.new(first_name: "Ginnie", last_name: "Wesley")
employee8 = Employee.new(first_name: "Charlie", last_name: "Wesley")
employee9 = Employee.new(first_name: "Percy", last_name: "Wesley")
employee10 = Employee.new(first_name: "Harry", last_name: "Potter", salary: 200000, active: true)
employee11 = Employee.new(first_name: "Hermione", last_name: "Granger", salary: 175000, active: true)
employee12 = Employee.new(first_name: "Luna", last_name: "Lovegood")
employee13 = Employee.new(first_name: "Seamus", last_name: "Finnegan")
employee14 = Employee.new(first_name: "Draco", last_name: "Malfoy")
employee15 = Employee.new(first_name: "Cedric", last_name: "Diggory", active: false)
employee16 = Employee.new(first_name: "Cho", last_name: "Chang")
employee17 = Employee.new(first_name: "Rubeus", last_name: "Hagrid", salary: 100000, active: true)
employee18 = Employee.new(first_name: "Albus", last_name: "Dumbledore", salary: 750000)
employee19 = Employee.new(first_name: "Molly", last_name: "Weasley")
employee20 = Employee.new(first_name: "Sirius", last_name: "Black", active: false)




employee1.print_info
employee2.print_info
employee1.give_annual_raise
puts employee1.first_name
puts employee2.last_name
employee1.active = false
puts employee1.active
employee1.full_name
employee2.full_name
employee3.full_name
employee3.print_info
p employee1.master_employee_array

num_employees = employee1.master_employee_array.length
index = 0

num_employees.times do 
  puts "#{employee1.master_employee_array[index][0]} #{employee1.master_employee_array[index][1]}"
  index = index + 1
end
  

