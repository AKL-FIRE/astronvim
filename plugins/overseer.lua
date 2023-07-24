return {
  {
    "stevearc/overseer.nvim",
    cmd = {
      "OverseerOpen",
      "OverseerClose",
      "OverseerToggle",
      "OverseerSaveBundle",
      "OverseerLoadBundle",
      "OverseerDeleteBundle",
      "OverseerRunCmd",
      "OverseerRun",
      "OverseerInfo",
      "OverseerBuild",
      "OverseerQuickAction",
      "OverseerTaskAction ",
      "OverseerClearCache",
    },
    opts = {},
  },
  {
    "rebelot/heirline.nvim",
    dependencies = {
      "stevearc/overseer.nvim",
    },
    opts = function(_, opts)
      local Spacer = { provider = " " }
      local function rpad(child)
        return {
          condition = child.condition,
          child,
          Spacer,
        }
      end
      local function OverseerTasksForStatus(status)
        return {
          condition = function(self) return self.tasks[status] end,
          provider = function(self) return string.format("%s%d", self.symbols[status], #self.tasks[status]) end,
          hl = function(self)
            return {
              fg = require("heirline.utils").get_highlight(string.format("Overseer%s", status)).fg,
            }
          end,
        }
      end
      local overseer = {
        condition = function() return package.loaded.overseer end,
        init = function(self)
          local tasks = require("overseer.task_list").list_tasks { unique = true }
          local tasks_by_status = require("overseer.util").tbl_group_by(tasks, "status")
          self.tasks = tasks_by_status
        end,
        static = {
          symbols = {
            ["CANCELED"] = " ",
            ["FAILURE"] = "󰅚 ",
            ["SUCCESS"] = "󰄴 ",
            ["RUNNING"] = "󰑮 ",
          },
        },

        rpad(OverseerTasksForStatus "CANCELED"),
        rpad(OverseerTasksForStatus "RUNNING"),
        rpad(OverseerTasksForStatus "SUCCESS"),
        rpad(OverseerTasksForStatus "FAILURE"),
      }
      table.insert(opts.statusline, 5, overseer)
      return opts
    end,
  },
}
