<div>
    <?php
    $email =\App\Models\EmailTemplete::where('templete','=', 'medication_order')->first();
    echo $email->description;
    echo $email->footer;
    ?>
    <table> Your product list: <br>
        <?php $__currentLoopData = $order->medicationDetails; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $orderDetail): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php echo e($orderDetail->product->name); ?> (<?php echo e($orderDetail->variation); ?>) = <?php echo e(single_price($orderDetail->price+$orderDetail->tax)); ?> <br>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </table>
    <br> we will delivered your invoice soon.
    <?php
    echo $email->footer;
    ?>
</div>
<?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/emails/medication_order.blade.php ENDPATH**/ ?>