
class SweetAlert
    include Capybara::DSL
        
    def swal2_confirm
        find(".swal2-confirm").click
    end

    def swal2_cancel
        find(".swal2-cancel").click
    end
end