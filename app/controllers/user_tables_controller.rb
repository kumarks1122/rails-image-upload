class UserTablesController < ApplicationController
	def usertable
		@users=UsersTable.all
	end
	def newone
		value_permit=1
		user_params.each do |values|			
			if values[1] == ""
				value_permit=1
			else
				value_permit=0
			end			
		end
		if value_permit==0
			users=UsersTable.new(user_params)
			users.save
			redirect_to(:action=>"usertable")
		elsif value_permit!=0
			redirect_to(:action=>"usertable")
		end
	end
	def edit
		@person=UsersTable.find(params[:id])
	end
	def update
		@person=UsersTable.find(params[:id])
		value_permit=1
		value_permit_image=0		
		user_params.each do |values|			
			if values[1] == ""
				value_permit=1
			else
				value_permit=0
			end			
		end
		if params.require('persons').permit(:imagess)
			value_permit_image=1
		end

		if value_permit==0 && value_permit_image!=1
			@person.update_attributes(params.require("persons").permit(:firstname,:lastname,:rollno,:mobileno))
			redirect_to(:action=>"usertable")
		elsif value_permit==0 && value_permit_image==1
			@person.update_attributes(user_params)
			redirect_to(:action=>"usertable")
		else
			redirect_to(:action=>"usertable")
		end
	end
	def show
		redirect_to(:action=>"usertable")
	end
	def delete
		@person=UsersTable.find(params[:id])
		@person.delete
		redirect_to(:action=>"usertable")
	end
	def user_params
		params.require("persons").permit(:firstname,:lastname,:rollno,:mobileno,:imagess)
	end
end
