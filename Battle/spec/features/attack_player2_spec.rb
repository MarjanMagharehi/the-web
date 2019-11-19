feature 'Attack' do
  scenario 'Player 1 attacks Player 2 and gets confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Bella attacked Marjan'
  end
end
