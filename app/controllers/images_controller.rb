class ImagesController < InheritedResources::Base
  before_filter :authenticate_user!
  belongs_to :campaign

  def create
    create! { campaign_path(@campaign) }
  end

  def update
    update! { campaign_path(@campaign) }
  end

  def destroy
    destroy! { campaign_path(@campaign) }
  end

end
