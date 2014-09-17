class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_project, except: [:index, :new, :create]

  def index
    @projects = Project.all
  end

  def show
    @users = @project.users
  end

  def new
    @project = Project.new    
    @project.skills.build

  end

  def edit    
  end

  def create
    @project = Project.new(project_params)
    @project.owner = current_user.username
    

    if @project.save
      flash[:notice] = "Your project has been successfully created."
      redirect_to projects_path
    else
      flash[:alert] = "Your project could not be created."
      render 'new'
    end
  end

  def update    
  end

  def destroy    
  end

    private

      def set_project
        @project = Project.find(params[:id])
      end

      def project_params
        params.require(:project).permit(:name, :body, :owner, skills_attributes: [ :id, :skill_content ], roles_attributes: [:id, :project_id])
      end
end

