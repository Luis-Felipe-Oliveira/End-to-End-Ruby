require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
# require_relative 'helper.rb'

# World(Helper)


Capybara.configure do |config|
    #selenium > firefox   selenium_chrome > chrome   selenium_chrome_healess > chrome sem parte grafica

    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_wait_time = 5    #encontrar o elemento esperando 5 segundos
    


end