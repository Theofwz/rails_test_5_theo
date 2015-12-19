class AddTimestampsToSchools < ActiveRecord::Migration
  def change
    change_table :schools do |t|
      t.timestamps
    end
  end
end
