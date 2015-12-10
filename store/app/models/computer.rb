class Computer < ActiveRecord::Base
  belongs_to :user
  belongs_to :case
  belongs_to :mboard
  belongs_to :gcard
  belongs_to :cpu
  belongs_to :ram
  belongs_to :harddrive 
  validates :price, presence: true
  validates :gcard_id, presence: true
  validates :cpu_id, presence: true
  validates :mboard_id, presence: true
  validates :case_id, presence: true
  validates :ram_id, presence: true
  validates :harddrive_id, presence: true
  validates :quality, presence: true
end
