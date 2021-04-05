local installer = require('nvim-lsp-installer.installer')

local root_dir = installer.get_server_root_path('yaml')

return installer.Installer:new {
    name = "yamlls",
    root_dir = root_dir,
    install_cmd = [[npm install yaml-language-server]],
    default_options = {
        cmd = { root_dir .. '/node_modules/.bin/yaml-language-server', '--stdio' },
    }
}