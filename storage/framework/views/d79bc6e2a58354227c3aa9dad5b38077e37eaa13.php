<?php $__env->startSection('title'); ?>
    Checkout
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div id="page-content">
        <section class="slice-xs sct-color-2 border-bottom">
            <div class="container container-sm">
                <div class="row cols-delimited">
                    <div class="col-4">
                        <div class="icon-block icon-block--style-1-v5 text-center">
                            <div class="block-icon mb-0">
                                <i class="icon-hotel-restaurant-105"></i>
                            </div>
                            <div class="block-content d-none d-md-block">
                                <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize">1. <?php echo e(__('My Cart')); ?></h3>
                            </div>
                        </div>
                    </div>

                    <div class="col-4">
                        <div class="icon-block icon-block--style-1-v5 text-center active">
                            <div class="block-icon mb-0">
                                <i class="icon-finance-067"></i>
                            </div>
                            <div class="block-content d-none d-md-block">
                                <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize">2. <?php echo e(__('Shipping info')); ?></h3>
                            </div>
                        </div>
                    </div>

                    <div class="col-4">
                        <div class="icon-block icon-block--style-1-v5 text-center">
                            <div class="block-icon c-gray-light mb-0">
                                <i class="icon-finance-059"></i>
                            </div>
                            <div class="block-content d-none d-md-block">
                                <h3 class="heading heading-sm strong-300 c-gray-light text-capitalize">3. <?php echo e(__('Payment')); ?></h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="py-4 gry-bg">
            <div class="container">
                <div class="row cols-xs-space cols-sm-space cols-md-space">
                    <div class="col-lg-8">
                        <?php if(Auth::check()): ?>
                        <?php if(Auth::user()->shipping_address): ?>
                            <form class="form-default" data-toggle="validator" role="form" id="shipping_form" enctype="multipart/form-data">
                                <?php echo csrf_field(); ?>
                                <div class="card">
                                    <?php
                                    $user = \App\Models\ShippingAddess::where('id', Auth::user()->shipping_address)->first();
                                    ?>
                                    <div class="col-md-12">
                                        <div class="m-1">
                                            <a class="float-right btn btn-sm btn-success" href="<?php echo e(route('change.shipping.address')); ?>"><i class="fa fa-exchange"></i>  Change shipping address</a>
                                        </div><div class="m-1">
                                           <a class="float-right btn btn-sm btn-primary mr-2" href="<?php echo e(route('add.new.shipping')); ?>"><i class="fa fa-plus"></i>  Add new shipping address</a>
                                        </div>
                                    </div>
                                    <div class="card-body">

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label"><?php echo e(__('Name')); ?></label>
                                                    <input type="text" class="form-control" id="name" name="name" value="<?php echo e($user->name); ?>" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label"><?php echo e(__('Email')); ?></label>
                                                    <input type="email" class="form-control" name="email" id="email" value="<?php echo e($user->email); ?>" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label"><?php echo e(__('Phone')); ?></label>
                                                    <input type="text" class="form-control" name="phone" id="phone" value="<?php echo e($user->phone); ?>" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label"><?php echo e(__('Address')); ?></label>
                                                    <input type="text" class="form-control" id="address" name="address" value="<?php echo e($user->address); ?>" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <?php
                                            $region = \App\Models\Division::where('id', '=', $user->region)->first()->name;
                                            $city = \App\Models\District::where('id', '=', $user->city)->first()->name;
                                            $area = \App\Models\Upazila::where('id', '=', $user->area)->first()->name;
                                        ?>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group has-feedback">
                                                    <label class="control-label"><?php echo e(__('Region')); ?></label>
                                                    <input type="text" class="form-control" value="<?php echo e($region); ?>" name="region" id="region" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group has-feedback">
                                                    <label class="control-label"><?php echo e(__('City')); ?></label>
                                                    <input type="text" class="form-control" id="city" value="<?php echo e($city); ?>" name="city" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group has-feedback">
                                                    <label class="control-label"><?php echo e(__('Area')); ?></label>
                                                    <input type="text" class="form-control" id="area" value="<?php echo e($area); ?>" name="area" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group has-feedback">
                                                    <label class="control-label"><?php echo e(__('Post Code')); ?></label>
                                                    <input type="text" class="form-control" maxlength="4" id="post_code" value="<?php echo e($user->post_code); ?>" name="post_code" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="ermsg">

                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label class="control-label"><?php echo e(__('Upload Your Prescription')); ?></label> <br>
                                                    <label for="photos"><img style="cursor:pointer" src="<?php echo e(asset('images/icon/image-upload24x24.png')); ?>" alt="" title="Upload Prescription">
                                                    </label>
                                                    <input id="photos" multiple="" max="5" accept="image/gif, image/jpeg, image/jpg, image/png" name="photos[]" type="file">
                                                </div>
                                            </div>
                                        </div>
                                        <?php
                                        $pres = 0;
                                        ?>
                                        <?php $__currentLoopData = Session::get('cart'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $cartItem): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        
                                        <?php if($cartItem['prescribed']=='1'): ?>
                                        <?php
                                            $pres = 1;
                                        ?>
                                        <?php endif; ?>

                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <input type="hidden" class="form-control" id="prescribed" value="<?php echo e($pres); ?>" name="prescribed">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <input type="checkbox" value="1" name="psubmit" id="psubmit">
                                                    <label class="control-label"><?php echo e(__('Yes, I Have already submited prescription')); ?></label>
                                                </div>
                                            </div>
                                        </div>

                                        <input type="hidden" class="form-control" value="<?php echo e($user->shipping_cost); ?>" name="shipping" id="shippingcost" readonly>
                                        <input type="hidden" name="checkout_type" value="logged">

                                    </div>
                                </div>

                                <div class="row align-items-center pt-4 shophide">
                                    <div class="col-6">
                                        <a href="<?php echo e(route('products')); ?>" class="link link--style-3">
                                            <i class="la la-mail-reply"></i>
                                            <?php echo e(__('Return to home')); ?>

                                        </a>
                                    </div>
                                    <div class="col-6 text-right">
                                        <?php if(Auth::check()): ?>
                                        <?php if(Auth::user()->shipping_address): ?>
                                            <button type="button" class="btn btn-styled btn-base-1" id="submit" ><?php echo e(__('Continue to Payment')); ?></button>

                                        <?php endif; ?>
                                        <?php else: ?>
                                        <button type="button" class="btn btn-styled btn-base-1" id="submit" ><?php echo e(__('Continue to Payment')); ?></button>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </form>
                        <?php else: ?>
                        <?php
                            $region = \App\Models\Division::all();
                            $districts = \App\Models\District::all();
                            $upazilas = \App\Models\Upazila::all();
                            ?>
                            <div class="card-body">
                                <form class="" action="<?php echo e(route('customer.shipping.address')); ?>" method="POST">
                                    <?php echo csrf_field(); ?>
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
                                    <input type="text" name="checkout" value="checkout" hidden readonly>
                                    <div class="text-right mt-4">
                                        <button type="submit" class="btn btn-styled btn-base-1" id="save"><?php echo e(__('Add Address')); ?></button>
                                    </div>
                                </form>
                            </div>

                        <?php endif; ?>
                        <?php endif; ?>
                    </div>

                <div class="col-lg-4 ml-lg-auto">
                    <?php echo $__env->make('frontend.partials.cart_summary', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
            </div>
        </div>
    </section>
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    

    <script type="text/javascript">
        function getPaymentInfo(){
            var isValid = true;
            $('.card-body input').each(function() {
                if ( this.value == '' ){
                    isValid = false;
                }
            });

            if(isValid){
                 $.ajax({
                    type:"POST",
                    url:'<?php echo e(route('checkout.payment_info')); ?>',
                    data: $('#shipping_form').serialize(),
                    success: function(data){
                        $('#page-content').html(data);
                    }
                });
            }
            else{
                alert('Please fill all the fileds');
            }
        }

    var storedFiles = [];
    // header for csrf-token is must in laravel
    $.ajaxSetup({ headers: { 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content') } });
    //
    var url = "<?php echo e(URL::to('/checkout/payment_info')); ?>";
    $("#submit").click(function(){

            var form_data = new FormData();
            for(var i=0, len=storedFiles.length; i<len; i++) {
                form_data.append('photos[]', storedFiles[i]);
            }
            form_data.append("name", $("#name").val());
            form_data.append("email", $("#email").val());
            form_data.append("phone", $("#phone").val());
            form_data.append("address", $("#address").val());
            form_data.append("region", $("#region").val());
            form_data.append("city", $("#city").val());
            form_data.append("area", $("#area").val());
            form_data.append("post_code", $("#post_code").val());
            form_data.append("checkout_type", $("#checkout_type").val());
            form_data.append("shipping", $("#shippingcost").val());
            form_data.append("psubmit", $("#psubmit").val());
            form_data.append("prescribed", $("#prescribed").val());

            var pid = $("#prescribed").val();
            var chk = $('#psubmit').prop('checked');
            var file = $("#photos").prop("files").length;

            if((pid == 1) && ((file == 0) && (chk == false))){

                message ="<div class='alert alert-warning'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><b>You have selected prescribed item. Please upload your prescription or if you already upload it, Please click the checkbox.</b></div>";
                $(".ermsg").html(message);
                exit;
            }
            $.ajax({
                url: url,
                method: "POST",
                contentType: false,
                processData: false,
                data:form_data,
                success: function(d){
                    $('#page-content').html(d);
                }
            });

    });
    $(document).on('change','#photos',function(){
            len_files = $("#photos").prop("files").length;
            for (var i = 0; i < len_files; i++) {
                var file_data = $("#photos").prop("files")[i];
                storedFiles.push(file_data);
            }
        });



// drop down select section
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

<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/frontend/partials/shipping_info.blade.php ENDPATH**/ ?>