class IssuesController < ApplicationController

  def create
    remote_image_url = Cloudinary::Uploader.upload(params[:image])['url']
    Issue.create(issue_params_with_image_url(remote_image_url))
  end

  def index
    @issues = Issue.all
    render :json => @issues
  end

  private
  def issue_params_with_image_url image_url
    params[:issue].merge(:image_url => image_url)
  end
end
