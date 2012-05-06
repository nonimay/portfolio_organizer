class EvidenceCompetency < ActiveRecord::Base
  belongs_to :evidence
  belongs_to :competency
  # attr_accessible :title, :body
end
