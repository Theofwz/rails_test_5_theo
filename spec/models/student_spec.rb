require "rails_helper"

describe Student do 
  context 'Validations' do 
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :dob }
  end
end