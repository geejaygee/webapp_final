class Computer < ActiveRecord::Base
  belongs_to :user
  belongs_to :case
  belongs_to :mboard
  belongs_to :gcard
  belongs_to :cpu
end
