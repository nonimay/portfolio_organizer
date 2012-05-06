require 'spec_helper'

describe EvidenceCompetency do
  describe :associations do
    it { should belong_to :evidence }
    it { should belong_to :competency }
  end
end
