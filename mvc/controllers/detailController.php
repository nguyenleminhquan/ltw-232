<?php

class detailController extends Controller{
    public function show(){
        // $menu = $this->callmodel("ProductDB");
        // $menu = $menu->getDB();
        $this->callview("detail");
    }
}

?>