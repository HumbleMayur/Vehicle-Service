class Service < ApplicationRecord
  has_many :employee, through: :EmployeesService
end
