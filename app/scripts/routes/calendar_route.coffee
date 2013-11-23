#App.CalendarRoute = Ember.Route.extend

      
      
App.CalendarYMRoute = App.CalendarYMDRoute = Ember.Route.extend
  model: (params) ->
    @calendar = App.calendar = App.Calendar.create params

  serialize: (model) ->
    model

  setupController: (controller) ->
    @controllerFor('calendar').set('content', App.calendar)  
  
  
