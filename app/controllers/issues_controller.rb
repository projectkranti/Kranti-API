class IssuesController < ApplicationController

  def create
    user = User.find_or_create_by_uuid(params['issue'].delete('uuid'))
    image_url = Image.new(params[:image]).image_url
    Issue.create(params[:issue].
                     merge(:image_url => image_url).
                     merge(:user => user))
  end

  def index
    limit_param = params[:limit]
    issues = limit_param.present? ? Issue.limit(limit_param) : Issue.all
    render :json => issues
  end

  private
  class Image
    def initialize(image)
      @image = image
    end

    def image_url
      @image.present? ? Cloudinary::Uploader.upload(@image)['url'] : default_image_path
    end

    def default_image_path
      '/rails.png'
    end
  end
end
