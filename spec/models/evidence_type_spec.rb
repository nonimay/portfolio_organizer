require 'spec_helper'

describe EvidenceType do
  describe :associations do
    it { should have_many :evidences }
  end

  describe :validations do
    it { should validate_presence_of :name }
  end

  describe :mass_assignment do
    it { should allow_mass_assignment_of :name }
  end
end
