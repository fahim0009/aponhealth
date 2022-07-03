<?php $__env->startSection('title'); ?>
    Apon Health - Online Drug House
<?php $__env->stopSection(); ?>
<?php $__env->startSection('css'); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>

<div class="card">
  <div class="card-body">
        <form method="POST" action="<?php echo e(route('smsvarified')); ?>">
            <?php echo csrf_field(); ?>

            <div class="form-group row">
            <h3 style="text-align:center;width:100%">Verificaton Code has sent to your Mobile No: <?php echo e($user->phone); ?>.</h3>
            </div>
            <div class="form-group row">
                <label for="verification_code" class="col-md-4 col-form-label text-md-right"><?php echo e(__('Enter Verificaton Code')); ?></label>

                <div class="col-md-6">
                    <input id="verification_code" type="text" class="form-control" name="verification_code"required autocomplete="verification_code" autofocus maxlength="4">


                    <input type="hidden" name="user_id" value="<?php echo e($user->id); ?>">
                    
                </div>
            </div>

            <div class="form-group row mb-0">
                <div class="col-md-6 offset-md-4">
                    <button type="submit" class="btn btn-primary">
                        <?php echo e(__('Verify')); ?>

                    </button>
                </div>
            </div>
        </form>
        <br>
        <form action="<?php echo e(route('resend.otp')); ?>" method="post">
            <?php echo csrf_field(); ?>
            <div class="form-group row mb-0">
                <div class="col-md-6 offset-md-4">
                    <input type="hidden" name="phone" value="<?php echo e($user->phone); ?>">
                    <input type="hidden" name="user_id" value="<?php echo e($user->id); ?>">
                    <button type="submit" class="btn btn-primary float-right" style="margin-top: -58px;">
                        <?php echo e(__('Resend Again')); ?>

                    </button>
                </div>
            </div>
        </form>
    </div>
</div>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
<script>



<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/verify.blade.php ENDPATH**/ ?>