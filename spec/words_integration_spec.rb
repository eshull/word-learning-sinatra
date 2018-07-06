require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
#
# describe('answer the riddle', {:type => :feature}) do
#   it('processes whether the user has answered the riddle correctly or not') do
#     visit('/')
#     fill_in('riddle_one', :with => 'sleep')
#     fill_in('riddle_two', :with => 'time')
#     click_button('Riddle Me')
#     expect(page).to have_content('You shall PASS!')
#   end
# end
