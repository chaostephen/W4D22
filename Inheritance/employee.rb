require_relative "PolyTreeNode"

class Employee
    attr_reader :name, :salary, :title, :boss
    def initialize(name, salary, title, boss)
        if boss != nil
            boss.add_employee(self)
        end
        @name=name
        @title=title
        @salary=salary
    end
    def bonus(multiplier)
        bonus=self.salary * multiplier
    end
    # def bonuses(multiplier)
    #     total = 0
    #     boss.each do |person|
    #         total+=person.bonus(multiplier)
    #     end
    #     total 
    # end
   
end

class Manager < Employee
    attr_reader :name, :salary, :title, :employees, :boss
    def initialize(name, salary, title, employees, boss=nil)
        @employees=Array.new()
        super(name, salary, title, boss)
        
    end
    def add_employee(emp)
        @employees << emp
    end
    def bonus(multiplier)
        return nil if employees.empty?
        sum = 0
            i = 0
            while i < employees.length
            if employees[i].class == Manager
                sum += employees[i].bonus(1)
                sum += employees[i].salary
            else
                sum += employees[i].salary
            end
            i+=1
        end
        return sum * multiplier
    end

end

ned = Manager.new("Ned", 1000000, "Founder", nil)
darren = Manager.new("Darren", 78000, "TA Manager", ned)
shawna=Employee.new("Shawna",12000,"TA",darren)
david = Employee.new("David",10000,"TA",darren)
ned.employees << darren
 darren.employees
# shawna.add_employee(darren)
# david.add_employee(darren)
ned.class #true
# p david.is_manager? #false
p ned.bonus(5)
p darren.bonus(4)
p david.bonus(3)
p shawna.bonus(3)

#1. to have all the employees match with the bosses
#2. loop through emp array and emp's emp array and get salaries
#3. multiply the salaries by the multiplier
