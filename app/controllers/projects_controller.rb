class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :create]
  def index
    @projects = Project.all
  end

   # def create
  # end

  def new
    @project = Project.new
  end

  # def update
  # end

  # def edit
  # end

  def show
    @project = Project.find(params[:id])
  end

  # def destroy
  # end
end
