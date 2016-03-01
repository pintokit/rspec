class CreateCertificationsCompanies < ActiveRecord::Migration
  def change
    create_table :certifications_companies, id: false do |t|
      t.belongs_to :company, index: true
      t.belongs_to :certification, index: true
    end
  end
end
