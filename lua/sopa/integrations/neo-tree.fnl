(import-macros x :lua.sopa.palette)

(local groups
  { :NeoTreeDimText {:link :NonText}
    :NeoTreeGitAdded {:link :diffAdded}
    :NeoTreeGitConflict {:link :NeoTreeGitModified}
    :NeoTreeGitDeleted {:link :diffRemoved}
    :NeoTreeGitIgnored {:link :Comment}
    :NeoTreeGitModified {:fg (x 10)}
    :NeoTreeGitUntracked {:fg (x 9)}
    :NeoTreeGitRenamed {:fg (x 12)}
    :NeoTreeModified {:link :NeoTreeGitModified}
    :NeoTreeRootName {:fg (x 14) :bold true}
    :NeoTreeTitleBar {:bg (x 3) :fg (x 12) :bold true}})

(fn setup []
  "Sets up highlight groups for Neo-Tree."
  (let [hi vim.api.nvim_set_hl]
    (each [group args (pairs groups)] (hi 0 group args))))

{: groups : setup}
