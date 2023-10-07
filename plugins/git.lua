return {
  {
    "FabijanZulj/blame.nvim",
    event = "User AstroGitFile",
  },
  {
    {
      "sindrets/diffview.nvim",
      event = "User AstroGitFile",
      cmd = { "DiffviewOpen" },
    },
    {
      "NeogitOrg/neogit",
      optional = true,
      opts = { integrations = { diffview = true } },
    },
  },
  {
    "f-person/git-blame.nvim",
    event = "User AstroGitFile",
  },
}
