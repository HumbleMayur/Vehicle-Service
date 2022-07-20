class ServicesController < ApplicationController
  def index
    @services=Service.all
  end

  def show 
    @services=Service.find(params[:id])
  end

  
 
  def new
    @services=Service.new
  end

  def create
    @service = Service.new(service_params)
    
    if @service.save
      flash[:notice]='Service added!'
      redirect_to root_path
    else 
      flash[:error]='Failed to edit product!'
      render :new
    end

  end

  def product_params   
    params.require(:service).permit(:service_id, :service_name,  :service_status,  :service_cost, :service_startdate, :service_enddate, :amount_paid, :amount_due )
  end 
end
