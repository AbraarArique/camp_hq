class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def setup_sidekiq
    create_event = 'CREATE EVENT IF NOT EXISTS cleanup_event ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 15 MINUTE DO CALL ch_cleanup();'
    ActiveRecord::Base.connection.execute create_event
  end
end
