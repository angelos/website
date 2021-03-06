class PagesController < ApplicationController

  def homepage
    @upcoming_events = Event.upcoming
    @next_event = @upcoming_events.first

    @recent_podcasts = LibsynService.new.podcasts.first(3)
    @recent_tweets = TwitterService.new.recent_tweets
  end

end
