class Opportunity < ActiveRecord::Base
  belongs_to :client
  belongs_to :state
end
