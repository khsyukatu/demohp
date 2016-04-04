class MainController < ApplicationController
  def index
    @notices = Notice.order("created_at desc").limit(3)
  end
end
