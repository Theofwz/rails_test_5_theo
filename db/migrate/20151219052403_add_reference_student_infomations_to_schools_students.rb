class AddReferenceStudentInfomationsToSchoolsStudents < ActiveRecord::Migration
  def change
    add_reference :student_infomations, :school , index: true
    add_reference :student_infomations, :student , index: true
  end
end
