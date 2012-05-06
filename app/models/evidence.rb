class Evidence < ActiveRecord::Base
  belongs_to :evidence_type
  belongs_to :user
  has_many :evidence_competencies
  attr_accessible :date, :title, :evidence_type_id
  validates :date, :title, :evidence_type_id, :user_id, presence: true
end
