(import-macros {: use-package! : pack} :macros)

(use-package! :fhill2/xplr.nvim {
              :nyoom-module tools.xplr
              :run (fn []
                 ((. (require :xplr) :install) {:hide true}))
              :requires [(pack :nvim-lua/plenary.nvim)
                         (pack :MunifTanjim/nui.nvim)]})
