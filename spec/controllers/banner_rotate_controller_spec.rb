require 'spec_helper'

describe BannerRotateController do

  describe "GET show" do
    context "one banner" do
      it "increased show counter" do
        image = FactoryGirl.create :image
        expect {
          get :show, :id =>image.campaign.id
        }.to change{ Image.find(image.id).show }.by(1)
      end

      it "has banner javascript in code" do
        image = FactoryGirl.create :image
        get :show, :id =>image.campaign.id
        response.body.should have_content("document.write")
      end
    end
    context "two banner" do
      it "should rotates" do
        image = FactoryGirl.create :image
        sleep 1.seconds
        image2 = FactoryGirl.create(:image, :campaign_id=>image.campaign.id)
        expect {
          get :show, :id =>image.campaign.id
        }.to change{ Image.find(image.id).show }.by(1)
        sleep 1.seconds
        expect {
          get :show, :id =>image.campaign.id
        }.to change{ Image.find(image2.id).show }.by(1)
      end
    end
  end

  describe "GET click" do
    it "increased click counter" do
      image = FactoryGirl.create :image
      expect {
        get :click, :id =>image.id
      }.to change{ Image.find(image.id).click }.by(1)
    end

    it "redirect to link" do
      image = FactoryGirl.create :image
      get :click, :id =>image.id
      response.should redirect_to(image.link)
    end

  end
end
