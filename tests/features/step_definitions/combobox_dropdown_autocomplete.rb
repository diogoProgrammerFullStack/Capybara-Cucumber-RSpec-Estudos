Quando("interajo com dropdown e select") do                                   
    visit '/buscaelementos/dropdowneselect'
    #dropdown
    find('.btn.dropdown-button').click
    find('#dropdown3').click
    #select
    select 'Chrome', from: 'dropdown'

    #segundo modo de usar select
    find('option[value="2"]').select_option
    sleep(5)
  end                                                                           
                                                                                
  Quando("preencho o autocomplete") do                                          
    visit '/widgets/autocomplete'
    find('#autocomplete-input').set 'São Pa'
    find('ul', text: 'São Paulo').click
    sleep(5)
  end                                                                           