module LoginHelper
  def login_page(username, password)
    @browser.text_field(:id => 'user_username').set username
    @browser.text_field(:id => 'user_password').set password

    @browser.text_field(:id => 'user_username').value.should eq username  
    @browser.text_field(:id => 'user_password').value.should eq password
  end  
  
  def login_nice
    login_page(@secret['user'], @secret['password'])  
  end  
  
  def login_click(key_message)
    @browser.input(:id => 'user_submit').click
    @browser.text.should include @secret[key_message]
  end  
  
  def login_should_be_complete
    @browser.text_field(:id => 'user_username').should exist
    @browser.text_field(:id => 'user_password').should exist
  end
end

World(LoginHelper)  