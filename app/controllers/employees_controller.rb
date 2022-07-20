class EmployeesController < ApplicationController
  def index
    @names=Name.all
    
    @names =current_cost.names.new
  end

end
