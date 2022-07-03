
<?php $__env->startSection('css'); ?>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/css/lightbox.min.css">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>


<style>
    .photo-gallery {
      color:#313437;
      background-color:#fff;
    }
    
    .photo-gallery p {
      color:#7d8285;
    }
    
    .photo-gallery h2 {
      font-weight:bold;
      margin-bottom:40px;
      padding-top:40px;
      color:inherit;
    }
    
    @media (max-width:767px) {
      .photo-gallery h2 {
        margin-bottom:25px;
        padding-top:25px;
        font-size:24px;
      }
    }
    
    .photo-gallery .intro {
      font-size:16px;
      max-width:500px;
      margin:0 auto 40px;
    }
    
    .photo-gallery .intro p {
      margin-bottom:0;
    }
    
    .photo-gallery .photos {
      padding-bottom:20px;
    }
    
    .photo-gallery .item {
      padding-bottom:30px;
    }
    
    </style>
    



<hr>
<div class="container bootstrap snippet">
    <div class="row">
  		<div class="col-sm-10"><h1>User Profile</h1></div>
    	
    </div>
    <div class="row">
  		<div class="col-sm-3"><!--left col-->
              

      <div class="text-center">
        <?php if(!empty($user->avatar_original)): ?>
        <img src="<?php echo e(asset($user->avatar_original)); ?>" class="image" alt="" style="height: 250px; width:auto;">
        <?php else: ?>
        <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
        <?php endif; ?>
        
      </div></hr><br>

           
          
          
          <ul class="list-group">
            <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Number of purchase</strong></span><?php echo e($purchase); ?></li>
            <li class="list-group-item text-right"><span class="pull-left"><strong>Amount of Expense</strong></span> <?php echo e($amount); ?></li>
            
          </ul>
          
        </div>
        <!--/col-3-->
    	<div class="col-sm-8">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home" style="color: black !important;">Home</a></li>
                <li><a data-toggle="tab" href="#messages" style="color: black !important;">Purchase History</a></li>
                <li><a data-toggle="tab" href="#prescription" style="color: black !important;">Prescription</a></li>
            </ul>

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
                <hr>
                  <form class="form" action="##" method="post" id="registrationForm">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="first_name"><h4>Name</h4></label>
                              <input type="text" class="form-control" value="<?php echo e($user->name); ?>" readonly>
                          </div>
                      </div>
                      
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="phone"><h4>Phone</h4></label>
                              <input type="text" class="form-control" value="<?php echo e($user->phone); ?>" readonly>
                          </div>
                      </div>
          
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Email</h4></label>
                              <input type="email" class="form-control" value="<?php echo e($user->email); ?>" readonly>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="email"><h4>Location</h4></label>
                              <input type="email" class="form-control" value="<?php echo e($user->address); ?>" readonly>
                          </div>
                      </div>
                      <div class="form-group">
                          
                        <div class="col-xs-6">
                            <label for="email"><h4>Medication</h4></label>
                            <input type="email" class="form-control" value="<?php echo e($user->medication); ?>" readonly>
                        </div>
                    </div>
              	</form>
              
              <hr>
              
             </div><!--/tab-pane-->
             <div class="tab-pane" id="messages">
               
               <h2></h2>
               
               <hr>
                  
                  <?php if(count($orders) > 0): ?>
                            <!-- Order history table -->
                            <div class="card no-border mt-4">
                                <div>
                                    <table class="table table-sm table-hover table-responsive-md no-border">
                                        <thead>
                                            <tr>
                                                <th><?php echo e(__('Code')); ?></th>
                                                <th><?php echo e(__('Date')); ?></th>
                                                <th><?php echo e(__('Amount')); ?></th>
                                                <th><?php echo e(__('Delivery Status')); ?></th>
                                                <th><?php echo e(__('Payment Status')); ?></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <tr>
                                                    <td style="border: none">
                                                        <?php echo e($order->code); ?>

                                                    </td>
                                                    <td style="border: none"><?php echo e(date('d-m-Y', $order->date)); ?></td>
                                                    <td style="border: none">
                                                        <?php echo e(single_price($order->grand_total)); ?>

                                                    </td>
                                                    <td style="border: none">
                                                        <?php
                                                            $status = $order->orderDetails->first()->delivery_status;
                                                        ?>
                                                        <?php echo e(ucfirst(str_replace('_', ' ', $status))); ?>

                                                    </td>
                                                    <td style="border: none">
                                                        <span class="badge badge--2 mr-4">
                                                            <?php if($order->payment_status == 'paid'): ?>
                                                                <i class="bg-green"></i> <?php echo e(__('Paid')); ?>

                                                            <?php else: ?>
                                                                <i class="bg-red"></i> <?php echo e(__('Unpaid')); ?>

                                                            <?php endif; ?>
                                                        </span>
                                                    </td>
                                                </tr>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        <?php endif; ?>

                        <div class="pagination-wrapper py-4">
                            <ul class="pagination justify-content-end">
                                <?php echo e($orders->links()); ?>

                            </ul>
                        </div>
                  
               
             </div>

             <!--/tab-pane-->
                    <div class="tab-pane" id="prescription">
                    
                        <hr>
                        <div class="photo-gallery">
                            <div class="container">
                                
                                


                                <table style="border: none">
                                    <thead>
                                        <tr>
                                            <th style="border: none"><?php echo e(__('Image')); ?></th>
                                            <th style="border: none"><?php echo e(__('Date')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php $__currentLoopData = $pimg; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td style="border: none">
                                                    <a href="<?php echo e(asset('uploads/prescription/'.$item->image)); ?>" data-lightbox="photos"><img class="img-fluid" src="<?php echo e(asset('uploads/prescription/'.$item->image)); ?>" height="300px" width="300px"></a>
                                                </td>
                                                <td  style="border: none">
                                                    <?php echo e($item->created_at); ?>

                                                </td>
                                            </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>







                            </div>
                        </div>
                        
                    </div>
               
              </div><!--/tab-pane-->
          </div><!--/tab-content-->

        </div><!--/col-9-->
    </div><!--/row-->





<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>

<script>
    $(document).ready(function() {
    
        var readURL = function(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.avatar').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }


        $(".file-upload").on('change', function(){
            readURL(this);
        });
    });
</script>
    

<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.8.2/js/lightbox.min.js"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/customers/profile.blade.php ENDPATH**/ ?>