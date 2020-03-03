require 'rails_helper'

feature 'user views challenge' do
  scenario 'successfully' do
    login_as create(:user)
    challenge = create(:challenge, title: 'Desafio 1', 
                                   description: 'Faça um bubble sort')
    
    visit root_path
    click_on 'Desafios'

    expect(page).to have_content('Desafio 1')
    expect(page).to have_content('Faça um bubble sort')
  end
  scenario 'multiples' do
    login_as create(:user)
    challenge = create(:challenge, title: 'Desafio 1', 
                                   description: 'Faça um bubble sort')
    challenge2 = create(:challenge, title: 'Desafio 2', 
                                    description: 'Faça um quick sort')
                          
    visit root_path
    click_on 'Desafios'

    expect(page).to have_content('Desafio 1')
    expect(page).to have_content('Faça um bubble sort') 
    expect(page).to have_content('Desafio 2')
    expect(page).to have_content('Faça um quick sort') 
  end
end