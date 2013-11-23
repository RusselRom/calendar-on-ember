App.Calendar = Ember.Object.extend

  init: ->
    @updateMe()
  
  updateMe: ()->
    d = new Date
    y = @get('year') or d.getFullYear()
    m = @get('month') or d.getMonth()
    cd = new Date().getDate()
    @set('year', y)
    @set('month', m)
    @set('current_day', cd)  

  getLink: ->
    '/' + [@get('year'), @get('month'), @get('selected_day')].join('/')

  nextYear: ->
    year = parseInt(@get('year')) + 1
    @set('year', year)
  
  nextMonth: ->
    month = (parseInt(@get('month')) + 1) % 12
    @set('month', month)
    
  prevYear: ->
    @set 'year', parseInt(@get('year')) - 1
  
  prevMonth: ->
    month = (parseInt(@get('month')) + 12 - 1) % 12
    @set('month', month)
  
  today: ->
    d = new Date
    y = d.getFullYear()
    m = d.getMonth()
    cd = new Date().getDate()
#    @set('year', y)
#    @set('month', m)
#    @set('current_day', cd)  
#    @set('selected_day', cd)

    @set('year', y)
    @set('month', m)
    @set('current_day', cd)  
    @set('selected_day', cd)

    
