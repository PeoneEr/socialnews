class Manage::GroupsController < Manage::ApplicationController
  def index
    @groups = current_user.groups
  end

  def edit
    @group = current_user.groups.find(params[:id])
  end

  def update

  end

  def new
    @group = current_user.groups.new
  end

  def create
    @group = current_user.groups.new permitted_params

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
