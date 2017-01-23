class SayController < ApplicationController
  def hello
    @formatted_time = Time.now.to_formatted_s :time
  end

  def goodbye
  end
end
