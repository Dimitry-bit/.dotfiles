return {
  -- Set up nvim-jdtls to attach to java files.
  {
    "nvim-java/nvim-java-dap",
    -- stylua: ignore
    keys = {
        { "<F7>", function() require("dap").step_into() end, desc = "Step Into" },
        { "<S-F8>", function() require("dap").step_out() end, desc = "Step Out" },
        { "<F8>", function() require("dap").step_over() end, desc = "Step Over" },
    },
  },
}
