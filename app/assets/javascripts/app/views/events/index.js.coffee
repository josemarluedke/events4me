App.Events.Index = Backbone.View.extend
  el: "#events-list"
  initialize: ->
    @eventsList = new App.Collections.Events()
    @eventsList.on 'reset', @addAll, @
    @eventsList.fetch()

  addOne: (item) ->
    view = new @EventView model: item
    this.$el.append view.render()

  addAll: ->
    this.$el.html ""
    @eventsList.each @addOne, @

  EventView: Backbone.View.extend
    template: _.template('<h3><%= name %></h3> <p><%= description %></p>')

    render: ->
      this.$el.html @template(@model.toJSON())

