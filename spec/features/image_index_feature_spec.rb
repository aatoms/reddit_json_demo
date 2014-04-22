require 'spec_helper'

feature 'Index page' do
  scenario 'User should be able to select the image to fetch on the homepage' do
    visit '/'
    expect(page).to have_content('Motivate Me')
  end
end