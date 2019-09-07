Quando("entro no iframe e preencho os campos") do                             
    visit '/mudancadefoco/iframe'
    #mudar foco para iframe - passar nome do id puro
    within_frame('id_do_iframe')do
        find('#first_name').set 'Diogo'
        fill_in(id: 'last_name', with: 'Oliveira')
    end
end                                                                           
                                                                                
Quando("entro no modal e verifico o texto") do                                
    visit '/mudancadefoco/modal'
    find('a[href="#modal1"]').click

    #mudar foco para modal - passar id com #
    within('#modal1')do
        texto = find('h4')
        expect(texto.text).to eql 'Modal Teste'
        find('.modal-close').click
        sleep(2)
    end
end                                                                        