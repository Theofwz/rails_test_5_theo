require "rails_helper"

describe Student do 
  context 'Validations' do 
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :dob }
  end
  context 'validate dob greater than or equal 18' do
    let!(:student) {Student.new(name: "John", dob: Time.now)}
    it "must be greater than or equal 18 age" do
      student.validate
      expect(student.errors.messages).to include(dob: ['must be greater than or equal 18 age'])
    end
  end
end