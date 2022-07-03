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
            <div style="width: 80%; margin: 0 auto">

                <form class="" action="<?php echo e(route('customer.shipping.address')); ?>" method="POST">
                    <?php echo csrf_field(); ?>
                    <input type="hidden" name="redirect" value="<?php echo e($redirect); ?>">
                    <div class="form-box bg-white mt-4">
                        <div class="form-box-title px-3 py-2">
                            <?php echo e(__('Shipping info')); ?>

                        </div>
                        <div class="form-box-content p-3">

                            <div class="row">
                                <div class="col-md-2">
                                    <label><?php echo e(__('Full Name')); ?></label>
                                </div>
                                <div class="col-md-10">
                                    <input type="text" class="form-control mb-3" placeholder="Your Name" name="name" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2">
                                    <label><?php echo e(__('Email')); ?></label>
                                </div>
                                <div class="col-md-10">
                                    <input type="email" class="form-control mb-3" placeholder="Your Email Address" name="email" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2">
                                    <label><?php echo e(__('Phone Number')); ?></label>
                                </div>
                                <div class="col-md-10">
                                    <input type="text" class="form-control mb-3" placeholder="Your Phone Number" name="phone" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2">
                                    <label><?php echo e(__('Address')); ?></label>
                                </div>
                                <div class="col-md-10">
                                    <textarea class="form-control textarea-autogrow mb-3" placeholder="Your Address" rows="1" name="address" required></textarea>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2">
                                    <label><?php echo e(__('Region')); ?></label>
                                </div>
                                <div class="col-md-10">
                                    <select class="form-control mb-3" data-placeholder="Select your region" id="division" name="region" required>
                                        <option value="">---select Region---</option>
                                        <?php $__currentLoopData = $region; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $division): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($division->id); ?>" ><?php echo e($division->name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2">
                                    <label><?php echo e(__('City')); ?></label>
                                </div>
                                <div class="col-md-10">
                                    <select class="form-control mb-3" data-placeholder="Select your City" id="district" name="city" required>
                                        <option>---Select City---</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2">
                                    <label><?php echo e(__('Area')); ?></label>
                                </div>
                                <div class="col-md-10">
                                    <select class="form-control mb-3" data-placeholder="Select your Area" id="upazila" name="area" required>
                                        <option>---Select Area---</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2">
                                    <label><?php echo e(__('Shipping Cost')); ?></label>
                                </div>
                                <div class="col-md-10">
                                    <select class="form-control mb-3" data-placeholder="Select shipping Cost " id="shipping" name="shipping_cost" required>
                                        <option>---Shipping Cost---</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2">
                                    <label><?php echo e(__('Post Code')); ?></label>
                                </div>
                                <div class="col-md-10">
                                    <input type="text" class="form-control mb-3" placeholder="Post Code" name="post_code" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-2">
                                    <label><?php echo e(__('Label')); ?></label>
                                </div>
                                <div class="col-md-10">
                                    <select class="form-control mb-3" data-placeholder="Select your region" name="label" required>
                                            <option value="Office" >Office</option>
                                            <option value="Home" >Home</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="text-right mt-4">
                        <button type="submit" class="btn btn-styled btn-base-1" id="save"><?php echo e(__('Add Address')); ?></button>
                    </div>
                </form>

            </div>

        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
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

    $("#upazila").on('change',function(e){
      e.preventDefault();
      var ddlship=$("#shipping");
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
              }).appendTo('#shipping');
            });
          }
        });
    });

  </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/customer/add_address.blade.php ENDPATH**/ ?>