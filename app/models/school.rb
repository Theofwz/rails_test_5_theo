class School < ActiveRecord::Base

  extend Enumerize
  has_many :student_infomations
  has_many :students, :through => :student_infomations
  enumerize :school_type, in: [:university, :hight_school, :secondary_school, :primary_school]
  validates :name,               presence: true
  validates :address,            presence: true
  validates :school_type,        presence: true

end