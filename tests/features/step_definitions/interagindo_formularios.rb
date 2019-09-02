Quando("eu faco cadastro") do
    visit('/users/new')
    #metodos para escreve(sendKeys)
    fill_in(id: 'user_name', with: 'diogo')
    find('#user_lastname').set('oliveira')
    find('#user_email').send_keys('diogooliveirati4@gmail.com')

    fill_in(id: 'user_address', with: 'rua brasilia')
    find('#user_university').set('mackenzie')
    find('#user_profile').send_keys('qa automation')

    fill_in(id: 'user_gender', with: 'masculino')
    find('#user_age').set('25')
    find('input[value="Criar"]').click
    sleep(5)
end
  
Entao("verifico se fui cadastrado") do
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'   
end