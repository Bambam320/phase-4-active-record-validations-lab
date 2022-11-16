class Author < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: true}
  validates :phone_number, length: { is: 10}

  # validates :phone_number, uniqueness: {case_sensitive: true}
end
