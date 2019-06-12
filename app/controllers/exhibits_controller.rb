class ExhibitsController < ApplicationController
  before_action :authenticate_user!
  def index
    @exhibits = current_user.exhibits.where(status: 1).or(current_user.exhibits.where(status: 3))
  end

  def sold
    @exhibits = current_user.exhibits.where(status: 2)
  end
end
