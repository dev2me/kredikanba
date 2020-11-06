class IssuesController < ApplicationController
  def index
    @issue = Issue.new
    @projects = current_user.projects
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    respond_to do |format|
      if @issue.save
        current_user.issues(@issue)
        format.html { redirect_to issues_path, notice: "Success Created" }
      else
        format.html { redirect_to issues_path, notice: "Ocurrion un error" }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def issue_params
      params.require(:issue).permit(:subject, :description, :status, :due_date, :project)
    end
end
