class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|

      t.string "company",:default => " "

      t.string "HR_name" 
      t.string "HR_contact", :limit => 15
      t.string "HR_email"

      t.string "CA_name" 
      t.string "CA_contact", :limit => 15
      t.string "CA_email"

      t.timestamps
    end
  end

  def self.down
  	drop_table:companies
  end
end