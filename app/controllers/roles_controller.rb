class RolesController < ApplicationController

  before_action :authenticate_user!, only: [:create, :update, :destroy]

  def index
    @project = Project.find(params[:project_id])
    @user = current_user
    @roles = Role.where(["project_id = ? AND user_id = ?", @project.id, @user.id] )
   
  end

  def new
    @project = Project.find(params[:project_id])
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
    @project = Project.find(params[:project_id])
    @user = current_user
    
    if @role.save 
      @user.roles << @role
    # A FAIRE @role.skills << params[????]
      @project.roles << @role
      flash[:notice] = "You successfully followed this project."
      redirect_to @project
    else
      render 'new'
      flash[:alert] = "You couldn't follow this project."
    end
  end

  private
    def role_params
      params.require(:role).permit(:motivation, :user_id, :project_id)
    end
end
