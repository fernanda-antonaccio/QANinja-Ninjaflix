#language:pt
@login
Funcionalidade: Cadastro de filmes
    Para que eu possa disponibilizar novos títulos no catálogo
    Sendo um gestor de catálogo
    Posso cadastrar um novo filme

    @new_movie
    Esquema do Cenario: Novo filme
        O gestor de catálogo cadastrar um novo filme através do formulário
        e um novo registro é inserido no catálogo Ninjaflix.

        Dado que <codigo> é um novo filme
        Quando eu faço o cadastro deste filme
        Então devo ver o novo filme na lista

        Exemplos:
            | codigo     |
            | "ultimato" |
            | "spider"   |
            | "jocker"   |

    @obrigatorios
    Esquema do Cenario: Campos obrigatorios
        O gestor de catálogo tenta cadastrar um novo filme, mas esquece
        de preencher um dos campos que são obrigatórios, em seguida, o sistema
        exibe uma notificação para usuário.

        Dado que <codigo> é um novo filme
        Quando eu faço o cadastro deste filme
        Então devo ver a notificação <mensagem>

        Exemplos:
            | codigo       | mensagem                                       |
            | "no_title"   | "Oops - Filme sem titulo. Pode isso Arnaldo?"  |
            | "no_status"  | "Oops - O status deve ser informado!"          |
            | "no_year"    | "Oops - Faltou o ano de lançamento também!"    |
            | "no_release" | "Oops - Quase lá, só falta a data de estréia!" |
            | "ultimato"   | "Oops - Este titulo já existe no Ninjaflix."   |