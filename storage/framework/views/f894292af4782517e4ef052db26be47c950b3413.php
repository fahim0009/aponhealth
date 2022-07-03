<?php $__env->startSection('content'); ?>
<main class="login-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Reset Password</div>
                    <h4 class="col-md-12 col-form-label ml-5">Your Phone no:<?php echo e($phone); ?> </h4>
                    <div class="card-body">
                      <?php if(Session::has('message')): ?>
                           <div class="alert alert-success" role="alert">
                              <?php echo e(Session::get('message')); ?>

                          </div>
                      <?php endif; ?>                        
                        <form action="<?php echo e(route('otp.verify')); ?>" method="POST">
                            <?php echo csrf_field(); ?>
                            <div class="form-group row">                 
                                <label for="email_address" class="col-md-4 col-form-label text-md-right">Enter your OTP code</label>
                                <div class="col-md-6">
                                    <input type="text" id="email_address" class="form-control" name="otp" maxlength="4" required autofocus>
                                    <?php if($errors->has('email')): ?>
                                        <span class="text-danger"><?php echo e($errors->first('email')); ?></span>
                                    <?php endif; ?>
                                </div>
                                <input type="text" class="form-control" value="<?php echo e($phone); ?>" name="phone" hidden readonly>

                            </div>
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    Verify
                                </button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
  </main>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/auth/otp_verify.blade.php ENDPATH**/ ?>