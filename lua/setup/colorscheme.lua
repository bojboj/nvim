local nightfox = require("nightfox")

nightfox.setup(
  {
    fox = "nightfox",
    styles = {
      comments = "italic",
      functions = "bold",
      keywords = "italic",
      strings = "NONE",
      variables = "bold"
    },
    inverse = {
      match_paren = true,
      visual = true,
      search = true
    },
    colors = {},
    hlgroups = {},
  }
)

nightfox.load()
