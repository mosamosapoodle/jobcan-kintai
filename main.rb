# coding: utf-8
require 'selenium-webdriver'
require './timer'
require 'dotenv'
Dotenv.load

def dakoku(ele_id = '')
  url = "https://ssl.jobcan.jp/login/pc-employee/?client_id=#{ENV['CLIENT_ID']}"
  driver = Selenium::WebDriver.for :chrome
  driver.navigate.to url
  driver.find_element(:id, 'email').send_keys(ENV['EMAIL'])
  driver.find_element(:id, 'password').send_keys(ENV['PASS'])
  driver.find_element(css: '.btn').click
  driver.find_element(:id, ele_id).click
  sleep(20)
  driver.quit
end

# 出勤
timer(Time.parse("10:30")) do
  dakoku('adit-button-work-start')
  puts "出勤done"
end
# 退勤
timer(Time.parse("22:31")) do
  dakoku('adit-button-work-end')
  puts "退勤done"
end
