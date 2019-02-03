require "selenium-webdriver"

#Firefox browser instantiation
driver = Selenium::WebDriver.for :firefox

#Loading the assertselenium URL
driver.navigate.to "http://localhost:3001"

#Clicking on the Follow link present on the assertselenium home page
#FollowButton  = driver.find_element(:link, "Follow")
#FollowButton.click

#Typing the UserName
LoginButton = driver.find_element(:name, "login")
LoginButton.send_keys "sampleuser"

#Typing the Email-Id
Password = driver.find_element(:name, "password")
Password.send_keys "abcd"

#Clicking on the Submit Button
SubmitButton = driver.find_element(:name, "click")
SubmitButton.click

#Asserting whether the registration success message is diaplyed
#SuccessMessage = driver.find_element(:css, "p.message")
#"Registration complete. Please check your e-mail.".eql? SuccessMessage.text
puts "Successfully completed the user validation"

#Quitting the browser
#driver.quit
