require "rails_helper"

describe StudentInfomation do 
  
  context 'Association' do
    it { is_expected.to belong_to (:shool) }
    it { is_expected.to belong_to (:student) }
  end

end