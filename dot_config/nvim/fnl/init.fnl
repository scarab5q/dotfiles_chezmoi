
(module init
  {require {a aniseed.core}})


(a.println "hello world")

(defn remap [mode keys result opts]
  "remap keys" 
  (let [opt (i)])
  (nvim.set_keymap mode keys result opts)

  (defn extend-table [target-table table-extensions]
    "function to extend a table"
    (if (not table-extensions)
        target-table
        ())))
        
        
(let [tbl {:a "Ayyy"
           :b "pesky bees"
           :c "cunt"
           :e "eggs"}
      extensions {:a "ooooh"
                  :d "done"}]
  (pairs k v tbl))
  ; (collect [k v tbl]
  ;          (values ()))) 
        
(collect [k v (pairs {:nnoremap "true"
                      :silent "false"
                      :expr "false"})]      
  (values (if (.))))
      
(. {:expr "false"
    :silent "false"
    :nnoremap "true"}
   :apple)
      
      

  ; (defn get-keys [tabl]
  ;   "gets all keys from a table"
  ;   (pop tabl))



