<div>
    <?php
    $email =\App\Models\EmailTemplete::where('templete','=', 'invoice')->first();
    echo $email->description;
    echo $email->footer;
    ?>
</div>
<?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/emails/invoice.blade.php ENDPATH**/ ?>