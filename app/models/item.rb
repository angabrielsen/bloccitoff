class Item < ActiveRecord::Base
	include ActionView::Helpers::DateHelper

  belongs_to :user

  validates :name, length: { minimum: 5 }, presence: true

  def due_date
  	self.created_at + 7.days
  end

  def time_left
  	distance_of_time_in_words(Time.now, due_date)
  end
end
