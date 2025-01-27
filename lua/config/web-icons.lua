local status, webdev = pcall(require, 'nvim-web-devicons')

if not status then return end

local jet_icons = {  
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
    icon = "",
    color = "#61dafb",
    name = "Javascriptreact"
  },
  tsx = {
    icon = "󰜈",
    color = "#61dafb",
    name = "Typescriptreact"
  },
  ts = {
    icon = "󰜈",
    color = "#3178c6",
    name = "typescript"
  },
  ['package-lock.json'] = {
    icon = "",
    color = "#4ebf04",
    name = "PackageLockJson"
  },
  ['package.json'] = {
    icon = "",
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
    icon = "",
    color = "#ffb700",
    name = "ViteConfig",
  },
  ["yarn.lock"] = {
    icon = "",
    color = "#008cff",
    name = "YarnLock",
  },
  ["yarn-error.log"] = {
    icon = "",
    color = "#008cff",
    name = "YarnErrorLog",
  },
  ["babel.config.js"] = {
    icon = "󰨥",
    color = "#fffb00",
    name = "BabelConfig",
  },
  ["jest.config.js"] = {
    icon = "󱢪",
    color = "#c20000",
    name = "JestConfig",
  },
  ["jest.setup.js"] = {
    icon = "󱢪",
    color = "#c20000",
    name = "JestSetup",
  },
  ["test.js"] = {
    icon = "󰂓",
    color = "#f5c118",
    name = "TestJs",
  },
  ["test.jsx"] = {
    icon = "󰂓",
    color = "#61dafb",
    name = "TestJsx",
  },
  ["test.ts"] = {
    icon = "󰂓",
    color = "#3178c6",
    name = "TestTs",
  },
  ["test.tsx"] = {
    icon = "󰂓",
    color = "#61dafb",
    name = "TestTsx",
  },
  pug = {
    icon = "",
    color = "#f7d2b2",
    name = "Pug"
  },
}

if webdev.has_loaded then
  webdev.set_icon (jet_icons)
else
  webdev.setup({ override = jet_icons, default = true })
end
