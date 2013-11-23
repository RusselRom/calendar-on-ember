App.CalendarView = Ember.View.extend
  templateName: 'calendar'
  isCurrent: (d)-> 
    d is App.Calendar.get('current_day')
        
App.NextMonthView = Ember.View.extend
  tagName: 'span'
  click: ->
    App.calendar.nextMonth()
    @get('controller').transitionToRoute('calendar.YMD', App.calendar)
    

App.PrevMonthView = Ember.View.extend
  tagName: 'span'
  click: ->
    App.calendar.prevMonth()
    @get('controller').transitionToRoute('calendar.YMD', App.calendar)
      
App.NextYearView = Ember.View.extend
  tagName: 'span'
  click: ->
    App.calendar.nextYear()
    @get('controller').transitionToRoute('calendar.YMD', App.calendar)

App.PrevYearView = Ember.View.extend
  tagName: 'span'
  click: ->
    App.calendar.prevYear()
    @get('controller').transitionToRoute('calendar.YMD', App.calendar)


App.TodayView = Ember.View.extend
  tagName: 'span'
  click: ->
    App.calendar.today()
    @get('controller').transitionToRoute('calendar.YMD', App.calendar)
  
  
  
#App.DayView = Ember.View.extend
#  tagName: 'td'
##    $('table td.ember-view').removeClass('selected-day')  
##    $(e.target).addClass('selected-day')

