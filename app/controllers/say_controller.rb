class SayController < ApplicationController
  def hello
	@time = Time.current
  end

  def goodbye
  end
end
