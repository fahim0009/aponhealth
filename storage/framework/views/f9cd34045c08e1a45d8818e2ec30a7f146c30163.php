<?php $__env->startSection('content'); ?>
<div class="dashbaord-main">
    <?php if(Auth::user()->user_type == 'seller'): ?>
        <?php echo $__env->make('frontend.inc.seller_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php elseif(Auth::user()->user_type == 'customer'): ?>
        <?php echo $__env->make('frontend.inc.customer_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php elseif(Auth::user()->user_type == 'doctor'): ?>
        <?php echo $__env->make('frontend.inc.doctor_side_nav', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>


    <style>

        a.delete {
            position: relative;
            left: -22px;
            top: -37px;
            color: white !important;
            font-size: 22px;
            background: red;
        }
        .delete-wpr {
            padding-left: 16px;
            height: 40px;
        }
    </style>
    <div class="rightSection">
        <div class="topbar">
            <div class="fold" onclick='foldSidebar();'>
                <span class="iconify" data-icon="eva:menu-fill"></span>
            </div>
            <!-- <img src="images/logo.png" class="mobile-menu-logo"> -->
            <!--<div class="right-element">-->
            <!--    <div class="dropdown">-->
            <!--        <a class="btn dropdown-toggle profile-manage" href="#" role="button" id="dropdownMenuLink"-->
            <!--            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">-->
            <!--            <?php if(!empty(Auth::user()->avatar_original)): ?>-->
            <!--            <img src="<?php echo e(asset(Auth::user()->avatar_original)); ?>" alt="">-->
            <!--            <?php else: ?>-->
            <!--                <img src="<?php echo e(asset('uploads/1.jpg')); ?>" alt="">-->
            <!--            <?php endif; ?>-->
            <!--        </a>-->

            <!--        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">-->
            <!--            <a class="dropdown-item" href="<?php echo e(route('profile')); ?>"><span class="iconify"-->
            <!--                    data-icon="carbon:user-avatar"></span> Profile</a>-->
            <!--            <a class="dropdown-item" href="<?php echo e(route('logout')); ?>"><span class="iconify"-->
            <!--                    data-icon="ion:log-out-outline"></span> Log Out</a>-->
            <!--        </div>-->
            <!--    </div>-->
            <!--</div>-->
        </div>
        <div class="dashboard-content">
            <section class="profile">
                <div class="title-section">
                    <span class="iconify mr-1" data-icon="fontisto:prescription"></span> Medications
                </div>
                <div class="infoBox mt-3">
                    <form action="<?php echo e(route('usermedication.order')); ?>" method="post">
                        <?php echo csrf_field(); ?>
                        <div class="row col-lg-12 p-0 mx-auto">
                            <div class="col-lg-10 mx-auto">
                                <input type="hidden" class="form-control" name="" value="<?php echo e($users->id); ?>">
                                <div class="row shadow-sm">
                                    <div class="col-lg-6 col-md-6 bg-white border-right">
                                        <div class="form-container  pt-4">
                                            <div class="form-group mb-1">
                                                <label>User Name</label>
                                                <input type="text" class="form-control" name="name" value="<?php echo e($users->name); ?>" placeholder="User name">
                                            </div>
                                            <div class="form-group mb-1">
                                                <label>User Name</label>
                                                <input type="email" class="form-control" name="email" value="<?php echo e($users->email); ?>" placeholder="User email">
                                            </div>
                                            <div class="row">
                                                <div class="form-group mb-1 col-6">
                                                    <label>Phone No</label>
                                                    <input type="text" class="form-control" name="phone" value="<?php echo e($users->phone); ?>" placeholder="Phone number">
                                                </div>
                                                <div class="form-group mb-1">
                                                    <label>Postal Code</label>
                                                    <input type="text" class="form-control" name="post_code" value="<?php echo e($users->post_code); ?>" placeholder="Postal code">
                                                </div>
                                            </div>
                                            <?php
                                                $region = \App\Models\Division::where('id', '=', $users->region)->first()->name;
                                                $city = \App\Models\District::where('id', '=', $users->city)->first()->name;
                                                $area = \App\Models\Upazila::where('id', '=', $users->area)->first()->name;
                                            ?>
                                            
                                                <div class="form-group mb-1">
                                                    <label>Address</label>
                                                    <textarea class="form-control" rows="2"><?php echo e($users->address); ?>, <?php echo e($area); ?>, <?php echo e($city); ?>, <?php echo e($region); ?>.</textarea>
                                                </div>
                                            
                                        </div>
                                            <input type="hidden" name="address" value="<?php echo e($users->address); ?>">
                                            <input type="hidden" value="<?php echo e($region); ?>" name="region">
                                            <input type="hidden" value="<?php echo e($city); ?>" name="city">
                                            <input type="hidden" value="<?php echo e($area); ?>" name="area" >
                                    </div>
                                    <div class="col-lg-6 col-md-6 bg-white">
                                        <div class="form-container pt-5">
                                            <table>
                                                <tr>
                                                    <td class="w-50"><small>Invoice #</small></td>
                                                    <td class="w-50">
                                                        <input type="text" class="px-1 py-1 mb-3 form-control" name="order_id" value="<?php echo e($order_id); ?>" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="w-50"><small>Delivery Date</small></td>
                                                    <td class="w-50"><input type="date" class="form-control mb-3"
                                                        name="date" id="date" required></td>
                                                </tr>
                                                <tr>
                                                    <td class="w-50"><small>Medication Period</small></td>
                                                    <td class="w-50">
                                                        <select class="form-control mb-3" name="preiod" required>
                                                            <option value="">Select Preiod</option>
                                                            <option value="7">7 Days</option>
                                                            <option value="10">10 Days</option>
                                                            <option value="15">15 Days</option>
                                                            <option value="30">30 Days</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="w-50">
                                                        <small>Amount Due</small>

                                                    </td>
                                                    <td class="w-50 text-right">
                                                        
                                                        <span class="due">00</span>
                                                    </td>
                                                </tr>
                                                <input type="hidden" name="payment_option" value="Cash On Delivery" readonly>
                                            </table>
                                            <!-- <button type="submit"  class="text-white btn-theme float-right mb-3">Update Password
                                            </button> -->

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row col-lg-12 p-0 mx-auto">
                            <div class="col-lg-10 mx-auto">
                                <input type="text" name="user_id" value="<?php echo e(Auth::user()->id); ?>" hidden>
                                    <div class="row shadow-sm">
                                        <div class=" col-md-12 bg-white p-0">
                                            <div class="form-container">
                                                <div class="overflow mx-auto" >
                                                    <table class="table table-custom shadow-sm">
                                                        <thead>
                                                            <tr>
                                                                <th>Item</th>
                                                                <th>Unit Cost</th>
                                                                <th>Quantity </th>
                                                                <th>Price</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="inner">
                                                            <tr class="item-row">
                                                                <td width="400px" class="item-name vehicle-type"><div class="delete-wpr">
                                                                    <select class="form-control" name="product_id[]" id="select_car">
                                                                        <option>-Select Medicine-</option>
                                                                        <?php $__currentLoopData = $peoducts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $peoduct): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                            <option  data-id="<?php echo e($peoduct->id); ?>" data-price="<?php echo e($peoduct->unit_price); ?>" value="<?php echo e($peoduct->id); ?>"><?php echo e($peoduct->name); ?></option>
                                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                    </select><a class="delete" href="javascript:;" title="Remove medicine">X</a></div></td>
                                                                    <td colspan="1"><input type="text" name="price[]" id="" class="cost price-input form-control" readonly></td>
                                                                    <td style="width:85px;"><input type="number" required name="qty[]" min="1" value="1" class="form-control qty" id=""></td>
                                                                    <td colspan="1"><span class="price">00</span></td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="4">
                                                                    <span type="submit"
                                                                    <a id="addrow" href="javascript:;" class="text-white btn-theme add-row" title="Add a medicine">+ Medicine</a>
                                                                    </span>
                                                                </td>

                                                            </tr>

                                                            <tr>
                                                                <td></td>
                                                                <td colspan="3" class="text-right">
                                                                    <strong> Subtotal : </strong>
                                                                     
                                                                     <span id="total">00</span>
                                                                </td>
                                                                <textarea name="subtotal" id="grantotal" readonly hidden></textarea>
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td colspan="3" class="text-right">
                                                                    <strong> Shipping Cost : </strong>
                                                                    <span id="paid">৳<?php echo e($users->shipping_cost); ?>.00</span>
                                                                </td>
                                                                <input type="hidden" readonly name="shipping_cost" value="<?php echo e($users->shipping_cost); ?>">
                                                            </tr>
                                                            <tr>
                                                                <td></td>
                                                                <td colspan="3" class="text-right">
                                                                    <strong>Total : </strong>
                                                                    
                                                                    <span class="due">00</span>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <button type="submit"  class="text-white btn-theme float-right mb-3">Add Medication                                               </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    </form>
                </div>

            </section>

        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script>
    $(document).ready(function(){
    function print_today() {
        var now = new Date();
        var months = new Array('January','February','March','April','May','June','July','August','September','October','November','December');
        var date = ((now.getDate()<10) ? "0" : "")+ now.getDate();
        function fourdigits(number) {
          return (number < 1000) ? number + 1900 : number;
        }
        var today =  months[now.getMonth()] + " " + date + ", " + (fourdigits(now.getYear()));
        return today;
      }

    //   from
      function roundNumber(number,decimals) {
        var newString;// The new rounded number
        decimals = Number(decimals);
        if (decimals < 1) {
          newString = (Math.round(number)).toString();
        } else {
          var numString = number.toString();
          if (numString.lastIndexOf(".") == -1) {// If there is no decimal point
            numString += ".";// give it one at the end
          }
          var cutoff = numString.lastIndexOf(".") + decimals;// The point at which to truncate the number
          var d1 = Number(numString.substring(cutoff,cutoff+1));// The value of the last decimal place that we'll end up with
          var d2 = Number(numString.substring(cutoff+1,cutoff+2));// The next decimal, after the last one we want
          if (d2 >= 5) {// Do we need to round up at all? If not, the string will just be truncated
            if (d1 == 9 && cutoff > 0) {// If the last digit is 9, find a new cutoff point
              while (cutoff > 0 && (d1 == 9 || isNaN(d1))) {
                if (d1 != ".") {
                  cutoff -= 1;
                  d1 = Number(numString.substring(cutoff,cutoff+1));
                } else {
                  cutoff -= 1;
                }
              }
            }
            d1 += 1;
          }
          if (d1 == 10) {
            numString = numString.substring(0, numString.lastIndexOf("."));
            var roundedNum = Number(numString) + 1;
            newString = roundedNum.toString() + '.';
          } else {
            newString = numString.substring(0,cutoff) + d1.toString();
          }
        }
        if (newString.lastIndexOf(".") == -1) {// Do this again, to the new string
          newString += ".";
        }
        var decs = (newString.substring(newString.lastIndexOf(".")+1)).length;
        for(var i=0;i<decimals-decs;i++) newString += "0";
        //  newNumber = Number(newString);// make it a number if you like
        return newString; // Output the result to the form field (change for your purposes)
      }

      function update_total() {
        var total = 0;
        $('.price').each(function(i){
          price = $(this).html().replace("৳","");
          if (!isNaN(price)) total += Number(price);
        });

        total = roundNumber(total,2);

        $('#subtotal').html(total);
        $('#total').html("৳"+total);

        update_balance();
      }

      function update_balance() {
        var due = $("#total").html().replace("৳","");
        var paid = $("#paid").html().replace("৳","");
        var amount = Number(due) + Number(paid);
        due = roundNumber(amount,2);

        $('.due').html("৳"+due);
        $('#grantotal').html(due);
      }

      function update_price() {
        var row = $(this).parents('.item-row');
        var price = row.find('.cost').val().replace("৳","") * row.find('.qty').val();
        price = roundNumber(price,2);
        isNaN(price) ? row.find('.price').html("N/A") : row.find('.price').html("৳"+price);

        update_total();
      }

      function bind() {
        $(".cost").click(update_price);
        $(".qty").click(update_price);
      }

      $(document).ready(function() {

        $('input').click(function(){
          $(this).select();
        });

        $("#paid").blur(update_balance);
        $("#addrow").click(function(){
            $(".item-row:last").after(`<tr class="item-row"><td width="200px" class="item-name vehicle-type"><div class="delete-wpr"><select class="form-control medication" name="product_id[]" id="">
                <option>-Select Medicine-</option>
                <?php $__currentLoopData = $peoducts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $peoduct): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <option data-price="<?php echo e($peoduct->unit_price); ?>" value="<?php echo e($peoduct->id); ?>"><?php echo e($peoduct->name); ?></option>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </select><a class="delete" href="javascript:;" title="Remove row">X</a></div></td><td><input type="text" name="price[]" id="" class="cost price-input form-control" readonly></td><td><input type="number" required name="qty[]" value="1" class="form-control qty" min="1" id=""></td><td style="width:85px;"><span class="price">00</span></td></tr>`);
             $(".medication").select2();  
          if ($(".delete").length > 0) $(".delete").show();
          bind();
        });

        bind();

        // $(".delete").on('click',function(){
    $("body").delegate(".delete","click",function(event){
          $(this).parents('.item-row').remove();
          update_total();
          if ($(".delete").length < 2) $(".delete").hide();
        });
        $("#date").val(print_today());
      });
 $("body").delegate(".vehicle-type","change",function(event){
    var row = $(this).parent();
    row.find('.price-input').val($(this).find(':selected').data('price'));
    // $('.price').html("৳"+$(this).find(':selected').data('price'));
    // update_price();
    var row = $(this).parents('.item-row');
    var price = row.find('.cost').val().replace("৳","") * row.find('.qty').val();
    price = roundNumber(price,2);
    isNaN(price) ? row.find('.price').html("N/A") : row.find('.price').html("৳"+price);
    update_total();
});

  $(function () {
    $("select").select2();
});  

});
    </script>

    


    



<?php $__env->stopSection(); ?>



<?php echo $__env->make('frontend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_health\apon_ecom\resources\views/frontend/medication/usermedication.blade.php ENDPATH**/ ?>