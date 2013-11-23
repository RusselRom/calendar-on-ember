App.Router.map ->

  @resource "calendar", {path: "/calendar"}, ->
    @route "YM", {path: "/year/:year/month/:month"}
    @route "YMD", {path: "/year/:year/month/:month/selected_day/:selected_day"}
