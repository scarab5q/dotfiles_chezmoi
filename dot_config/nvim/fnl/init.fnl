(module init
  {require {core aniseed.core
            nvim aniseed.nvim}})
            
  
  
(core.println "hello world")

(defn remap [mode keys result opts]
  "remap keys" 
   (let (nvim.set_keymap mode from to)))
  

(defn extend-table [target-table table-extensions]
  "function to extend a table"
  ())
  
(defn get-keys [tabl]
  "gets all keys from a table"
  (pop tabl))
  


