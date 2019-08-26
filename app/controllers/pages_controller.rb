class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def protected_page
  end
end
