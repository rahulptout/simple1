class SectionController < ApplicationController
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new()
  end

  def edit
  end

  def delete
  end
end
