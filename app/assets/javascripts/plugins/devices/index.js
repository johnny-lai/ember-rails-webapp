/**
 * If the plugin is embedded, add main.js to this file.
 * If the plugin is loaded at run-time, leave main.js out of this file.
 */

Foundation.Module.create({
	namespace: "Devices",

	/**
	 * Specifies where to load the executable.
	 * Can be:
	 *   + A CSS selector, used for lazy parsing
	 *   + An asset file name, for on-demand loading
	 */
	executable: {
		css: "sss",
		url: "",
		//prefetch: ??
	}
});

Devices.IndexRoute = Ember.Route.extend({

});