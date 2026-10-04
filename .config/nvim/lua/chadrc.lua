-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

local function is_ptyxis_transparent()
  local uuid_handle = io.popen("dconf read /org/gnome/Ptyxis/default-profile-uuid")
  if not uuid_handle then return false end
  local uuid = uuid_handle:read("*a"):gsub("['\n]", "")
  uuid_handle:close()

  if uuid == "" then return false end

  local opacity_handle = io.popen("dconf read /org/gnome/Ptyxis/Profiles/" .. uuid .. "/opacity")
  if not opacity_handle then return false end
  local opacity_str = opacity_handle:read("*a"):gsub("%s+", "")
  opacity_handle:close()

  local opacity = tonumber(opacity_str)
  return opacity and opacity < 1.0
end

local whitespace_color = "#9e9e9e"

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "palenight",
	transparency = is_ptyxis_transparent(),

	hl_override = {
		Comment = { fg = whitespace_color, },
		["@comment"] = { fg = whitespace_color, },

		IndentBlanklineChar = { fg = whitespace_color, },
		IndentBlanklineSpaceChar = { fg = whitespace_color, },
	}
}

return M
