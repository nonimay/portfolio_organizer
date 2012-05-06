require 'spec_helper'

describe Evidence do
  describe :associations do
    it { should belong_to :evidence_type }
    it { should belong_to :user }
    it { should have_many :evidence_competencies }
  end

  describe :valdiations do
    it { should validate_presence_of :date }
    it { should validate_presence_of :evidence_type_id }
    it { should validate_presence_of :user_id }
    it { should validate_presence_of :title }
  end

  describe :mass_assignment do
    it { should allow_mass_assignment_of :date }
    it { should allow_mass_assignment_of :evidence_type_id }
    it { should_not allow_mass_assignment_of :user_id }
    it { should allow_mass_assignment_of :title }
  end
end
