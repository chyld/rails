require 'spec_helper'

feature 'Aliens' do
  scenario 'show index page' do
    visit aliens_path
    page.should have_content 'Listing aliens'
  end

  scenario 'show new page on click' do
    visit aliens_path
    click_link 'New Alien'
    page.should have_content 'New alien'
  end

  scenario 'create an alien' do
    visit new_alien_path
    fill_in 'Name', :with => 'Marvin'
    fill_in 'Planet', :with => 'Mars'
    fill_in 'Spaceship', :with => 'X-Wing'
    click_button 'Create Alien'
    page.should have_content 'Alien was successfully created'
  end

  scenario 'show an alien' do
    alien = Alien.create(:name => 'Max', :planet => 'Mars', :spaceship => 'Zoom')
    visit alien_path(alien)
    current_path.should == "/aliens/#{alien.id}"
  end

  scenario 'edit an alien' do
    alien = Alien.create(:name => 'Max', :planet => 'Mars', :spaceship => 'Zoom')
    visit edit_alien_path(alien)
    fill_in 'Name', :with => 'Molly'
    click_button 'Update Alien'
    page.should have_content 'Molly'
  end

  scenario 'delete an alien' do
    alien = Alien.create(:name => 'Max', :planet => 'Mars', :spaceship => 'Zoom')
    visit aliens_path
    click_link 'Destroy'
    page.should_not have_content 'Max'
  end

  scenario 'click javascript link', :js => true do
    visit aliens_path
    click_link 'Javascript Alien Link'
    page.should have_content 'i heart aliens'
  end
end











