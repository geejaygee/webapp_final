class Cpu < ActiveRecord::Base
  has_many :computer
  validates :name, presence: true
end
