class CreateStudentInfomations < ActiveRecord::Migration
  def change
    create_table :student_infomations do |t|
      t.timestamps
    end
  end
end
