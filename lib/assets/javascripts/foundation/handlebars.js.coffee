# From:
# - https://github.com/emberjs/ember.js/issues/563
# - https://gist.github.com/keithpitt/25d4e061956bd8f0c464

Handlebars.registerHelper "proxy", (module, path) ->
  proxy = Em.getPath(module)
  proxy.create(path.hash)
  null