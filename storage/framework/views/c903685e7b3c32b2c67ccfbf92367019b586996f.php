<div>
    <?php
    $email =\App\Models\EmailTemplete::where('templete','=', 'new_doctor')->first();
    echo $email->description;
    echo $email->footer;
    ?>
    <h1>Your Phone: <?php echo e($mail['phone']); ?></h1>
    <h1>Your Password is: <?php echo e($mail['msg']); ?></h1>
    <?php
    echo $email->footer;
    ?>
</div>
<?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/emails/doctor.blade.php ENDPATH**/ ?>