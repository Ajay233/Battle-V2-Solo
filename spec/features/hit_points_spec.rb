feature 'testing hit points' do
  scenario "can display player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Ken HP = 100'
  end

  scenario "shows a hit on player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'Ryu vs Ken'
  end

  scenario "shows a decrease in hp by 10" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Ken HP = 90"
  end

  scenario "shows an increase in hp by 10" do
    sign_in_and_play
    2.times { click_button "Attack" }
    click_button "heal"
    expect(page).to have_content "Ken HP = 90"
  end

end
