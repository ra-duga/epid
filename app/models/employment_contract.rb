class EmploymentContract < ActiveRecord::Base
  belongs_to :company
  belongs_to :employment
end
