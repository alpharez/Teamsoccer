class PagesController < ApplicationController

  def home
    @user = User.new
  end

  def contact
  end

  def privacy
  end

  def terms
  end

  def faq
  end

  def about
    @user = User.new
  end

end
