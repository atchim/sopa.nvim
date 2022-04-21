(import-macros
  {: call} :fnl.sopa.macros
  {: hex} :fnl.sopa.palette)

(local groups
  { :NeoTreeDimText :NonText
    :NeoTreeGitAdded :diffAdded
    :NeoTreeGitConflict :NeoTreeGitModified
    :NeoTreeGitDeleted :diffRemoved
    :NeoTreeGitIgnored :Comment
    :NeoTreeGitModified {:fg (hex 10)}
    :NeoTreeGitUntracked {:fg (hex 9)}
    :NeoTreeGitRenamed {:fg (hex 12)}
    :NeoTreeModified :NeoTreeGitModified
    :NeoTreeRootName {:fg (hex 14) :bold true}})

(fn init []
  "Setup highlight groups."
  (call :sopa :hi_groups groups))

{ : groups
  : init}
