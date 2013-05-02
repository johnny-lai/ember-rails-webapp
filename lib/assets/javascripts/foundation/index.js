Foundation = Ember.Namespace.create();

Foundation.Module = Ember.Object.extend({
	init: function() {
		this._super();

		var namespace = this.get("namespace");
		window[namespace] = Ember.Namespace.create();
	}
});

Foundation.PluginSupport = Ember.Mixin.create({
	plugins: Ember.computed(function() {
		return Ember.A();
	}).property().cacheable()
});

Foundation.Plugin = Foundation.Module.extend({
	init: function() {
		this._super();

		// Add ourselves to list of plugins
		this.get("registration").push(this);
	},

	registrationBinding: "App.plugins"
});