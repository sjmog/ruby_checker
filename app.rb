require './lib/system_configured'

Shoes.app {
  stack do
    title "Ruby Checker"
    tagline "This program will check that Ruby runs on your computer."
    para "We'll run our test scripts and see what happens. If not configured, check your Ruby configuration and try again."
    @push = button "Check if configured"
    @note = para ""
  end
  @push.click {
    if SystemConfigured.call
      @result = "Your system is configured!"
    else
      @result = "Your system is not yet configured."
    end
    @note.replace @result
  }
}