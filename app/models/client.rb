class Client < ActiveRecord::Base
  belongs_to :state
  has_many :opportunities
end
