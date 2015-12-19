require "rails_helper"

describe School do 
  context 'Validations' do 
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :address }
    it { is_expected.to validate_presence_of :school_type }
  end
  context 'Association' do
    it { is_expected.to have_many (:student_infomations) }
    it { is_expected.to have_many (:students) }
  end
end

