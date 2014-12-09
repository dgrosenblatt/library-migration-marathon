class Book < ActiveRecord::Base
  has_many :checkouts
  has_and_belongs_to_many :categories
  validates :title, presence: true
end
