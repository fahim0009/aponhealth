<?php $__env->startSection('title'); ?>
    Login
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <section class="gry-bg py-5">
        <div class="profile">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 offset-xl-1">
                        <div class="card">
                            <div class="text-center px-35 pt-5">
                                <h3 class="heading heading-4 strong-500">
                                    <?php echo e(__('Login to your account.')); ?>

                                </h3>
                            </div>
                            <div class="px-5 py-3 py-lg-5">
                                <div class="row align-items-center">
                                    <div class="col-12 col-lg">
                                        <form class="form-default" role="form" action="<?php echo e(route('user.login.submit')); ?>" method="POST">
                                            <?php echo csrf_field(); ?>
                                            <div class="col-lg-12">
                                                <?php if($errors->has('email')): ?>
                                                <p style="color: rgb(155, 37, 37)">These credentials do not match our records.</p>
                                                <?php elseif($errors->has('password')): ?>
                                                <p style="color: rgb(155, 37, 37)">These credentials do not match our records.</p>
                                                <?php elseif($errors->has('account')): ?>
                                                <p style="color: rgb(155, 37, 37)">Sorry! Account Not Found</p>
                                                <?php endif; ?>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    
                                                    <div class="form-group">
                                                        <!-- <label><?php echo e(__('email')); ?></label> -->
                                                        <div class="input-group input-group--style-1">
                                                            <input type="phone" class="form-control form-control-sm <?php echo e($errors->has('email') ? ' is-invalid' : ''); ?>" value="<?php echo e(old('phone')); ?>" placeholder="<?php echo e(__('Phone')); ?>" name="email" id="email" required>
                                                            <span class="input-group-addon">
                                                                <i class="text-md la la-user"></i>
                                                            </span>
                                                        </div>


                                                        

                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <!-- <label><?php echo e(__('password')); ?></label> -->
                                                        <div class="input-group input-group--style-1">
                                                            <input type="password" class="form-control <?php echo e($errors->has('password') ? ' is-invalid' : ''); ?>" placeholder="<?php echo e(__('Password')); ?>" name="password" id="password" required>
                                                            <span class="input-group-addon">
                                                                <i class="text-md la la-lock"></i>
                                                            </span>
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-6">
                                                    
                                                    <input id="demo-form-checkbox" class="magic-checkbox" type="checkbox" name="remember" id="remember" checked readonly hidden>
                                                </div>
                                                <div class="col-6 text-right">
                                                    <a href="<?php echo e(route('forget.password.get')); ?>" class="link link-xs link--style-3"><?php echo e(__('Forgot password?')); ?></a>
                                                    
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col text-center">
                                                    <button type="submit" class="btn btn-styled btn-base-1 btn-md w-100"><?php echo e(__('Login')); ?></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="col-lg-1 text-center align-self-stretch">
                                        <div class="border-right h-100 mx-auto" style="width:1px;"></div>
                                    </div>
                                    <div class="col-12 col-lg">
                                        <?php if(\App\Models\BusinessSetting::where('type', 'google_login')->first()->value == 1): ?>
                                            <a href="<?php echo e(route('social.login', ['provider' => 'google'])); ?>" class="btn btn-styled btn-block btn-google btn-icon--2 btn-icon-left px-4 my-4">
                                                <i class="icon fa fa-google"></i> <?php echo e(__('Login with Google')); ?>

                                            </a>
                                        <?php endif; ?>
                                        <?php if(\App\Models\BusinessSetting::where('type', 'facebook_login')->first()->value == 1): ?>
                                            <a href="<?php echo e(route('social.login', ['provider' => 'facebook'])); ?>" class="btn btn-styled btn-block btn-facebook btn-icon--2 btn-icon-left px-4 my-4">
                                                <i class="icon fa fa-facebook"></i> <?php echo e(__('Login with Facebook')); ?>

                                            </a>
                                        <?php endif; ?>
                                        <?php if(\App\Models\BusinessSetting::where('type', 'twitter_login')->first()->value == 1): ?>
                                        <a href="<?php echo e(route('social.login', ['provider' => 'twitter'])); ?>" class="btn btn-styled btn-block btn-twitter btn-icon--2 btn-icon-left px-4 my-4">
                                            <i class="icon fa fa-twitter"></i> <?php echo e(__('Login with Twitter')); ?>

                                        </a>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center px-35 pb-3">
                                <p class="text-md">
                                    <?php echo e(__('Need an account?')); ?> <a href="<?php echo e(route('user.registration')); ?>" class="strong-600"><?php echo e(__('Register Now')); ?></a>
                                </p>
                            </div>
                        </div>
                    </div>

                    

                </div>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript">
        function autoFillSeller(){
            $('#email').val('seller@example.com');
            $('#password').val('123456');
        }
        function autoFillCustomer(){
            $('#email').val('customer@example.com');
            $('#password').val('123456');
        }
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/user_login.blade.php ENDPATH**/ ?>