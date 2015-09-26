class PagesController < ApplicationController
  before_action :setup_sidekiq

  def index
    @users = User.all
    @tasks = Task.all
  end
end
