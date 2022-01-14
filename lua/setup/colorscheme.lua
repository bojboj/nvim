local nightfox = require("nightfox")

nightfox.setup(
  {
    fox = "nordfox",
    styles = {
      comments = "italic",
      functions = "bold",
      keywords = "italic",
      strings = "NONE",
      variables = "NONE"
    },
    inverse = {
      match_paren = false,
      visual = false,
      search = false
    },
    colors = {},
    hlgroups = {},
  }
)

nightfox.load()
