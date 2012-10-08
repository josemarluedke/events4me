App.Events.Index = App.PaginatedView.extend
  el: "#events-list"
  collection: new App.Collections.Events()

  initializeView: ->
  renderEmpty: ->

  modelView: Backbone.View.extend
    tagName: 'li'
    template: _.template('<h3><%= name %></h3> <p><%= description %><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/></p>')

    render: ->
      this.$el.html @template(@model.toJSON())

