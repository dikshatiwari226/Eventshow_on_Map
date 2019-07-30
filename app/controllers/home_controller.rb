class HomeController < ApplicationController
  def index
  	# byebug
  	# @page = EventMap.paginate(page: params[:page], per_page:5)
  end
  def search
  	@event_paginator = EventMap.paginate(page: params[:page], per_page:1)
 	end 	
end
