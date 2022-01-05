local nightfox = require("nightfox")

nightfox.setup(
  {
    fox = "nightfox",
    styles = {
      comments = "italic",
      functions = "bold",
      keywords = "bold,italic",
      strings = "NONE",
      variables = "NONE"
    },
    inverse = {
      match_paren = true,
      visual = false,
      search = false
    },
    colors = {},
    hlgroups = {},
  }
)

nightfox.load()
