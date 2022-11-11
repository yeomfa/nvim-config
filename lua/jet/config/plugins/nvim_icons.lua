local webdev = require'nvim-web-devicons'

local my_icons = {  
  js = {
    icon = "",
    color = "#f5c118",
    name = "Javascript"
  },
  html = {
    icon = "",
    color = "#ff5d0d",
    name = "Html"
  },
  jsx = {
    icon = "ﰆ",
    color = "#61dafb",
    name = "Javascriptreact"
  },
  tsx = {
    icon = "ﰆ",
    color = "#61dafb",
    name = "Typescriptreact"
  },
  ts = {
    icon = "ﯤ",
    color = "#3178c6",
    name = "typescript"
  },
  ['package-lock.json'] = {
    icon = "",
    color = "#4ebf04",
    name = "PackageLockJson"
  },
  ['package.json'] = {
    icon = "",
    color = "#4ebf04",
    name = "PackageJson"
  },
  [".gitattributes"] = {
    icon = "",
    color = "#ff0000",
    cterm_color = "59",
    name = "GitAttributes",
  },
  [".gitconfig"] = {
    icon = "",
    color = "#ff0000",
    cterm_color = "59",
    name = "GitConfig",
  },
  [".gitignore"] = {
    icon = "",
    color = "#ff0000",
    cterm_color = "59",
    name = "GitIgnore",
  },
  [".gitlab-ci.yml"] = {
    icon = "",
    color = "#e24329",
    cterm_color = "166",
    name = "GitlabCI",
  },
  [".gitmodules"] = {
    icon = "",
    color = "#ff0000",
    cterm_color = "59",
    name = "GitModules",
  },
  ["vite.config.js"] = {
    icon = "",
    color = "#ffb700",
    name = "ViteConfig",
  },
  ["yarn.lock"] = {
    icon = "",
    color = "#008cff",
    name = "YarnLock",
  },
  ["yarn-error.log"] = {
    icon = "",
    color = "#008cff",
    name = "YarnErrorLog",
  },
  ["babel.config.js"] = {
    icon = "",
    color = "#fffb00",
    name = "BabelConfig",
  },
  ["jest.config.js"] = {
    icon = "﬷",
    color = "#c20000",
    name = "JestConfig",
  },
  ["jest.setup.js"] = {
    icon = "﬷",
    color = "#c20000",
    name = "JestSetup",
  },
  ["test.js"] = {
    icon = "",
    color = "#f5c118",
    name = "TestJs",
  },
  ["test.jsx"] = {
    icon = "",
    color = "#61dafb",
    name = "TestJsx",
  },
  ["test.ts"] = {
    icon = "",
    color = "#3178c6",
    name = "TestTs",
  },
  ["test.tsx"] = {
    icon = "",
    color = "#61dafb",
    name = "TestTsx",
  },
}

if webdev.has_loaded then
  webdev.set_icon (my_icons)
else
  webdev.setup({ override = my_icons, default = true })
end
