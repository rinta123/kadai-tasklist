class ToppagesController < ApplicationController
  before_action :require_user_logged_in, only: [:index, :show]

  def index
    if logged_in?
      @task = current_user.tasks.build  # form_with 用
      @pagy, @tasks = pagy(current_user.tasks.order(id: :desc))

    end
  end
end



