module BlogHelper
  
  def click_and_wait_verify(link_text)
    @browser.link(:text => link_text).click
    Watir::Wait.until { @browser.text_field(:id => 'item_title').exists? }
    Watir::Wait.until { @browser.frame(:id => 'item_description_ifr').exists? }
  end    
  
  def fill_a_post
    @browser.text_field(:id => 'item_title').set @blog['title']
    @browser.frame(:id => 'item_description_ifr').send_keys @blog['description']
  end  
  
  def verify_last_post
    @browser.input(:id => 'item_submit').click
    @browser.link(:text => @blog['title']).should exist
  end  

  def edit_last_post
    @browser.link(:text => @blog['title']).click
    @browser.link(:text => 'Edit').click
    Watir::Wait.until { @browser.link(:text => 'Delete').exists? }
  end
  
  def delete_last_post
    @browser.link(:text => 'Delete').click
    @browser.alert.ok
  end  
  
  def verify_post_not_exist 
    @browser.link(:text => @blog['title']).should_not exist  
  end
end

World(BlogHelper)