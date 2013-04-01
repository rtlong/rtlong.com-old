class HomeController < ApplicationController
  layout 'splash'

  def show
    #expires_in 3.hours, 'max-stale' => 5.hours, :public => true
  end

end
