class CustomerService < ApplicationRecord
  belongs_to :names_id
  belongs_to :cust_id
  before_save :set_total 

  def total
    names.service_cost

  end

  def 

  # private

  # def total
  #     names.collect{ |names| name.valid? name.service_cost: 0}.sum
  # end

  def set_total
      self[:total]=total + names.service_cost
  end

end
