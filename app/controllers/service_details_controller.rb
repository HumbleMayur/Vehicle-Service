class ServiceDetailsController < ApplicationController
  def index
    @service_details = ServiceDetail.all

  end

  def new
    @service_details = ServiceDetail.new
  end

  def show 
    @service_details=ServiceDetail.find(params[:id])
  end
  
  def create
    @service_detail = ServiceDetail.new(service_detail_params)
    
    if @service_detail.save
      flash[:notice]='Service added!'
      redirect_to root_path
    else 
      flash[:error]='Failed to edit product!'
      render :new
    end

  end

  def friend_params
    params.require(:service_detail).permit(:service_name, :service_cost, :description)
  end



  
end
