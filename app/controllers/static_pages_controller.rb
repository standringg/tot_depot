class StaticPagesController < ApplicationController
	skip_before_action :authorize
  def about
  end

  def course
  end

  def event_details
  end

  def home
  end
end
