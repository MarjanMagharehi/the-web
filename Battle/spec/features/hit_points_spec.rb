feature 'Hit points' do
  scenario 'show player 2s hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Bella'
    fill_in :player_2_name, with: 'Marjan'
    click_button 'Submit'
    expect(page).to have_content 'Marjan: 100HP'
  end
end
