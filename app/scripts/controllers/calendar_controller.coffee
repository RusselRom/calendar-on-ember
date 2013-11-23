App.CalendarController = Ember.ObjectController.extend

  getDaysMatrix: (->
    sd = @get('selected_day')
    cd = @get('current_day')
    cm = @get('month')
    [year, month] = [@get('year'), @get('month')]
    daysInMonth = new Date(year, +month+1, 0).getDate()
    days = []
    for i in [1..daysInMonth]
      numDay = new Date(year, month, i).getDay()
      numWeek = new Date(year, month, i).getWeek()
      if !days[numWeek]
        days[numWeek] = []
      days[numWeek][numDay] = i
    res = []
    _.each days, (week,j)->
      res[j] = []
      i = 0
      while i < 7
        n = week[i]
        c1 = sd?.toString()
        c2 = cd?.toString()
        c = n?.toString()
        f1 = c1
        cssClass = if c1 is c then 'selected'
        else if c2 is c and +cm is new Date().getMonth() and +year is new Date().getFullYear() then 'current'
        else 'other'
        res[j].push {
            data: (week[i] or '')
            cssClass: cssClass
        }
        i++
         
    res.clean(undefined)
    res
  ).property('year', 'month', 'selected_day')
    
    
  selectDay: (day)->
    return unless day?
    @set('selected_day', day)
    App.calendar.set('selected_day', day)
    @transitionToRoute('calendar.YMD', App.calendar)
      
