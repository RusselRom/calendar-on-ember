App.IndexRoute = Ember.Route.extend
  redirect: ->
    year = new Date().getFullYear()
    month = new Date().getMonth()
    selected_day = new Date().getDate()
    @calendar = App.calendar =App.Calendar.create {year, month, selected_day}
    @transitionTo "calendar.YMD", @calendar 
