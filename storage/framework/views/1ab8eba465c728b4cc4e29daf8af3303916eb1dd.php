<?php $__env->startSection('content'); ?>
<div class="dashbaord-main">
    <?php if(Auth::user()->user_type == 'seller'): ?>
        <?php echo $__env->make('frontend.inc.seller_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php elseif(Auth::user()->user_type == 'customer'): ?>
        <?php echo $__env->make('frontend.inc.customer_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php elseif(Auth::user()->user_type == 'doctor'): ?>
        <?php echo $__env->make('frontend.inc.doctor_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>
    <div class="rightSection">
        <div class="topbar">
            <div class="fold" onclick='foldSidebar();'>
                <span class="iconify" data-icon="eva:menu-fill"></span>
            </div>
            <!-- <img src="images/logo.png" class="mobile-menu-logo"> -->
            <div class="right-element">
                <div class="dropdown">
                    <a class="btn dropdown-toggle profile-manage" href="#" role="button" id="dropdownMenuLink"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <?php if(!empty(Auth::user()->avatar_original)): ?>
                        <img src="<?php echo e(asset(Auth::user()->avatar_original)); ?>" alt="">
                        <?php else: ?>
                            <img src="<?php echo e(asset('uploads/1.jpg')); ?>" alt="">
                        <?php endif; ?>
                    </a>

                    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                        <a class="dropdown-item" href="<?php echo e(route('profile')); ?>"><span class="iconify"
                                data-icon="carbon:user-avatar"></span> Profile</a>
                        <a class="dropdown-item" href="<?php echo e(route('logout')); ?>"><span class="iconify"
                                data-icon="ion:log-out-outline"></span> Log Out</a>
                    </div>
                </div>
            </div>

        </div>
        <div class="dashboard-content">

            <section class="profile">
                <div class="title-section">
                    <span class="iconify" data-icon="icomoon-free:profile"></span> Mange profile
                </div>
                <div class="infoBox mt-3">
                    <div class="row col-lg-12 mx-auto">
                        <div class="col-lg-11 mx-auto">
                            <form class="form-custom mt-4" action="<?php echo e(route('customer.profile.update')); ?>" method="POST" enctype="multipart/form-data">
                                <?php echo csrf_field(); ?>
                                <div class="row shadow-sm">
                                    <div class="col-lg-4 col-md-6 bg-white border-right">
                                            <div class="form-container ">
                                                <div class="form-group addProfile ">
                                                    <?php if(!empty(Auth::user()->avatar_original)): ?>
                                                    <img src="<?php echo e(asset(Auth::user()->avatar_original)); ?>" height="100px" alt="">
                                                    <?php else: ?>
                                                        <img src="<?php echo e(asset('uploads/1.jpg')); ?>" alt="">
                                                    <?php endif; ?>
                                                    <input type="file" name="photo" id="file-3" class="profile-upload" accept="image/*" />
                                                </div>
                                                <div class="form-group">
                                                    <label>Name </label>
                                                    <input type="text" class="form-control" placeholder="<?php echo e(__('Enter Name here')); ?>" name="name" value="<?php echo e(Auth::user()->name); ?>">
                                                </div>
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input type="email" class="form-control" placeholder="<?php echo e(__('Your Email')); ?>" name="email" id="email" value="<?php echo e(Auth::user()->email); ?>" <?php if(!empty(Auth::user()->email)): ?> readonly <?php endif; ?>>
                                                    <span id="error_email"></span>
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
                                                </div>
                                            </div>
                                    </div>
                                    <div class="col-lg-8 col-md-6 bg-white">
                                        <div class="form-container">
                                            <div class="form-group">
                                                <label>Phone </label>
                                                <input type="text" class="form-control" placeholder="Enter Phone" name="phone" value="<?php echo e(Auth::user()->phone); ?>" <?php if(!empty(Auth::user()->phone)): ?> readonly <?php endif; ?>>
                                            </div>
                                            <div class="form-group">
                                                <label>Address </label>
                                                <input type="text" class="form-control" placeholder="Enter Address" name="address" value="<?php echo e(Auth::user()->address); ?>">
                                            </div>

                                        <div class="form-row">
                                            <div class="form-group">
                                                <label>Region</label>
                                                
                                                <select class="form-control" data-placeholder="Select your region" id="division" name="region" required>
                                                    <option value="">---select Region---</option>
                                                    <?php $__currentLoopData = $region; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $division): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <option value="<?php echo e($division->id); ?>" <?php if(Auth::user()->region==$division->id): ?> selected <?php endif; ?> ><?php echo e($division->name); ?></option>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label>City</label>
                                                
                                                <select class="form-control" data-placeholder="Select your City" id="district" name="city" required>
                                                    <?php $__currentLoopData = $districts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $districts): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <option value="<?php echo e($districts->id); ?>" <?php if($districts->id==Auth::user()->city): ?> selected <?php endif; ?>><?php echo e($districts->name); ?></option>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </select>
                                            </div>
                                        </div>
                                            <div class="form-row">
                                                <div class="form-group">
                                                    <label>Area</label>
                                                    
                                                    <select class="form-control" data-placeholder="Select your Area" id="upazila" name="area" required>
                                                        <?php $__currentLoopData = $upazilas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $upazilas): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <option value="<?php echo e($upazilas->id); ?>" <?php if($upazilas->id==Auth::user()->area): ?> selected <?php endif; ?>><?php echo e($upazilas->name); ?></option>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label>Post Code</label>
                                                    <input type="text" class="form-control" placeholder="Your Post code" name="postal_code" maxlength="4" value="<?php echo e(Auth::user()->postal_code); ?>">
                                                </div>
                                            </div>

                                            <select class="form-control" data-placeholder="Select shipping Cost " id="paid" name="shipping_cost" hidden readonly >
                                                <option value="<?php echo e(Auth::user()->shipping_cost); ?>"><?php echo e(Auth::user()->shipping_cost); ?></option>
                                            </select>

                                            <button type="submit" class="text-white btn-theme float-right mb-3">Update Profile
                                        </button>

                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </section>

            <section class="profile">
                <div class="title-section">
                    <span class="iconify mr-1" data-icon="icomoon-free:profile"></span> Change Password
                </div>

                <div class="infoBox mt-3">
                    <div class="row col-lg-12 mx-auto">
                        <div class="col-lg-11 mx-auto">
                            <form class="form-custom mt-4"  action="<?php echo e(route('changepassword.update')); ?>" method="POST">
                                <?php echo csrf_field(); ?>
                            <div class="row shadow-sm">
                                <div class="col-lg-4 col-md-6 bg-white border-right">
                                        <div class="form-container text-center ">
                                          <img class="img-fluid img25" src="<?php echo e(asset('frontend/images/images/password.svg')); ?>" alt="">
                                        </div>
                                </div>
                                <div class="col-lg-8 col-md-6 bg-white">
                                
                                <div class="form-box-title px-3 py-2">
                                    <?php echo e(__('Change password')); ?>

                                </div>
                                <div class="ermsg" id="ermsg"></div>
                                
                                       <div class="form-container pt-5">
                                        <div class="form-group">
                                            <label>Current Password </label>
                                            <input type="password" class="form-control" placeholder="Current Password " name="current_password" id="current_password">
                                            <input type="hidden" name="profileid" id="profileid" value="<?php echo e(Auth::user()->id); ?>">
                                        </div>
                                       <div class="form-row">
                                        <div class="form-group">
                                            <label>New Password</label>
                                            <input type="password" class="form-control" placeholder="New Password " name="new_password" id="new_password">
                                        </div>
                                        <div class="form-group">
                                            <label>Confirm Password</label>
                                            <input type="password" class="form-control" placeholder="Confirm Password " name="confirm_password" id="confirm_password">
                                        </div>
                                       </div>
                                        <button type="submit" class="text-white btn-theme float-right mb-3">Update Password
                                    </button>

                                       </div>
                                </div>
                            </div>
                        </form>
                        </div>
                    </div>
                </div>

            </section>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script>
    $(document).ready(function() {
        $('#email').keyup(function(){
            // alert('test');
          var email = $('#email').val();
          var error_email = '';
          var email = $('#email').val();
          var _token = $('input[name="_token"]').val();
           $.ajax({
            url:"<?php echo e(route('email.check')); ?>",
            method:"POST",
            data:{email:email, _token:_token},

            success:function(result)
            {
             if(result == 'unique')
             {
              $('#error_email').html('<label class="text-success">Email Available</label>');
              $('#email').removeClass('has-error');
              $('#save').attr('disabled', false);
             }
             else
             {
              $('#error_email').html('<label class="text-danger">Already have a Account</label>');
              $('#email').addClass('has-error');
              $('#save').attr('disabled', 'disabled');
             }
            }
           });
        });
    });
</script>
<script>
    $("#division").on('change',function(e){
      e.preventDefault();
      var ddlDistrict=$("#district");
      $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });
      $.ajax({
        type:'POST',
        url: "<?php echo e(url('/district-by-division')); ?>",
        data:{_token:$('input[name=_token]').val(),division:$(this).val()},
        success:function(response){
            // var jsonData=JSON.parse(response);
            $('option', ddlDistrict).remove();
            $('#district').append('<option value="">---Select City---</option>');
            $.each(response, function(){
              $('<option/>', {
                'value': this.id,
                'text': this.name
              }).appendTo('#district');
            });
          }

      });
    });

    $("#district").on('change',function(e){
      e.preventDefault();
      var ddlthana=$("#upazila");
      $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });
      $.ajax({
        type:'POST',
        url: "<?php echo e(url('/thana-by-district')); ?>",
        data:{_token:$('input[name=_token]').val(),districts:$(this).val()},
        success:function(response){
            // var jsonData=JSON.parse(response);
            $('option', ddlthana).remove();
            $('#upazila').append('<option value="">---Select Area---</option>');
            $.each(response, function(){
              $('<option/>', {
                'value': this.id,
                'text': this.name
              }).appendTo('#upazila');
            });
          }
        });
    });
    $("body").delegate("#upazila","change",function(e){
    // $("#upazila").on('change',function(e){
      e.preventDefault();
      var ddlship=$("#paid");
      $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });
      $.ajax({
        type:'POST',
        url: "<?php echo e(url('/ship-by-thana')); ?>",
        data:{_token:$('input[name=_token]').val(),upazilas:$(this).val()},
        success:function(response){
            $('option', ddlship).remove();
            $.each(response, function(){
              $('<option/>', {
                'value': this.shipping_cost,
                'text': this.shipping_cost
              }).appendTo('#paid');

            });
          }

        });
    });

  </script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/customer/profile.blade.php ENDPATH**/ ?>