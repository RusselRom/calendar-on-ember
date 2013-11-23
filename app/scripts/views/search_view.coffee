App.SearchView = Ember.TextField.extend
  templateName: 'search-view'
  classNames: ['input-small']
  placeholder: 'Search'
  attributeBindings: ['autofocus'],
  autofocus: 'autofocus'

  keyUp: (event)->
    controller = @get('controller')
    char = String.fromCharCode event.which
    # TODO: write cases for the char
    @get('controller').send('searchAttempt', @get('value'));
