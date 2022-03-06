require('pretty-fold').setup {
   custom_function_arg = ' ',
   sections = {
      left = {
         function(config)
            return config.custom_function_arg
         end
      },
   }
}
