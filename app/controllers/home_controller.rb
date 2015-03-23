class HomeController < ApplicationController
  def index
  
    right_now = Time.now
    @current_time = right_now.stamp_like("2:00 PM")
    
# remember to finish the string with .html_safe
      @greet_message = case right_now.hour
      when 5..11
        "Good Morning! <i class='fa fa-bicycle'></i>".html_safe
      when 12..15
        "Good Afternoon! <i class='fa fa-bicycle'></i>".html_safe
      when 16..19
        "Good Evening! <i class='fa fa-bicycle'></i>".html_safe
      when 20..23, 0..4
        "Good Night! Early to bed early to shred <i class='fa fa-bicycle'></i>".html_safe
      end 


    @quote = Quote.all.sample.quip

 end
end

