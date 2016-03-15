class Opportunity < ActiveRecord::Base
  belongs_to :client
  belongs_to :state
  has_many :bids
  has_and_belongs_to_many :companies
  has_and_belongs_to_many :certifications
end
