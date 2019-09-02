Quando("clico em botoes") do
    visit('/')
    click_on('Começar Automação Web') #é a msm coisa q esse aq click_link_or_button
    visit('/buscaelementos/botoes')
    click_button(class: 'btn waves-light')
    find('a[onclick="ativaedesativa2()"]').click
    find('a[onclick="ativaedesativa2()"]').double_click
    find('a[onclick="ativaedesativa3()"]').right_click
    sleep(5)
    visit('/')
    click_link('Batista no Youtube')
end