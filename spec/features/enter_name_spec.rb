# Add in within () do .. end when this works
feature 'testing game setup' do
  scenario 'can add 2 players and display thier names' do
    sign_in_and_play
    expect(page).to have_content 'Ryu vs Ken .... FIGHT!'
  end
end
