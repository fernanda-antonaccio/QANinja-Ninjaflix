
class LoginPage
    include Capybara::DSL

    def login(email, senha)
        visit ""
        find("#emailId").set email
        find("#passId").set senha
        click_button "Entrar"
    end

    def mensagemAlerta
        find('.alert')
    end
end