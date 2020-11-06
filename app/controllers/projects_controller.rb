class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: [:update, :destroy, :show]
  def index
    @project = Project.new
    @projects = current_user.projects.all
  end

  def new
  end

  def create
    @project = Project.new(project_params)
    respond_to do |format|
      if @project.save
        current_user.projects.push(@project)
        format.html { redirect_to projects_path, notice: "Successfully created"}
        format.json { render json: @project.errors, status: :unprocessable_entity }
      else
        format.html { redirect_to projects_path, notice: "Ocurrio un error"}
      end
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
