School.destroy_all
Student.destroy_all
OfficeWorker.destroy_all

School.create(name: "Futureworkz", address: "184/17, Dien Bien Phu", school_type: :university)

Student.create(name: "John", dob: "1-1-1992")

OfficeWorker.create(name: "Alex", dob: "1-1-1993", year_of_exp: 2)