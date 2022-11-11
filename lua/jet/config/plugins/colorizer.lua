local status, clz = pcall(require, 'colorizer')
if (not status) then return end

clz.setup()
