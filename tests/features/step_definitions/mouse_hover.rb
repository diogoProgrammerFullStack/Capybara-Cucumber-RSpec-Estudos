Quando("seleciono o mouse hover") do
    visit '/iteracoes/mousehover'
    #move mouse até o elemento
    find('.card-title').hover
    #move mouse até o elemento e clica
    find('.card-title').hover.click
    sleep(3)
  end