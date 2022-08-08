class Page < ApplicationRecord
	belongs_to :subject
    after_destroy :log_destroy_action

  after_save_commit :log_user_saved_to_db

  private
  def log_user_saved_to_db
    puts 'User was saved to database'
  end

  def log_destroy_action
    puts 'Article destroyed'
  end

  # def after_destroy
  #
  # end

end
