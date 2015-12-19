require "rails_helper"

describe OfficeWorker do 
  context 'Validations' do 
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :dob }
    it { is_expected.to validate_presence_of :year_of_exp }
  end
end