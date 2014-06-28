class CompaniesController < ApplicationController
	def index
		render('list')
	end

	def new
		@com=Company.new
	end

	def list
		@com=Company.order()
	end

	def show
		@com=Company.find(params[:id])
	end

	def create
		@com=Company.new(params[:com])
		@com.save

		if @com.save
			redirect_to(:action => 'list')
		else
			render('new')
		end
	end

	def edit
		@com=Company.find(params[:id])
	end

	def update
		@com=Company.find(params[:id])
		@com.update_attributes(params[:com])

		if @com.save
			redirect_to(:action => 'show' , :id => @com.id)
		else
			render('edit')
		end
	end

	def delete
		@com=Company.find(params[:id])
	end

	def destroy
		@com=Company.find(params[:id])
		@com.destroy
		redirect_to(:action =>'list')
	end

end
