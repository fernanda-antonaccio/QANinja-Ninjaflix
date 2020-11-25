
class MoviePage
    include Capybara::DSL
    
    def buttonAdd
        find('.nc-simple-add').click
    end

    def movieAdd
        MovieAdd.new
    end

    def sweetAlert
        SweetAlert.new
    end

    def movie_tr(title)
        find(".card-body .table-movies table tbody tr", text: title)
    end

    def remove(title)
        find(".card-body .table-movies table tbody tr", text: title).find(".btn-trash").click
    end

    def has_no_movie(title)
        page.has_no_css?(".card-body .table-movies table tbody tr", text: title)
    end

    def has_movie(title)
        page.has_css?(".card-body .table-movies table tbody tr", text: title)
    end
end