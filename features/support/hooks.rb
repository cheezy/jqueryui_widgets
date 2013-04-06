require 'watir-webdriver'
require 'selenium-webdriver'

module PersistentBrowser

  @@browser = false

  def self.get_browser
    unless @@browser
      @@browser = Watir::Browser.new :firefox if ENV['DRIVER'] == 'WATIR'
      @@browser = Selenium::WebDriver.for :firefox if ENV['DRIVER'] == 'SELENIUM'
    end
    @@browser
  end

  def self.quit
    @@browser.quit
  end
end

Before do
  @browser = PersistentBrowser.get_browser
end

at_exit do
  PersistentBrowser.quit
end

