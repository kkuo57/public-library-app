class LibraryUsersController < ApplicationController

  def index
    @user = User.find(params[:id])
    @libraries = @user.libraries
  end

  def create
    @library = Library.find(params[:id])
    @library.users.push(current_user)

    redirect_to current_user
  end

end
