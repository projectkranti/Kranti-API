class IssuesController < ApplicationController

  def create
    Issue.create(params[:issue])
  end

end
