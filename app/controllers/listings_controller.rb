class ListingsController < ApplicationController
  def index
    @listings = policy_scope(Listing).order(created_at: :desc)
  end
end
