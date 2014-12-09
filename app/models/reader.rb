class Reader < ActiveRecord::Base
  has_many :checkouts
  validates :full_name, :email, :phone_number, presence: true
end
