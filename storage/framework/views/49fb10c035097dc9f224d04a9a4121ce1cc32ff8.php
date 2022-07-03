<?php if(Session::has('cart')): ?>
<section class="cart">
    <div class="inner">
        <div class="left">
            <div class="overflow">
                <table class="table table-custom shadow-sm">
                    <thead>
                        <tr>
                            <th> </th>
                            <th width="200px">Product Name</th>
                            <th>Price</th>
                            <th>quantity</th>
                            <th>Total</th>
                            <th class="text-center">Cancel</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $total = 0;
                        ?>
                        <?php $__currentLoopData = Session::get('cart'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $cartItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php
                        $product = \App\Models\Product::find($cartItem['id']);
                        $total = $total + $cartItem['price']*$cartItem['quantity'];
                        $product_name_with_choice = $product->name;
                        if(isset($cartItem['color'])){
                            $product_name_with_choice .= ' - '.\App\Models\Color::where('code', $cartItem['color'])->first()->name;
                        }
                        foreach (json_decode($product->choice_options) as $choice){
                            $str = $choice->name; // example $str =  choice_0
                            $product_name_with_choice .= ' - '.$cartItem[$str];
                        }
                        ?>
                        <tr>
                            <td><img src="<?php echo e(asset($product->thumbnail_img)); ?>" height="30px"></td>
                            <td width="200px"><?php echo e($product_name_with_choice); ?></td>
                            <td class="product-price"><span style="border:0; outline:0;"><?php echo e(single_price($cartItem['price'])); ?></span></td>
                            <td>
                                <div class="product-quantity">
                                    <button class="btn btn-number" type="button" data-type="minus" data-field="quantity[<?php echo e($key); ?>]">-</button>
                                    <input type="number" name="quantity[<?php echo e($key); ?>]" placeholder="1" value="<?php echo e($cartItem['quantity']); ?>" min="1" max="100" onchange="updateQuantity(<?php echo e($key); ?>, this)">
                                    <button class="btn btn-number" type="button" data-type="plus" data-field="quantity[<?php echo e($key); ?>]">+</button>
                                </div>
                            </td>
                            <td class="product-total">
                                <span><?php echo e(single_price($cartItem['price']*$cartItem['quantity'])); ?></span>
                            </td>
                            <td class="text-center"><span title="Remove this product" onclick="removeFromCartView(event, <?php echo e($key); ?>)" class="iconify curp" data-icon="emojione:cross-mark-button"></span></td>

                        </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                </table>
            </div>
            <div class="well align-items-center mt-3 d-flex flex-wrap justify-content-between">
               <div><a href="<?php echo e(route('home')); ?>">Back to Home </a></div>
               <div>
                <?php if(Auth::check()): ?>
                <a href="<?php echo e(route('checkout.shipping_info')); ?>" class="btn-theme text-white">Continue to Shipping</a></div>
            <?php else: ?>
                <a href="<?php echo e(route('cart.login')); ?>" class="btn-theme text-white">Continue to Shipping</a></div>
            <?php endif; ?>

            </div>
        </div>
        <div class="right">
            <div class="cartDetails mb-3">
                <div class="title py-2">
                    <div class="font-weight-bold pl-1"><span class="iconify" data-icon="bx:bxs-cart-download"></span> Cart Details </div>
                    <div class="badge badge-primary">Total: <?php echo e(count(Session::get('cart'))); ?> <?php echo e(__('Items')); ?></div>
                </div>
                <div class="heading">
                    <span>Product Name</span>
                    <span>Price</span>
                </div>
                <div class="product-list">
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
                    <div class="product font-weight-bold">
                        <div class="name"><?php echo e($product_name_with_choice); ?>

                            <strong>× <?php echo e($cartItem['quantity']); ?></strong></div>
                        <div class="price"><span class="pl-4"><?php echo e(single_price($cartItem['price']*$cartItem['quantity'])); ?></span></div>
                    </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
                <hr>
                <div class="price">
                    <div> SUBTOTAL</div>
                    <div> <?php echo e(single_price($subtotal)); ?></div>
                </div>
                <div class="price">
                    <div>tax</div>
                    <div> <?php echo e(single_price($tax)); ?></div>
                </div>
                <div class="price">
                    <?php if(Auth::check()): ?>
                        <?php
                        if(Auth::user()->shipping_address){
                            $shippingcost = \App\Models\ShippingAddess::where('id', Auth::user()->shipping_address)->first()->shipping_cost;
                        }else{
                            $shippingcost = 50;
                        }
                        ?>
                        <div>Delivery Charge</div>
                        <div> <?php echo e(single_price($shippingcost)); ?></div>
                    <?php else: ?>
                    <?php
                        $shippingcost = 50;
                    ?>
                        <div>Delivery Charge</div>
                        <div> <?php echo e(single_price($shippingcost)); ?></div>
                    <?php endif; ?>
                </div>
                <div class="price">
                    <div class=" font-weight-bold"> TOTAL</div>
                    <div class=" font-weight-bold"> <?php echo e(single_price($subtotal+$tax+$shippingcost)); ?></div>
                </div>
            </div>
        </div>
</section>
<?php else: ?>
    <div class="dc-header">
        <h3 class="heading heading-6 strong-700"><?php echo e(__('Your Cart is empty')); ?></h3>
    </div>
    <?php endif; ?>
<script type="text/javascript">
    cartQuantityInitialize();
</script>
<?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/partials/cart_details.blade.php ENDPATH**/ ?>