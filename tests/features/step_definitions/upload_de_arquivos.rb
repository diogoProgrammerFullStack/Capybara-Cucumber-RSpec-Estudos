Quando("eu faco um upload de arquivo") do
    visit '/outros/uploaddearquivos'
    #attach_file('upload', 'C:\Users\diogo\Desktop\capybarateste\tests\features\download.png', make_visible: true)
    
    #segunda opçao
    @foto = File.join(Dir.pwd, 'features\download.png')
    attach_file('upload', @foto, make_visible: true)
    sleep(4)
  end