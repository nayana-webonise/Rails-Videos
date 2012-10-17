class DemoController < ApplicationController


  def index
    render 'hello'
    #render :action => :hello
  #redirect_to :action => :other_hello
  end

  def hello
   # @array=[1,2,3,4,5]
    render :text => "Hello Everyone!"
    #redirect_to("http://www.lynda.com")
  end

  def other_hello

  end



end
