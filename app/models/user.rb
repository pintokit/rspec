class User < ActiveRecord::Base
  belongs_to :company
  belongs_to :state
  has_and_belongs_to_many :roles
end
