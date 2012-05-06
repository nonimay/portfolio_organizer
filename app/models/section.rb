class Section < ActiveRecord::Base
  attr_accessible :number, :title
  has_many :competencies
  validates :number, :title, presence: true
  validates :number, numericality: { greater_than: 0 }
end
