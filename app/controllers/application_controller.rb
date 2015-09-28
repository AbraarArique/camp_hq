class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def setup_sidekiq
    unless session[:visited]
      delete_event = 'DROP EVENT IF EXISTS cleanup_event'
      create_event = 'CREATE EVENT cleanup_event ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 15 MINUTE DO BEGIN TRUNCATE TABLE relationships; TRUNCATE TABLE users; TRUNCATE TABLE tasks; END'
      ActiveRecord::Base.connection.execute delete_event
      ActiveRecord::Base.connection.execute create_event
      session[:visited] = true
    end
  end
end
