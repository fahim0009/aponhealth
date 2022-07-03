<div class="card sticky-top">
    <div class="card-title">
        <div class="row align-items-center">
            <div class="col-6">
                <h3 class="heading heading-3 strong-400 mb-0">
                    <span><?php echo e(__('Summary')); ?></span>
                </h3>
            </div>

            <div class="col-6 text-right">
                <span class="badge badge-md badge-success"><?php echo e(count(Session::get('cart'))); ?> <?php echo e(__('Items')); ?></span>
            </div>
        </div>
    </div>

    <div class="card-body">
        <table class="table-cart table-cart-review">
            <thead>
                <tr>
                    <th class="product-name"><?php echo e(__('Product')); ?></th>
                    <th class="product-total text-right"><?php echo e(__('Total')); ?></th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $subtotal = 0;
                    $tax = 0;
                    $shipping = 0;
                ?>
                <?php $__currentLoopData = Session::get('cart'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $cartItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php
                    $product = \App\Models\Product::find($cartItem['id']);
                    $subtotal += $cartItem['price']*$cartItem['quantity'];
                    $tax += $cartItem['tax']*$cartItem['quantity'];
                    $drate = \App\Models\Master::where('softcode','=','discount')->first()->hardcode/100;
                    $damount = $subtotal*$drate;
                    $shipping += $cartItem['shipping']*$cartItem['quantity'];
                    // $shippingcost = $cartItem['shipping'];
                    $product_name_with_choice = $product->name;
                    if(isset($cartItem['color'])){
                        $product_name_with_choice .= ' - '.\App\Models\Color::where('code', $cartItem['color'])->first()->name;
                    }
                    foreach (json_decode($product->choice_options) as $choice){
                        $str = $choice->name; // example $str =  choice_0
                        $product_name_with_choice .= ' - '.$cartItem[$str];
                    }
                    ?>
                    <tr class="cart_item">
                        <td class="product-name">
                            <?php echo e($product_name_with_choice); ?>

                            <strong class="">× <?php echo e($cartItem['quantity']); ?></strong>
                        </td>
                        <td class="product-total text-right">
                            <span class="pl-4"><?php echo e(single_price($cartItem['price']*$cartItem['quantity'])); ?></span>
                        </td>
                    </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
        </table>
<hr>
        

        <table class="table-cart table-cart-review">

            <tfoot>
                <tr class="cart-subtotal">
                    <th><?php echo e(__('Subtotal')); ?></th>
                    <td class="text-right">
                        <span class="strong-600"><?php echo e(single_price($subtotal)); ?></span>
                    </td>
                </tr>

                <!--<tr class="cart-shipping">-->
                <!--    <th><?php echo e(__('Tax')); ?></th>-->
                <!--    <td class="text-right">-->
                <!--        <span class="text-italic"><?php echo e(single_price($tax)); ?></span>-->
                <!--    </td>-->
                <!--</tr>-->

                 <?php if(Auth::check()): ?>
                    <?php
                    if(Auth::user()->shipping_address){
                        $shippingcost = \App\Models\ShippingAddess::where('id', Auth::user()->shipping_address)->first()->shipping_cost;
                    }else{
                        $shippingcost = 50;
                    }
                    ?>
                     <tr class="cart-shipping">
                        <th><?php echo e(__('Delivery Charge')); ?></th>
                        <td class="text-right">
                            <span class="text-italic"><?php echo e(single_price($shippingcost)); ?></span>
                            
                        </td>
                    </tr>
                <?php else: ?>
                <?php
                    $shippingcost = 50;
                ?>
                 <tr class="cart-shipping">
                    <th><?php echo e(__('Delivery Charge')); ?></th>
                    <td class="text-right">
                        <span class="text-italic"><?php echo e(single_price($shippingcost)); ?></span>
                        
                    </td>
                </tr>
                <?php endif; ?>

                <tr class="cart-total">
                    <th><span><?php echo e(__('Discount')); ?></span></th>
                    <td class="text-right">
                        <strong><span><?php echo e(single_price($damount)); ?></span></strong>
                    </td>
                </tr>



                <tr class="cart-total">
                    <th><span class="strong-600"><?php echo e(__('Total')); ?></span></th>
                    <td class="text-right">
                        <strong><span><?php echo e(single_price($subtotal+$tax+$shippingcost-$damount)); ?></span></strong>
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>
</div>
<?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/partials/cart_summary.blade.php ENDPATH**/ ?>