(local servers ["go" "fennel"
		"lua"])

(let [ts (require :nvim-treesitter.configs)]
(ts.setup {:highlight {:enable true}
        :indent {:enable true}
	:rainbow {:enable true :extended_mode true}
        :ensure_installed servers}))
