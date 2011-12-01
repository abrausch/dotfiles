function forall {
     for f in * 
          do
                   pushd $f
                          $*
                                 popd
                                    done
}
