class StaticController < ApplicationController

  def unlocalized
    I18n.locale = params[:locale]
  end

end
