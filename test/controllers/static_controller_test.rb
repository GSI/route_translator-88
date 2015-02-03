require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  LOCALE_STRING = 'es'

  test 'unlocalized: without route_translator I18n.locale is preserved' do
    assert ! I18n.locale.eql?(LOCALE_STRING.to_sym), "I18n.locale: #{I18n.locale}, LOCALE_STRING.to_sym: #{LOCALE_STRING.to_sym}"

    get :unlocalized, :locale => LOCALE_STRING

    assert I18n.locale.eql?(LOCALE_STRING.to_sym), "I18n.locale: #{I18n.locale}, LOCALE_STRING.to_sym: #{LOCALE_STRING.to_sym}"
  end

end
