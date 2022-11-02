(import-macros {: ix} :fnl.sopa.palette {: modcall} :soupmacs.soupmacs)
(local M {})

(set M.groups
  { :NeoTreeDimText {:link :NonText}
    :NeoTreeGitAdded {:link :diffAdded}
    :NeoTreeGitConflict {:link :NeoTreeGitModified}
    :NeoTreeGitDeleted {:link :diffRemoved}
    :NeoTreeGitIgnored {:link :Comment}
    :NeoTreeGitModified {:fg (ix 10)}
    :NeoTreeGitUntracked {:fg (ix 9)}
    :NeoTreeGitRenamed {:fg (ix 12)}
    :NeoTreeModified {:link :NeoTreeGitModified}
    :NeoTreeRootName {:fg (ix 14) :bold true}
    :NeoTreeTitleBar {:bg (ix 3) :fg (ix 12) :bold true}})

(fn M.init [] (modcall :sopa :hi_groups M.groups))

M
