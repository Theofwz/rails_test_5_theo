School.destroy_all
Student.destroy_all
OfficeWorker.destroy_all
StudentInfomation.destroy_all

futureworkz =  School.create(name: "Futureworkz", address: "184/17, Dien Bien Phu", school_type: :university)
fwz = School.create(name: "FWZ", address: "184/17, Dien Bien Phu", school_type: :primary_school)

futureworkz.students.create(name: "John", dob: "1-1-1992")
futureworkz.students.create(name: "Smith", dob: "1-3-1992")
fwz.students.create(name: "Oliver", dob: "1-2-1992")

OfficeWorker.create(name: "Alex", dob: "1-1-1993", year_of_exp: 2)