class ProjectsController < ApplicationController

  def create
    @project=Project.new(params[:project])
    @project.save
    redirect_to projects_path
  end

  def show
    @project=Project.find(params[:id])
  end

  def index
    @projects=Project.search(params[:search])
  end


  def edit
    @project=Project.find(params[:id])
  end

  def update
    @project=Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:success] = "Project updated."
      redirect_to @project
    end

  end
end
