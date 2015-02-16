class DemoController < ApplicationController
  def index
  	#render("hello")
    @users12=UsersTable.all
  end
  def hello
  	#render("index")
  	
  end
  def lynda
  	redirect_to("http://lynda.com")
  end
end
