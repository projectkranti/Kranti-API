class IssuesController < ApplicationController

  def create
    Issue.create(params[:issue])
  end

  def index
    @issues = Issue.all
    render :json => @issues
  end
end
