require 'rails_helper'
feature 'user creates comment' do
  scenario 'successfully' do
    login_as create(:user)
    challenge = create(:challenge)

    root_path
    click_on 'Desafio 1'
    fill_in 'Comentário', with: 'Meu comentário'
    click_on 'Enviar'

    expect(page).to have_css('#comment', text: 'Meu comentário')
  end
end