<?php

class homeController extends Controller{
    public function show(){
        // $menu = $this->callmodel("ProductDB");
        // $menu = $menu->getDB();
        $this->callview("index");
    }
}

?>