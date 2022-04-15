# namespace_ex7.tcl
namespace eval mystore {
    variable store
    array set store {}
    proc add_item {item} {
        variable store
        incr store($item)
    }
    proc show_item {} {
        variable store
        return [lsort [array name store]]
    }
    proc get_item {item} {
        variable store
        return $store($item)
    }
    proc show_store {} {
        variable store
        parray store
    }
}

mystore::add_item book
mystore::add_item toy
mystore::add_item book
mystore::show_item
mystore::get_item book
mystore::show_store
