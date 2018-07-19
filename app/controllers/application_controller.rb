class ApplicationController < ActionController::Base
  #  protect_from_forgery with: :exception
  protect_from_forgery with: :exception
  before_action :set_locale
  before_action :authenticate_user!

  def default_url_options(options={})
    { :locale => I18n.locale }
  end

  # リンクの多言語化に対応する
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
