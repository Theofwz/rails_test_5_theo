class OfficeWorker < ActiveRecord::Base

  validates :name,           presence: true
  validates :dob,            presence: true
  validates :year_of_exp,    presence: true, numericality: { greater_than_or_equal_to: 0}
  validate :age_check?

  def age_check?
    return if dob.blank?
    if Time.now.year - dob.year < 20
      errors.add(:dob, 'must be greater than or equal 20 age')
    end
  end

end