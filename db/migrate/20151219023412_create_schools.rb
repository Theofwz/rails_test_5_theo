class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name, presence: true
      t.string :address, presence: true
      t.string :school_type, presence: true
    end
  end
end
