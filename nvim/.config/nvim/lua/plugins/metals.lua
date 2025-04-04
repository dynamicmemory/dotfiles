return {
    "scalameta/nvim-metals",
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = { "scala", "sbt" },  -- Only load Metals for Scala and SBT files
}
