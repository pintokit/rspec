class Company < ActiveRecord::Base
  belongs_to :state
  has_many :users
  has_many :bids
  has_many :industries, through: :company_industries
  has_and_belongs_to_many :opportunities
  has_and_belongs_to_many :certifications
end
