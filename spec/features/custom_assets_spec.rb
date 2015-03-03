require 'spec_helper'

feature 'Custom asstes' do

  scenario 'should allow custom JS from main app', js: true do
    visit fae.root_path
    # custom JS adds 'test-class' to '.login-body'
    expect(page).to have_selector('.login-body.test-class')
  end

end