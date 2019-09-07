Quando("eu entro na janela e verifico a mensagem") do
    visit '/mudancadefoco/janela'

    #janela recebe uma janela que foi aberta pelo link
    janela = window_opened_by do 
        click_link 'Clique aqui'

    end
    #muda de foco para a janela
    within_window janela do
        #verificando se a url atual é igual a esperada
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

        #fechando janela
        janela.close
    end

    #segunda opcao

    click_link 'Clique aqui'

    #vai mudar da primeira para a ultima aba (se tem 10 abas, ira da primeira a ultima)
    switch_to_window windows.last

    expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

    #fechando janela
    windows.last.close
  end
  
  Quando("eu entro no alert e verifico faco a acao") do
    visit '/mudancadefoco/alert'

    #aceitando alert
    find('button[onclick="jsAlert()"]').click
    page.accept_alert
    result = find('#result')
    expect(result.text).to eql 'Você clicou no alerta com sucesso!!'
    
    #cancelando alet
    find('button[onclick="jsConfirm()"]').click
    sleep(2)
    page.dismiss_confirm
    sleep(2)

    #aceitando prompt e preenchendo texto dentro
    find('button[onclick="jsPrompt()"]').click
    page.accept_prompt(with: 'Diogo Oliveira')
    #cancelando prompt
    #page.dismiis_prompt
    sleep(2)
  end