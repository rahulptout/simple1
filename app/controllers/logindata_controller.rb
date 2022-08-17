class LogindataController < ApplicationController
  layout false
  def index
    @logins = Login.all
  end

  def show
    @login = Login.find(params[:id])
  end

  def new
    # binding.pry
    @login = Login.new()
    # binding.pry
  end

  def create
   
    @login = Login.new(login_params)
    
    if  @login.save
      
      flash[:notice] = "Subject Created Successfully...."
      redirect_to(logindata_path)
    else
      render('new')
    end

  end

  def edit
    @login = Login.find(params[:id])
  end

  def update
    @log = Login.find(params[:id])

    if  @subject.update(subject_params)
      flash[:notice] = "Subject updated successfully"
      redirect_to(subjects_path(@subject))
    else
      render('edit')
    end

  end


  private
  def login_params
    params.required(:login).permit(:first_name,:last_name,:email,:date_of_birth,:password)
  end
end
