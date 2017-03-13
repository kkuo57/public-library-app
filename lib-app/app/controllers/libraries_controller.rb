class LibrariesController < ApplicationController

  def index
    @libraries = Library.all
  end

  def new
    @library = Library.new
  end

  def create
    new_library = params.require(:library).permit(:name)
    @library = Library.create(new_library)
    redirect_to @libraries
  end

  def show
    @library = Library.find_by_id(params[:id])
  end

end
