class CertificationsCompany < ActiveRecord::Base
  belongs_to :company
  belongs_to :certification
end
