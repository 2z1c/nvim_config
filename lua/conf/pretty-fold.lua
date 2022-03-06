require("pretty-fold").setup {
   sections = {
      left = {
         "fold default string"
      }
   },
   matchup_patterns = {
      -- {"^%s.= {$", "}$"},
      -- {"^%s.= {$", "},$"},
      -- {" = {$", "},$"},
      -- beginning of the line -> any number of spaces -> 'do' -> end of the line
      {"^%s*do$", "end"}, -- `do ... end` blocks
      {"^%s*if", "end"}, -- if ... end
      {"^%s*for", "end"}, -- for
      {"function%s*%(", "end"}, -- 'function( or 'function (''
      {"{", "}"},
      {"%(", ")"}, -- % to escape lua pattern char
      {"%[", "]"} -- % to escape lua pattern char
   }
}
