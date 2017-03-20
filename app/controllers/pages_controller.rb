class PagesController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    if valid_page?
      render template: "pages/#{params[:page]}"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  def import
    if current_user.admin
    else
      redirect_to pages_restricted_access_path
    end
    #code
  end

  def documentation
    #code
  end

  private
  def valid_page?
    File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.erb"))
  end
end
