class Computer < ActiveRecord::Base
  belongs_to :user
  belongs_to :case
  belongs_to :mboard
  belongs_to :gcard
  belongs_to :cpu
  belongs_to :ram
  belongs_to :harddrive 
end
