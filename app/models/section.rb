class Section < ApplicationRecord
  belongs_to :subject

  after_initialize do |section|
    puts "You have initialized an object!"
  end

  after_find do |section|
    puts "You have found an object!"
  end

end
