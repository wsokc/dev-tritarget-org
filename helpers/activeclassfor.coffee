Handlebars = require "handlebars"

exports.activeClassFor = (path, classNames, options) ->
  unless options?
    options = classNames
    classNames = null

  classes = []
  classes.push "active" if path == @path
  classes.push classNames if classNames?

  ret = if classes.length > 0
    """
    class="#{classes.join(" ")}"
    """
  else
    ""

  new Handlebars.SafeString(ret)
