class Student < ActiveRecord::Base

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