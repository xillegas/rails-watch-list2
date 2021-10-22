class ListsController < ApplicationController
  def index
    @lists = List.all # funciona
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
  end

  def new
    @list = List.new
  end

  # def create
  #   @list = List.new(list_params)
  #   @list.save
  #   redirect_to list_path(@list.id)
  # end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  private

  def list_params # metodo relacionado a Active Record-Raails
    params.require(:list).permit(:name)
  end
end
