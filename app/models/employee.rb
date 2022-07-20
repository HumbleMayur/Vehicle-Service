class Employee < ApplicationRecord
  has_many :services dependent: :destroy
end
