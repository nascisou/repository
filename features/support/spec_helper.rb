# encoding: utf-8
# !/usr/bin/env ruby

Dir[File.join(File.dirname(__FILE__), '../pages/*.rb')].each { |file| require file }

module UI
  module Pages
    def mercury_page
      UI::Pages::MercuryPage.new
    end
    def fly_page
      UI::Pages::FlyPage.new
    end
    def DataFlyPage_page
      UI::Pages::DataFlyPage.new
    end
    def BookFlyPage_page
      UI::Pages::BookFlyPage.new
    end
  end
end
