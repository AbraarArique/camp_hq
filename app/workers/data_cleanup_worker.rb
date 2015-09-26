class DataCleanupWorker
  include Sidekiq::Worker

  def perform
    User.destroy_all
    Task.destroy_all
    Relationship.destroy_all
  end
end