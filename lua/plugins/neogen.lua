require('neogen').setup {
    enabled = true,
    languages = {
        python = {
            template = {
                annotation_convention = "reST" -- for a full list of annotation_conventions, see supported-languages below,
                -- for more template configurations, see the language's configuration file in configurations/{lang}.lua
            }
        },
    }
}
