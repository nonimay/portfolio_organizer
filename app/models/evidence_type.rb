class EvidenceType < ActiveRecord::Base
  has_many :evidences
  attr_accessible :name
  validates :name, presence: true
end
