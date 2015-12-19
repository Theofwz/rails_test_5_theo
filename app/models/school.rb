class School < ActiveRecord::Base

  validates :name,               presence: true
  validates :address,            presence: true
  validates :school_type,        presence: true

end