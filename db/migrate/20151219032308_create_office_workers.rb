class CreateOfficeWorkers < ActiveRecord::Migration
  def change
    create_table :office_workers do |t|
      t.string :name
      t.date :dob
      t.integer :year_of_exp
      t.timestamps
    end
  end
end
