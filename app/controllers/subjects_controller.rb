class SubjectsController < ApplicationController
  layout 'admin'



  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new({:name =>'Default'})
  end

  def create
    @subject = Subject.new(subject_params)
    if  @subject.save
      flash[:notice] = "Subject Created Successfully...."
      redirect_to(subjects_path)
      else
        render('new')
    end

    end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])

    if  @subject.update(subject_params)
      flash[:notice] = "Subject updated successfully"
      redirect_to(subjects_path(@subject))
    else
      render('edit')
    end

  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    flash[:notice] = "Subject '#{@subject.name}'delete Successfully"
    redirect_to(subjects_path)
  end

  def method_show
    # @subject = Subject.new()
    # binding.pry
    # puts Subject.class_method_name
    # puts .instance_method
  

    # @subject= Subject.private_methods
    # @subject=Subject.Protected_method


    # render body: "raw"
    # render file: "#{Rails.root}/public/404.html", layout: true
    # render template: "feed", content_type: "application/rss"
    # render json: @subjects
   # render status: 500
   # render status: :forbidden
   #  render variants: [:mobile, :desktop]

  end

  private
  def subject_params
    params.required(:subject).permit(:name,:position,:visible)
  end



end
