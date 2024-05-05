<?php

class cartController extends Controller{
    public function show(){
        $this->callview("cart");
    }

    function ReduceQuantity($params){
        if(isset($params['id'])){
            $_SESSION['Cart'][$params['id']]['choose']--;
            print_r(json_encode([$_SESSION['Cart'][$params['id']]['choose'],$_SESSION['Cart'][$params['id']]['price']]));
        }
    }

    function IncreaseQuantity($params){
        if(isset($params['id'])){
            $_SESSION['Cart'][$params['id']]['choose']++;
            print_r(json_encode([$_SESSION['Cart'][$params['id']]['choose'],$_SESSION['Cart'][$params['id']]['price']]));
        }
    }

    function RemoveItem($params){
        unset($_SESSION['Cart'][$params['id']]);
    }
    # tính tổng giá tiền trong giỏ hàng
    // function TotalPrice(){
    //     $sum = 0;
    //     foreach ($_SESSION['Cart'] as $key => $value){
    //         $sum += $value['choose']*$value['price'];
    //     }
    //     echo $sum;
    // }

}

?>