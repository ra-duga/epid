class Employment < ActiveRecord::Base
  belongs_to :specialty
  has_many :employment_contracts
  has_many :companies, through: :employment_contracts

  has_attached_file :photo
  do_not_validate_attachment_file_type :photo

  validates :first_name, :second_name, :third_name, :birth_date, :specialty, presence: true

  scope :confirmed, -> { where(is_confirmed: true) }
  scope :free,      -> { where(is_free: true) }

end
