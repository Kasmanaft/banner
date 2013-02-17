module CampaignsHelper
  def campaigns_exists?
    Campaign.count>0
  end
end
