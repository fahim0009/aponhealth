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
                            <div class="px-5 py-3 py-lg-5">
                                <div class="row align-items-center">
                                    <div class="col-12 col-lg">
                                        <div class="text-center">
                                            <h3 class="heading heading-4 strong-500">
                                                <?php echo e(__('Do you already have Account?')); ?>

                                            </h3>
                                            <h3 class="heading heading-4 strong-500">
                                                <?php echo e(__('Login')); ?>

                                            </h3>
                                        </div>
                                        <form class="form-default" role="form" action="<?php echo e(route('cart.login.submit')); ?>" method="POST">
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
                                                        <div class="input-group input-group--style-1">
                                                            <input type="text" class="form-control form-control-sm <?php echo e($errors->has('email') ? ' is-invalid' : ''); ?>" max="11" placeholder="<?php echo e(__('Phone')); ?>" name="email" id="email" required>
                                                            <span class="input-group-addon">
                                                                <i class="text-md la la-mobile"></i>
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
                                                    
                                                    <input id="demo-form-checkbox" class="magic-checkbox" type="checkbox" name="remember" id="remember" checked hidden readonly>
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
                                        <div class="border-right h-50 mx-auto" style="width:2px;"></div>
                                      <div class="mb-5">Or</div>
                                        <div class="border-right h-50 mx-auto" style="width:2px;"></div>
                                    </div>
                                    <div class="col-12 col-lg">
                                        <div class="text-center">
                                            <h3 class="heading heading-4 strong-500">
                                                <?php echo e(__('New to Apon Health? Quickly Register for an account now.')); ?>

                                            </h3>

                                        </div>
                                        
                                        

                                            <div class="ermsg"></div>
                                            
                                            <form class="form-default" role="form" action="<?php echo e(route('user.register')); ?>" method="POST">
                                                <?php echo csrf_field(); ?>
                                                <input type="hidden" name="cart" value="cart" readonly>
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <div class="input-group input-group--style-1">
                                                                <input type="text" class="form-control<?php echo e($errors->has('name') ? ' is-invalid' : ''); ?>" value="<?php echo e(old('name')); ?>" placeholder="<?php echo e(__('Name')); ?>" name="name" id="name" required>
                                                                <span class="input-group-addon">
                                                                    <i class="text-md la la-user"></i>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                            <span class="invalid-feedback">
                                                                <strong><?php echo e($errors->first('name')); ?></strong>
                                                                <strong><?php echo e($message); ?></strong>
                                                            </span>
                                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <div class="input-group input-group--style-1">
                                                                <input id="phone" type="text" class="form-control <?php $__errorArgs = ['error'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" placeholder="<?php echo e(__('Phone')); ?>" name="email" required>
                                                                <span class="input-group-addon">
                                                                    <i class="text-md la la-mobile"></i>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                            <span class="invalid-feedback">
                                                                <strong><?php echo e($errors->first('email')); ?></strong>
                                                                <strong><?php echo e($message); ?></strong>
                                                            </span>
                                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                                        <span id="error_email"></span>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <div class="input-group input-group--style-1">
                                                                <input type="password" id="password2" class="form-control" placeholder="<?php echo e(__('Password')); ?>" name="password" pattern="{6}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required>
                                                                <span class="input-group-addon">
                                                                    <i class="text-md la la-lock"></i>
                                                                </span>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="clear"></div>

                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="form-group">
                                                            <div class="input-group input-group--style-1">
                                                                <input type="password" class="form-control" placeholder="<?php echo e(__('Confirm Password')); ?>" name="password_confirmation" id="password_confirmation" required>
                                                                <span class="input-group-addon">
                                                                    <i class="text-md la la-lock"></i>
                                                                </span>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div id="message">
                                                            <p><span id='messagev'></span></p>
                                                        </div>
                                                    </div>
                                                </div>
                                                

                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="checkbox pad-btm text-left">
                                                            <input class="magic-checkbox" type="checkbox" name="checkbox_example_1" id="checkboxExample_1a" required>
                                                            <label for="checkboxExample_1a" class="text-sm">By signing up you agree to our <a href="<?php echo e(route('terms')); ?>">terms and conditions</a></label>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row align-items-center">
                                                    <div class="col-12 text-right  mt-3">
                                                        <button type="submit" name="register" id="register" class="btn btn-styled btn-base-1 w-100 btn-md"><?php echo e(__('Create Account')); ?></button>
                                                    </div>
                                                </div>
                                            </form>
                                        
                                        <?php echo e(csrf_field()); ?>

                                        
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
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script>
        $(document).ready(function() {
            $('#phone').keyup(function(){
              var error_email = '';
              var email = $('#phone').val();
              var _token = $('input[name="_token"]').val();
          var filter = /(^(01){1}[3456789]{1}(\d){8})$/;

          if(!filter.test(email))
          {
            $('#error_email').html('<label class="text-danger">Invalid Phone Number</label>');
            $('#phone').addClass('has-error');
            $('#register').attr('disabled', 'disabled');
          } else if (email.length > 11){
            $('#error_email').html('<label class="text-danger">Invalid Phone Number</label>');
            $('#phone').addClass('has-error');
            $('#register').attr('disabled', 'disabled');
          } else {
               $.ajax({
                url:"<?php echo e(route('email_available.check')); ?>",
                method:"POST",
                data:{email:email, _token:_token},
                success:function(result)
                {
                 if(result == 'unique')
                 {
                  $('#error_email').html('<label class="text-success">Phone Number Available</label>');
                  $('#phone').removeClass('has-error');
                  $('#register').attr('disabled', false);
                 }
                 else
                 {
                  $('#error_email').html('<label class="text-danger">Already have a Account</label>');
                  $('#phone').addClass('has-error');
                  $('#register').attr('disabled', 'disabled');
                 }
                }
               })
          }
             });

            });
            </script>
            <script>
                $('#password_confirmation').on('keyup', function () {
                    if ($('#password2').val() == $('#password_confirmation').val()) {
                        $('#messagev').html('Password Match').css('color', 'green');
                        $('#messagev').addClass('valid');
                        $('#messagev').removeClass('invalid');
                        $('#register').attr('disabled', false);
                    }else{
                        $('#messagev').html('Password doesn\'t Match').css('color', 'red');
                        $('#messagev').addClass('invalid');
                        $('#messagev').removeClass('valid')
                        $('#register').attr('disabled', 'disabled');
                    }
                });
            </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/cart_login.blade.php ENDPATH**/ ?>