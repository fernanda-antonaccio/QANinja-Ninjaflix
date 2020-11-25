
Before do
    page.current_window.resize_to(1440, 920)
    @moviePage = MoviePage.new
    @loginPage = LoginPage.new
    @sidebarPage = SidebarPage.new
end

Before("@login") do
    @loginPage.login("fernanda@gmail.com", "123456")
end

After do
    temp_shot = page.save_screenshot("log/temp_shot.png")
    screenshot = Base64.encode64(File.open(temp_shot).read)
    embed(screenshot, "image/png", "Screenshot")
end