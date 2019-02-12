feature 'testing hit points' do
  scenario "can display player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Ken HP = 100'
  end

  scenario "shows a hit on player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Damn, Ken got hit!'
  end

  scenario "shows a decrease in hp by 10" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "HP = 90"
  end
end
