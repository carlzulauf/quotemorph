class PagesController < ApplicationController
  def home
    redirect_to quotes_url
  end
end
