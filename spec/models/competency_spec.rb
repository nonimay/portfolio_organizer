require 'spec_helper'

describe Competency do
  describe :associations do
    it { should belong_to :section }
    it { should have_many :evidence_competencies }
  end

  describe :validations do
    it { should validate_presence_of :section_id }
    it { should validate_presence_of :title }
    it { should validate_presence_of :number }
  end

  describe :mass_assignment do
    it { should allow_mass_assignment_of :section_id }
    it { should allow_mass_assignment_of :title }
    it { should allow_mass_assignment_of :number }
  end
end
