require 'rails_helper'

feature 'User creates equipment' do
  scenario 'Successfully' do
    category = EquipmentCategory.create(name: 'Elétricos')
    visit new_equipment_path
    select(category.name, from: 'Categoria')
    fill_in 'Modelo',               with: 'BOSCH'
    fill_in 'Número de Série',      with: '123456789'
    fill_in 'Número de Inventário', with: 'EQUIPA-12345'
    fill_in 'Valor do Equipamento', with: 25.52
    click_on 'Incluir Equipamento'

    expect(page).to have_content('Elétricos')
    expect(page).to have_content('BOSCH')
    expect(page).to have_content('123456789')
    expect(page).to have_content('EQUIPA-12345')
    expect(page).to have_content('25.52')
  end
end
