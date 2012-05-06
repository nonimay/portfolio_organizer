require 'spec_helper'

describe Section do
  describe :associations do
    it { should have_many :competencies }
  end

  describe :mass_assignment do
    it { should allow_mass_assignment_of :number }
    it { should allow_mass_assignment_of :title }
  end

  describe :validations do
    it { should validate_presence_of :title }
    it { should validate_presence_of :number }
    it { should validate_numericality_of :number }
    it { should allow_value(1).for(:number) }
    it { should_not allow_value(0).for(:number) }
    it { should_not allow_value(-1).for(:number) }
  end
end
