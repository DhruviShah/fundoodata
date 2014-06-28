class Company < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :company,:HR_name, :HR_email,:HR_contact,:CA_name, :CA_email,:CA_contact
end
