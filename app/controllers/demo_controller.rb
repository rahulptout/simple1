class DemoController < ApplicationController
  layout false

  def index
    # render('hello')
    @array =[1,2,3,4,5,6,7,8,9]

  end

  def hello
    # render('index')
  end


  def hello1
    redirect_to(:controller => 'demo', :action => 'index')
  end

  # def google
  #   redirect_to('https://www.google.com/search?q=google&oq=google&aqs=chrome..69i57j46i131i199i433i465i512j69i60l2j69i65l3j69i60.6046j0j7&sourceid=chrome&ie=UTF-8', allow_other_host: true )
  # end

end
