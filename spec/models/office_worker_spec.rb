require "rails_helper"

describe OfficeWorker do 
  context 'Validations' do 
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :dob }
    it { is_expected.to validate_presence_of :year_of_exp }
    it { is_expected.to validate_numericality_of(:year_of_exp) }
  end
  context 'validate dob greater than or equal 20' do
    let!(:office_worker) {OfficeWorker.new(name: "John", dob: Time.now, year_of_exp: 1)}
    it "must be greater than or equal 20 age" do
      office_worker.validate
      p office_worker.errors.messages
      expect(office_worker.errors.messages).to include(dob: ['must be greater than or equal 20 age'])
    end
  end
end