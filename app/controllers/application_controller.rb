class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def setup_sidekiq
    unless session[:visited]
      # DataCleanupWorker.perform_in(10.seconds)
      session[:visited] = true
    end
  end
end
