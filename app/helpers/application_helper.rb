module ApplicationHelper

  # +++++++++++++++++++++++++++++++++++


  def current_cost
    if !session[:names_id].nil?
        Name.find(session[:names_id])
    else
        Name.new
    end
  end
  end
