class ProjectsController < ApplicationController
    
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def create
    @project = current_user.projects.build(params[:project])
    if @project.save
      flash[:success] = "Project created!"
      redirect_to root_url
    else
    	render 'static_pages/home'
    end
  end

  def destroy
    @project.destroy
    redirect_to root_url
  end
  
  def show
  	@project = Project.find(params[:id])
  end
  
  def new
  	@project = Project.new
  end
  
  def index
  	@projects = Project.paginate(page: params[:page])
  end

  private

    def correct_user
      @project = current_user.projects.find_by_id(params[:id])
      redirect_to root_url if @project.nil?
    end
end
