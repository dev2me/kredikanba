class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: [:update, :destroy, :show]
  def index
    @project = Project.new
  end

  def new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Successfully created"
      render :index
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
    def project_params
      params.require(:project).permit(:name)
    end
    def set_project
      @project = Project.find(:id)
    end
end
