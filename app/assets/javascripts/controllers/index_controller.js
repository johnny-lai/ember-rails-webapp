App.IndexRoute = Ember.Route.extend({
  setupController: function(controller) {
    var content = [];
    for (var i = 0; i < 10000; i++) {
      content.push({name: "Item " + i});
    }
    controller.set('content', content);
  }
});

App.IndexController = Ember.ArrayController.extend({
	content: []
});
