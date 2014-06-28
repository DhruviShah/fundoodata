class HomeController < ApplicationController
  def start

  end

  def query
  	@com=Company.new
  end

  def search
  	@com=Company.where(:company => params[:com][:company]).first
  	if @com.nil?
  		render(:text => "Sorry..No Records Found..!!")
  		
  	end

  end
end
