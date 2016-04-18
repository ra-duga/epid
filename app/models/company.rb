class Company < ActiveRecord::Base
  has_attached_file :logotype
  do_not_validate_attachment_file_type :logotype
  validates :name, :phone, :adress, presence: true

  has_many :employment_contracts
  has_many :employments, through: :employment_contracts

  scope :confirmed, -> { where(is_confirmed: true) }

end
