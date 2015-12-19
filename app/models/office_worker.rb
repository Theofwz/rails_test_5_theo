class OfficeWorker < ActiveRecord::Base

  validates :name,           presence: true
  validates :dob,            presence: true
  validates :year_of_exp,    presence: true

end