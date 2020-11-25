
class MovieAdd
    include Capybara::DSL

    def select_status(status)
        find("input[placeholder=Status]").click
        find(".el-select-dropdown__item", text: status).click
    end

    def cadastro(movie)
        find("input[name=title]").set movie["title"]

        select_status(movie["status"]) unless movie["status"].empty?

        find("input[name=year]").set movie["year"]

        find("input[name=release_date]").set movie["release_date"]

        atores = find(".input-new-tag")
        movie["cast"].each do |i|
            atores.set i
            atores.send_keys :tab
        end
        
        find('textarea[name=overview]').set movie["overview"]

        cover_file = File.join(Dir.pwd, "features/support/fixtures/imagens/" + movie["cover"])#referencia do arquivo
        Capybara.ignore_hidden_elements = false
        attach_file('upcover', cover_file)
        Capybara.ignore_hidden_elements = true

        find('#create-movie').click
    end

    def alert
        find(".alert").text
    end
end