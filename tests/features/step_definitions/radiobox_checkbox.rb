Quando("eu marco um checkbox e um radiobox") do
    visit '/buscaelementos/radioecheckbox'
    find('label[for="white"]').click
    #clicar em um elemento não visível
    check('purple', allow_label_click: true)
    sleep(2)
    #retirar marcação
    uncheck('purple', allow_label_click: true)
    sleep(4)
    #marcar radiobox
    choose('red', allow_label_click: true)
    sleep(2)
  end