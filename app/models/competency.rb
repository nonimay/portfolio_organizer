class Competency < ActiveRecord::Base
  belongs_to :section
  has_many :evidence_competencies
  attr_accessible :number, :title, :section_id

  validates :number, :title, :section_id, presence: true
end
