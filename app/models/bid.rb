class Bid < ActiveRecord::Base
  belongs_to :opportunity
  belongs_to :company
end
