(import-macros pal :fnl.sopa.palette {: modcall} :soupmacs.soupmacs)
(local M {})

(set M.groups
  { :NeoTreeDimText {:link :NonText}
    :NeoTreeGitAdded {:link :diffAdded}
    :NeoTreeGitConflict {:link :NeoTreeGitModified}
    :NeoTreeGitDeleted {:link :diffRemoved}
    :NeoTreeGitIgnored {:link :Comment}
    :NeoTreeGitModified {:fg (pal 10)}
    :NeoTreeGitUntracked {:fg (pal 9)}
    :NeoTreeGitRenamed {:fg (pal 12)}
    :NeoTreeModified {:link :NeoTreeGitModified}
    :NeoTreeRootName {:fg (pal 14) :bold true}
    :NeoTreeTitleBar {:bg (pal 3) :fg (pal 12) :bold true}})

(fn M.init []
  "Highlights grousp for Neo-tree."
  (modcall :sopa :hi_groups M.groups))

M
