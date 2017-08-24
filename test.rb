require_relative 'app'
require 'byebug'

# robyns = Student.where('first_name = ?', 'Robyn')
# p robyns.first[:last_name] == "Goodwin"

# cohort = Cohort.find(1)
# cohort[:name] = 'Best Cohort Ever'
# cohort.save

# Cohort.find(1)[:name] == 'Best Cohort Ever'

# Start of part 1
# cohort1 = Cohort.new(name: "NEXT")
# cohort1.save
# p Cohort.all.last[:name] == "NEXT"

# cohort2 = Cohort.create(name: "BANG")
# p Cohort.all.last[:name] == "BANG"

# student1 = Student.new(cohort_id: 10, first_name: "John", last_name: "Doe", email: "john@example.com", gender: "m", birthdate: "1980-08-08")
# student1.save
# p Student.all.last[:first_name] == "John"

# student2 = Student.create(cohort_id: 11, first_name: "Jane", last_name: "Doe", email: "jane@example.com", gender: "f", birthdate: "1980-08-08")
# p Student.all.last[:email] == "jane@example.com"


# p Student.where('gender = ?', 'f').last[:last_name] == "Doe"

# p Cohort.all.count
# p Student.all.count

# cohort_two = Cohort.all.last
# cohort_two[:name] = "OHM"
# cohort_two.save
# p Cohort.all.last[:name] == "OHM"
# End of part 1

# delete and destroy method not available
# Cohort.all.last.delete
# p Cohort.all.count

# Cohort.all.last.destroy
# p Cohort.all.count

# Student.all.last(2).destroy_all
# p Student.all.count


# #all
# p Student.all.count
# p Cohort.all.count

# #create
# cohort2 = Cohort.create(name: "BANG")
# p Cohort.all.last[:name] == "BANG"
# student2 = Student.create(cohort_id: 11, first_name: "Jane", last_name: "Doe", email: "jane@example.com", gender: "f", birthdate: "1980-08-08")
# p Student.all.last[:email] == "jane@example.com"

