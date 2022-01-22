class ListsController < ApplicationController
  before_action :find_task, only: [:show]

  def index
    @list = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

private

  def find_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:list)
  end
end
