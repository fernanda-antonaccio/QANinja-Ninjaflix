Quando("eu faço login com {string} e {string}") do |email, senha|
    @loginPage.login(email, senha)
    sleep 1
end
  
Então("devo ser autenticado") do
    expect(get_token.length).to be 147
end
  
Então("devo ver {string} na área logada") do |expect_nome|
    expect(@sidebarPage.logged_user).to eql expect_nome
end

Então("não devo ser autenticado") do
    expect(get_token).to be nil
end
  
Então("devo ver a mensagem de alerta {string}") do |expect_mensagem|
    expect(@loginPage.mensagemAlerta).to have_text expect_mensagem
end