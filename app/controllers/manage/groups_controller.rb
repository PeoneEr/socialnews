class Manage::GroupsController < Manage::ApplicationController
  def index
    @groups = Group.all
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update

  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new permitted_params

    if @group.save
      redirect_to manage_root_path
    else
      render 'new'
    end
  end

  private

  def permitted_params
    params.require(:group).permit(:title, :uid)
  end
end
