App.Store = DS.Store.extend {
  revision: 13
  adapter: DS.FixtureAdapter.create()
  # COMMENT: using next adapter requires to have configured CRUD server especially for ember.js
  #  adapter: DS.RESTAdapter.extend(url: 'http://localhost:3000')
}



