require 'spec_helper'

describe UsersController do
  def valid_attributes
    password=Faker::HipsterIpsum.word
    { "password" => password, 'password_confirmation'=>password }
  end

  def invalid_attributes
    { "password" => "invalid value", 'password_confirmation'=>'not match' }
  end

  login_user

  describe "GET edit" do
    it "assigns the requested user as @user" do
      user = FactoryGirl.create :user
      get :edit, {:id => user.to_param}
      assigns(:user).should eq(user)
    end
  end

  describe "PUT update" do
    context "with valid params" do
      it "updates the requested campaign" do
        user = FactoryGirl.create :user
        params=valid_attributes
        User.any_instance.should_receive(:update_attributes).with(params)
        put :update, {:id => user.to_param, :user => params}
      end

      it "assigns the requested user as @user" do
        user = FactoryGirl.create :user
        put :update, {:id => user.to_param, :user => valid_attributes}
        assigns(:user).should eq(user)
      end
    end

    context "with invalid params" do
      it "assigns the user as @user" do
        user = FactoryGirl.create :user
        # Trigger the behavior that occurs when invalid params are submitted
        User.any_instance.stub(:save).and_return(false)
        put :update, {:id => user.to_param, :user=> invalid_attributes}
        assigns(:user).should eq(user)
      end

      it "re-renders the 'edit' template" do
        user = FactoryGirl.create :user
        # Trigger the behavior that occurs when invalid params are submitted
        User.any_instance.stub(:save).and_return(false)
        put :update, {:id => user.to_param, :user => invalid_attributes}
        response.should redirect_to(edit_user_path(user))
      end
    end
  end
end
