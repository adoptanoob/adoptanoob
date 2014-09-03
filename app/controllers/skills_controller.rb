class SkillsController < ApplicationController
  before_action :load_skilled

  def index
    @skills = @skilled.skills
  end

  def show
    @skill = @skilled.find(params[:id])
  end

  def new
    @skill = @skilled.skills.new

  end

  def create
    @skill = @skilled.skills.new(skill_params)

    if @skill.save
      flash[:notice] = "Skill created"
      redirect_to [@skill, :skills]
    else
      render :new
    end
  end

  def edit
    @skill = @skilled.find(params[:id])

  end

  def update
    @skilled.skills.update_attribute(skill_params)
    flash[:notice] = "Skill updated"
  end

  def destroy
    @skilled.skills.destroy

  end

  private
    def skill_params
      params.require(:skill).permit(:skill_content)
    end
    def load_skilled
      klass = [Role, User, Project].detect { |c| params["#{c.name.underscore}_id"] }
      @skilled = klass.find(params["#{klass.name.underscore}_id"])
    end
end
