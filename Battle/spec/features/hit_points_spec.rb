feature 'Hit points' do
  scenario 'show player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content 'Marjan: 100HP'
  end
end
