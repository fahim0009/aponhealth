<?php $__env->startSection('content'); ?>
<style>
    .top-area .content .heading {
        font-size: 30px;
        font-weight: 700;
    }
    .top-area .content .text {
        margin-bottom: 0;
        font-size: 16px;
        line-height: 26px;
    }
    .top-area .content .link {
        font-weight: 700;
        font-size: 14px;
        text-decoration: underline;
    }
    .justify-content-center {
        -ms-flex-pack: center!important;
        justify-content: center!important;
        text-align: center;
    }
</style>
<div class="container">
    <div class="top-area justify-content-center">
        <div class="content">
            <h4 class="heading">
                THANK YOU FOR YOUR PURCHASE.
            </h4>
            <p class="text">
                We'll email you an order confirmation with details and tracking info.
            </p>
            <a href="<?php echo e(route('home')); ?>" class="link">Get Back To Our Homepage</a>
        </div>
    </div>
    <div class="card mt-4">
        <div class="card-header py-2 px-3 heading-6 strong-600 clearfix">
            <div class="float-left"><?php echo e(__('Order Summary')); ?></div>
        </div>
        <div class="card-body pb-0">
            <div class="row">
                <div class="col-lg-6">
                    <table class="details-table table">
                        <tr>
                            <td class="w-50 strong-600"><?php echo e(__('Order id')); ?>:</td>
                            <td><?php echo e($order->code); ?></td>
                        </tr>
                        <tr>
                            <td class="w-50 strong-600"><?php echo e(__('Customer')); ?>:</td>
                            <td><?php echo e(json_decode($order->shipping_address)->name); ?></td>
                        </tr>
                        <tr>
                            <td class="w-50 strong-600"><?php echo e(__('Email')); ?>:</td>
                            
                            <td><?php echo e(json_decode($order->shipping_address)->email); ?> </td>
                        </tr>
                        <tr>
                            <td class="w-50 strong-600"><?php echo e(__('Shipping address')); ?>:</td>
                            <td><?php echo e(json_decode($order->shipping_address)->address); ?>, <?php echo e(json_decode($order->shipping_address)->area); ?>, <?php echo e(json_decode($order->shipping_address)->city); ?>-<?php echo e(json_decode($order->shipping_address)->post_code); ?></td>
                        </tr>
                    </table>
                </div>
                <div class="col-lg-6">
                    <table class="details-table table">
                        <tr>
                            <td class="w-50 strong-600"><?php echo e(__('Order date')); ?>:</td>
                            <td><?php echo e(date('d-m-Y H:m A', $order->date)); ?></td>
                        </tr>
                        <tr>
                            <td class="w-50 strong-600"><?php echo e(__('Delivery status')); ?>:</td>
                            <td><?php echo e(ucfirst(str_replace('_', ' ', \App\Models\Order::where('id','=',$order->id)->first()->delivery_status))); ?></td>
                        </tr>
                        <tr>
                            <td class="w-50 strong-600"><?php echo e(__('Total amount')); ?>:</td>
                            <td><?php echo e(single_price($order->grand_total)); ?></td>
                        </tr>
                        <tr>
                            <td class="w-50 strong-600"><?php echo e(__('Shipping method')); ?>:</td>
                            <td><?php echo e(__('Flat shipping rate')); ?></td>
                        </tr>
                        <tr>
                            <td class="w-50 strong-600"><?php echo e(__('Payment method')); ?>:</td>
                            <td><?php echo e($order->payment_type); ?></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-9">
            <div class="card mt-4">
                <div class="card-header py-2 px-3 heading-6 strong-600"><?php echo e(__('Order Details')); ?></div>
                <div class="card-body pb-0">
                    <table class="details-table table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th width="40%"><?php echo e(__('Product')); ?></th>
                                <th><?php echo e(__('Variation')); ?></th>
                                <th><?php echo e(__('Quantity')); ?></th>
                                <th><?php echo e(__('Price')); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__currentLoopData = $order->orderDetails; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $orderDetail): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td><?php echo e($key+1); ?></td>
                                    <td><a href="<?php echo e(route('product', $orderDetail->product->slug)); ?>" target="_blank"><?php echo e($orderDetail->product->name); ?></a></td>
                                    <td>
                                        <?php echo e($orderDetail->variation); ?>

                                    </td>
                                    <td>
                                        <?php echo e($orderDetail->quantity); ?>

                                    </td>
                                    <td><?php echo e(single_price($orderDetail->price)); ?></td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="card mt-4">
                <div class="card-header py-2 px-3 heading-6 strong-600"><?php echo e(__('Order Ammount')); ?></div>
                <div class="card-body pb-0">
                    <table class="table details-table">
                        <tbody>
                            <tr>
                                <th><?php echo e(__('Subtotal')); ?></th>
                                <td class="text-right">
                                    <span class="strong-600"><?php echo e(single_price($order->orderDetails->sum('price'))); ?></span>
                                </td>
                            </tr>
                            <tr>
                                <th><?php echo e(__('Shipping')); ?></th>
                                <td class="text-right">
                                    <span class="text-italic"><?php echo e(single_price($order->shipping_cost)); ?></span>
                                </td>
                            </tr>
                            <!--<tr>-->
                            <!--    <th><?php echo e(__('Tax')); ?></th>-->
                            <!--    <td class="text-right">-->
                            <!--        <span class="text-italic"><?php echo e(single_price($order->orderDetails->sum('tax'))); ?></span>-->
                            <!--    </td>-->
                            <!--</tr>-->
                            <tr>
                                <th><span><?php echo e(__('Discount')); ?></span></th>
                                <td class="text-right">
                                    <span><?php echo e(single_price($order->discount)); ?></span>
                                </td>
                            </tr>
                            <tr>
                                <th><span class="strong-600"><?php echo e(__('Total')); ?></span></th>
                                <td class="text-right">
                                    <strong><span><?php echo e(single_price($order->grand_total)); ?></span></strong>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/partials/success.blade.php ENDPATH**/ ?>