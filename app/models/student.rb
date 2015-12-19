class Student < ActiveRecord::Base

  has_many :student_infomations
  has_many :schools, :through => :student_infomations

  validates :name,           presence: true
  validates :dob,            presence: true
  validate :age_check?

  def age_check?
    return if dob.blank?
    if Time.now.year - dob.year < 18
      errors.add(:dob, 'must be greater than or equal 18 age')
    end
  end

end