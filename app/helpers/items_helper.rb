module ItemsHelper
	include ActionView::Helpers::DateHelper

  def time_left(item)
  	distance_of_time_in_words(Time.now, item.due_date)
  end
end
