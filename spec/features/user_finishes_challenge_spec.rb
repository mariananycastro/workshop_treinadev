require 'rails_helper'

feature 'user initiates challenge' do
  scenario 'successfully' do
    login_as create(:user)
    challenge = create(:challenge, title: 'Desafio 1')

    visit challenges_path
    click_on 'Desafio 1'
    fill_in 'Solução', with: 'Minhas solução é essa.'
    click_on 'Finalizar'
    byebug
    expect(page).to have_field('Ver solução')
    expect(Solution.last.answer).to eq('Minhas solução é essa.')
  end
end