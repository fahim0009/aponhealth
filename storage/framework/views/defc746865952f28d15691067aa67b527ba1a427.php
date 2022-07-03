<?php $__env->startSection('content'); ?>

    <div class="panel">
    	<div class="panel-body">

            <form action="<?php echo e(route('medication.user.order')); ?>" method="post">
                <?php echo csrf_field(); ?>
                <input type="text" name="medication_id" id="" value="<?php echo e($medication->id); ?>" readonly hidden>
                <input type="text" name="city" id="" value="<?php echo e(json_decode($medication->shipping_address)->city); ?>" readonly hidden>
                <input type="text" name="email" id="" value="<?php echo e(json_decode($medication->shipping_address)->email); ?>" readonly hidden>
                <input type="text" name="name" id="" value="<?php echo e(json_decode($medication->shipping_address)->name); ?>" readonly hidden>
                <input type="text" name="phone" id="" value="<?php echo e(json_decode($medication->shipping_address)->phone); ?>" readonly hidden>
                <input type="text" name="address" id="" value="<?php echo e(json_decode($medication->shipping_address)->address); ?>" readonly hidden>
                <input type="text" name="postal_code" id="" value="<?php echo e(json_decode($medication->shipping_address)->city); ?>" readonly hidden>
                <input type="text" name="postal_code" id="" value="<?php echo e(json_decode($medication->shipping_address)->region); ?>" readonly hidden>
                <input type="text" name="postal_code" id="" value="<?php echo e(json_decode($medication->shipping_address)->area); ?>" readonly hidden>
                <input type="text" name="country" id="" value="<?php echo e(json_decode($medication->shipping_address)->post_code); ?>" readonly hidden>
                <input type="text" name="user_id" id="" value="<?php echo e($medication->user_id); ?>" readonly hidden>
                <input type="text" name="code" value="<?php echo e($medication->code); ?>" id="" readonly hidden>
                <input type="text" name="total_price" value="<?php echo e($medication->medicationDetails->sum('price') + $medication->medicationDetails->sum('tax')+$medication->shipping_cost); ?>" id="" readonly hidden>
                <input type="text" name="date" value="<?php echo e($medication->upcoming_date); ?>" id="" readonly hidden>
                <input type="text" name="payment_option" id="" value="<?php echo e($medication->payment_type); ?>" readonly hidden>

    		<div class="invoice-masthead">
    			<div class="invoice-text">
    				<h3 class="h1 text-thin mar-no text-primary"><?php echo e(__('medication Details')); ?></h3>
    			</div>
    		</div>

    		<div class="invoice-bill row">
    			<div class="col-sm-6 text-xs-center">
    				<address>
        				<strong class="text-main"><?php echo e(json_decode($medication->shipping_address)->name); ?></strong><br>
                         <?php echo e(json_decode($medication->shipping_address)->email); ?><br>
                         <?php echo e(json_decode($medication->shipping_address)->phone); ?><br>
        				 <?php echo e(json_decode($medication->shipping_address)->address); ?>, <?php echo e(json_decode($medication->shipping_address)->area); ?>,<?php echo e(json_decode($medication->shipping_address)->city); ?>-<?php echo e(json_decode($medication->shipping_address)->post_code); ?>, <?php echo e(json_decode($medication->shipping_address)->region); ?>

                    </address>
    			</div>
    			<div class="col-sm-6 text-xs-center">
    				<table class="invoice-details">
    				<tbody>
    				<tr>
    					<td class="text-main">
    						<?php echo e(__('Medication #')); ?>

    					</td>
    					<td class="text-right text-info">
    						<?php echo e($medication->code); ?>

    					</td>
    				</tr>
    				<tr>
    					<td class="text-main">
    						<?php echo e(__('Medication Preiod')); ?>

    					</td>
                        <?php
                            $preiod = App\Models\User::find($medication->user_id)->preiod;
                        ?>
    					<td class="text-right">
                            <?php echo e($preiod); ?> Days
    					</td>
    				</tr>
    				<tr>
    					<td class="text-main">
    						<?php echo e(__('Medication Date')); ?>

    					</td>
    					<td class="text-right">
    						<?php echo e($medication->upcoming_date); ?>

    					</td>
    				</tr>
                    <tr>
    					<td class="text-main">
    						<?php echo e(__('Total amount')); ?>

    					</td>
    					<td class="text-right">
    						<!--<?php echo e(single_price($medication->medicationDetails->sum('price') + $medication->medicationDetails->sum('tax'))); ?>-->
    							<?php echo e(single_price($medication->medicationDetails->sum('price') + $medication->medicationDetails->sum('tax') + $medication->shipping_cost)); ?>

    					</td>
    				</tr>
    				<tr>
    					<td class="text-main">
    						<?php echo e(__('Delivery Status')); ?>

    					</td>
    					<td class="text-right">
    						<select class="form-control" data-placeholder="Select delivery status" id="delivery_status" name="delivery_status" required>
    						    <option value="">---Select status---</option>
    						    <option value="wpayment">Waiting for payment</option>
                              <option value="processing">Processing</option>
                              <option value="rejected">Rejected</option>
                              
                          </select>
    					</td>
    				</tr>
                    
    				</tbody>
    				</table>
    			</div>
    		</div>
    		<hr class="new-section-sm bord-no">
    		<div class="row">
    			<div class="col-lg-12 table-responsive">
    				<table class="table table-bmedicationed invoice-summary">
        				<thead>
            				<tr class="bg-trans-dark"  style="border-top: 1px solid black !important;">
                                <th class="min-col">#</th>
            					<th class="text-uppercase">
            						<?php echo e(__('Description')); ?>

            					</th>
            					<th class="min-col text-center text-uppercase">
            						<?php echo e(__('Qty')); ?>

            					</th>
            					<th class="min-col text-center text-uppercase">
            						<?php echo e(__('Price')); ?>

            					</th>
            					<th class="min-col text-right text-uppercase">
            						<?php echo e(__('Total')); ?>

            					</th>
            				</tr>
        				</thead>
        				<tbody>
                            <?php $__currentLoopData = $medication->medicationDetails; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $medicationDetail): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td><?php echo e($key+1); ?></td>
                					<td>
                						<strong><a href="<?php echo e(route('product', $medicationDetail->product->slug)); ?>" target="_blank"><?php echo e($medicationDetail->product->name); ?></a></strong>
                						<small><?php echo e($medicationDetail->variation); ?></small>
                                        <input type="text" name="product_id[]" value="<?php echo e($medicationDetail->product->id); ?>" id="" readonly hidden>
                					</td>
                					<td class="text-center">
                						<?php echo e($medicationDetail->quantity); ?>

                                        <input type="text" name="qty[]" value="<?php echo e($medicationDetail->quantity); ?>" id="" readonly hidden>
                					</td>
                					<td class="text-center">
                						<?php echo e(single_price($medicationDetail->price/$medicationDetail->quantity)); ?>


                					</td>
                                    <td class="text-center">
                						<?php echo e(single_price($medicationDetail->price)); ?>

                                        <input type="text" name="price[]" value="<?php echo e($medicationDetail->price/$medicationDetail->quantity); ?>" id="" readonly hidden>
                                        <input type="text" name="shipping_cost" value="<?php echo e($medication->shipping_cost); ?>" id="" readonly hidden>
                					</td>

                				</tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        				</tbody>
    				</table>
    			</div>
    		</div>
    		<div class="clearfix">
    			<table class="table borless invoice-total">
    			<tbody>
    			<tr>
    				<td>
    					<strong><?php echo e(__('Sub Total')); ?> :</strong>
    				</td>
    				<td>
    					<?php echo e(single_price($medication->medicationDetails->sum('price'))); ?>

    				</td>
    			</tr>
    			<!--<tr>-->
    			<!--	<td>-->
    			<!--		<strong><?php echo e(__('Tax')); ?> :</strong>-->
    			<!--	</td>-->
    			<!--	<td>-->
    			<!--		<?php echo e(single_price($medication->medicationDetails->sum('tax'))); ?>-->
    			<!--	</td>-->
    			<!--</tr>-->
                <tr>
    				<td>
    					<strong><?php echo e(__('Shipping')); ?> :</strong>
    				</td>
    				<td>
    					<?php echo e(single_price($medication->shipping_cost)); ?>


    				</td>
    			</tr>
    			<tr>
    				<td>
    					<strong><?php echo e(__('Total')); ?> :</strong>
    				</td>
    				<td>
    					<?php echo e(single_price($medication->medicationDetails->sum('price') + $medication->medicationDetails->sum('tax') + $medication->shipping_cost)); ?>

    				</td>
    			</tr>
    			</tbody>
    			</table>
    		</div>
    		<div class="text-right no-print">
    			
                <input type="submit" value="Confirm Order" class="btn btn-success">
    		</div>
           </form>
    	</div>
    </div>
<?php $__env->stopSection(); ?>



<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp7.4\htdocs\laravel\apon_ecommerce\apon_ecom\apon_ecom_new\resources\views/medication/view.blade.php ENDPATH**/ ?>