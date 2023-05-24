-- Set the neomake_c_cppcheck_maker variable to the desired value
vim.g.neomake_c_cppcheck_maker = {
  exec = 'cppcheck',
  args = {
    '--language=c',
    '--enable=warning,style,performance,portability,information,missingInclude',
    '--std=c99',
    '--addon=/home/tzamn/.config/cppcheck/misra.json',
    '--inline-suppr',
    '--suppress=missingIncludeSystem'
  },
  errorformat = '%f:%l:%c: %t%*[^:]: %m'
}
