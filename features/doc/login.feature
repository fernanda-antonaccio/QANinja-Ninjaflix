#language: pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do catálogo Ninjaflix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

    @loginValido
    Cenário: Login Valido
        Quando eu faço login com "fernanda@gmail.com" e "123456"
        Então devo ser autenticado
        E devo ver "Fernanda Mason" na área logada

    @loginInvalido
    Esquema do Cenario: Login Invalido
        Quando eu faço login com <login> e <senha>
        Então não devo ser autenticado
        E devo ver a mensagem de alerta <texto>

        Exemplos: 
        | login             | senha     | texto                          |
        | "tony@stark.com"  | "abc123"  | "Usuário e/ou senha inválidos" |
        | "404@yahoo.com"   | "abc123"  | "Usuário e/ou senha inválidos" |
        | ""                | "abcxpto" | "Opps. Cadê o email?"          |
        | "teste@gmail.com" | ""        | "Opps. Cadê a senha?"          |