class Student < ActiveRecord::Base

  validates :name,           presence: true
  validates :dob,            presence: true

end