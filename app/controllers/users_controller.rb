class UsersController < InheritedResources::Base
  before_filter :authenticate_user!

  def update
    update! { edit_user_path(@user) }
  end
end
