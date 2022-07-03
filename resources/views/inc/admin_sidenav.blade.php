<!--MAIN NAVIGATION-->
<!--===================================================-->
<nav id="mainnav-container">
    <div id="mainnav">

        <!--Menu-->
        <!--================================-->
        <div id="mainnav-menu-wrap">
            <div class="nano">
                <div class="nano-content">

                    <!--Profile Widget-->
                    <!--================================-->
                    {{-- <div id="mainnav-profile" class="mainnav-profile">
                        <div class="profile-wrap text-center">
                            <div class="pad-btm">
                                <img class="img-circle img-md" src="{{ asset('images/'.Auth::user()->avatar_original) }}" alt="Profile Picture">
                            </div>
                            <a href="#profile-nav" class="box-block" data-toggle="collapse" aria-expanded="false">
                                <span class="pull-right dropdown-toggle">
                                    <i class="dropdown-caret"></i>
                                </span>
                                <p class="mnp-name">{{Auth::user()->name}}</p>
                                <span class="mnp-desc">{{Auth::user()->email}}</span>
                            </a>
                        </div>
                        <div id="profile-nav" class="collapse list-group bg-trans">
                            <a href="#" class="list-group-item">
                                <i class="demo-pli-male icon-lg icon-fw"></i> View Profile
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="demo-pli-gear icon-lg icon-fw"></i> Settings
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="demo-pli-information icon-lg icon-fw"></i> Help
                            </a>
                            <a href="#" class="list-group-item">
                                <i class="demo-pli-unlock icon-lg icon-fw"></i> Logout
                            </a>
                        </div>
                    </div> --}}


                    <!--Shortcut buttons-->
                    <!--================================-->
                    <div id="mainnav-shortcut" class="hidden">
                        <ul class="list-unstyled shortcut-wrap">
                            <li class="col-xs-3" data-content="My Profile">
                                <a class="shortcut-grid" href="#">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-mint">
                                    <i class="demo-pli-male"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3" data-content="Messages">
                                <a class="shortcut-grid" href="#">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-warning">
                                    <i class="demo-pli-speech-bubble-3"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3" data-content="Activity">
                                <a class="shortcut-grid" href="#">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-success">
                                    <i class="demo-pli-thunder"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3" data-content="Lock Screen">
                                <a class="shortcut-grid" href="#">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-purple">
                                    <i class="demo-pli-lock-2"></i>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!--================================-->
                    <!--End shortcut buttons-->


                    <ul id="mainnav-menu" class="list-group">

                        <!--Category name-->
                        {{-- <li class="list-header">Navigation</li> --}}

                        <!--Menu list item-->
                        <li class="{{ areActiveRoutes(['admin.dashboard'])}}">
                            <a class="nav-link" href="{{route('admin.dashboard')}}">
                                <i class="fa fa-home"></i>
                                <span class="menu-title">{{__('Dashboard')}}</span>
                            </a>
                        </li>

                        <!-- Product Menu -->
                        @if(Auth::user()->user_type == 'admin' || in_array('1', json_decode(Auth::user()->staff->role->permissions)))
                            <li>
                                <a href="#">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span class="menu-title">{{__('Products')}}</span>
                                    <i class="arrow"></i>
                                </a>

                                <!--Submenu-->
                                <ul class="collapse">
                                    <li class="{{ areActiveRoutes(['brands.index', 'brands.create', 'brands.edit'])}}">
                                        <a class="nav-link" href="{{route('brands.index')}}">{{__('Brand')}}</a>
                                    </li>
                                    <li class="{{ areActiveRoutes(['feature-brands.index', 'feature-brands.create', 'feature-brands.edit'])}}">
                                        <a class="nav-link" href="{{route('feature-brands.index')}}">{{__('Feature Brand')}}</a>
                                    </li>
                                    <li class="{{ areActiveRoutes(['categories.index', 'categories.create', 'categories.edit'])}}">
                                        <a class="nav-link" href="{{route('categories.index')}}">{{__('Category')}}</a>
                                    </li>
                                    <li class="{{ areActiveRoutes(['subcategories.index', 'subcategories.create', 'subcategories.edit'])}}">
                                        <a class="nav-link" href="{{route('subcategories.index')}}">{{__('Subcategory')}}</a>
                                    </li>
                                    <li class="{{ areActiveRoutes(['subsubcategories.index', 'subsubcategories.create', 'subsubcategories.edit'])}}">
                                        <a class="nav-link" href="{{route('subsubcategories.index')}}">{{__('Sub Subcategory')}}</a>
                                    </li>
                                    <li class="{{ areActiveRoutes(['products.admin', 'products.create', 'products.admin.edit'])}}">
                                        <a class="nav-link" href="{{route('products.admin')}}">{{__('Published Products')}}</a>
                                    </li>
                                    <li class="{{ areActiveRoutes(['products.admin.pending', 'products.create', 'products.admin.edit'])}}">
                                        <a class="nav-link" href="{{route('products.admin.pending')}}">{{__('Pending Products')}}</a>
                                    </li>
                                    @if(\App\Models\BusinessSetting::where('type', 'vendor_system_activation')->first()->value == 1)
                                        <li class="{{ areActiveRoutes(['products.seller', 'products.seller.edit'])}}">
                                            <a class="nav-link" href="{{route('products.seller')}}">{{__('Seller Products')}}</a>
                                        </li>
                                    @endif
                                </ul>
                            </li>
                        @endif

                        {{-- @if(Auth::user()->user_type == 'admin' || in_array('2', json_decode(Auth::user()->staff->role->permissions)))
                        <li class="{{ areActiveRoutes(['flash_deals.index', 'flash_deals.create', 'flash_deals.edit'])}}">
                            <a class="nav-link" href="{{ route('flash_deals.index') }}">
                                <i class="fa fa-bolt"></i>
                                <span class="menu-title">{{__('Flash Deal')}}</span>
                            </a>
                        </li>
                        @endif --}}

                        @if(Auth::user()->user_type == 'admin' || in_array('3', json_decode(Auth::user()->staff->role->permissions)))
                            @php
                                $orders = DB::table('orders')
                                            ->orderBy('code', 'desc')
                                            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
                                            //->where('order_details.seller_id', Auth::user()->id)
                                            ->where('orders.meduserorder', 0)
                                            ->where('orders.viewed', 0)
                                            ->select('orders.id')
                                            ->distinct()
                                            ->count();
                            @endphp
                        <li class="{{ areActiveRoutes(['orders.index.admin','orders.pending', 'orders.processing', 'orders.on_delivery', 'orders.delivered', 'orders.rejected', 'orders.show'])}}">
                            <a class="nav-link" href="#">
                                <i class="fa fa-shopping-basket"></i>
                                <span class="menu-title">{{__('Orders')}} @if($orders > 0)<span class="pull-right badge badge-info">{{ $orders }}</span>@endif</span>
                            </a>
                             <!--Submenu-->
                             <ul class="collapse">
                                <li class="{{ areActiveRoutes(['orders.pending', 'orders.show'])}}">
                                    <a class="nav-link" href="{{ route('orders.pending') }}">{{__('New Order')}}@if($orders > 0)<span class="pull-right badge badge-info">{{ $orders }}</span>@endif</a>

                                </li>
                                <li class="{{ areActiveRoutes(['orders.processing', 'orders.show'])}}">
                                    <a class="nav-link" href="{{ route('orders.processing') }}">{{__('Processing Order')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['orders.complain', 'orders.show'])}}">
                                    <a class="nav-link" href="{{ route('orders.complain') }}">{{__('Complain Order')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['orders.on_delivery', 'orders.show'])}}">
                                    <a class="nav-link" href="{{ route('orders.on_delivery') }}">{{__('On Delivery Order')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['orders.delivered', 'orders.show'])}}">
                                    <a class="nav-link" href="{{ route('orders.delivered') }}">{{__('Delivered Order')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['orders.rejected', 'orders.show'])}}">
                                    <a class="nav-link" href="{{ route('orders.rejected') }}">{{__('Rejected Order')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['orders.index.admin', 'orders.show'])}}">
                                    <a class="nav-link" href="{{ route('orders.index.admin') }}">{{__('All Order')}}</a>
                                </li>
                            </ul>
                        </li>
                        @endif

                        {{-- new medication order  --}}

                        @if(Auth::user()->user_type == 'admin' || in_array('4', json_decode(Auth::user()->staff->role->permissions)))
                            @php
                                $orders = DB::table('orders')
                                            ->orderBy('code', 'desc')
                                            ->join('order_details', 'orders.id', '=', 'order_details.order_id')
                                            //->where('order_details.seller_id', Auth::user()->id)
                                            ->where('orders.meduserorder', 1)
                                            ->where('orders.viewed', 0)
                                            ->select('orders.id')
                                            ->distinct()
                                            ->count();
                            @endphp
                        <li class="{{ areActiveRoutes(['medorders.index.admin','medorders.pending', 'medorders.processing', 'medorders.on_delivery', 'medorders.delivered', 'medorders.rejected', 'morders.show'])}}">
                            <a class="nav-link" href="#">
                                <i class="fa fa-shopping-basket"></i>
                                <span class="menu-title">{{__('Medication Orders')}} @if($orders > 0)<span class="pull-right badge badge-info">{{ $orders }}</span>@endif</span>
                            </a>
                             <!--Submenu-->
                             <ul class="collapse">
                                
                                <li class="{{ areActiveRoutes(['medorders.wpayment', 'morders.show'])}}">
                                    <a class="nav-link" href="{{ route('medorders.wpayment') }}">{{__('Waiting for payment')}}@if($orders > 0)<span class="pull-right badge badge-info">{{ $orders }}</span>@endif</a>
                                </li>
                                
                                <li class="{{ areActiveRoutes(['medorders.processing', 'morders.show'])}}">
                                    <a class="nav-link" href="{{ route('medorders.processing') }}">{{__('Processing Order')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['medorders.on_delivery', 'morders.show'])}}">
                                    <a class="nav-link" href="{{ route('medorders.on_delivery') }}">{{__('On Delivery Order')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['medorders.delivered', 'morders.show'])}}">
                                    <a class="nav-link" href="{{ route('medorders.delivered') }}">{{__('Delivered Order')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['medorders.complain', 'morders.show'])}}">
                                    <a class="nav-link" href="{{ route('medorders.complain') }}">{{__('Complain Order')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['medorders.rejected', 'morders.show'])}}">
                                    <a class="nav-link" href="{{ route('medorders.rejected') }}">{{__('Rejected Order')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['medorders.index.admin', 'morders.show'])}}">
                                    <a class="nav-link" href="{{ route('medorders.index.admin') }}">{{__('All Order')}}</a>
                                </li>
                            </ul>
                        </li>
                        @endif

                        {{-- new medication order end --}}

                        @if(Auth::user()->user_type == 'admin' || in_array('5', json_decode(Auth::user()->staff->role->permissions)))
                        <li class="{{ areActiveRoutes(['order-tracking.index'])}}">
                            <a class="nav-link" href="{{ route('order-tracking.index') }}">
                                <i class="fa fa-money"></i>
                                <span class="menu-title">{{__('Order Tracking')}}</span>
                            </a>
                        </li>
                        @endif


                        @if(Auth::user()->user_type == 'admin' || in_array('6', json_decode(Auth::user()->staff->role->permissions)))
                        <li class="{{ areActiveRoutes(['sales.index', 'sales.show'])}}">
                            <a class="nav-link" href="{{ route('sales.index') }}">
                                <i class="fa fa-money"></i>
                                <span class="menu-title">{{__('Total sales')}}</span>
                            </a>
                        </li>
                        @endif



                        @if(Auth::user()->user_type == 'admin' || in_array('7', json_decode(Auth::user()->staff->role->permissions)))
                        <li class="{{ areActiveRoutes(['customers.index','madication.newuserorder'])}}">
                            <a href="{{ route('customers.index') }}">
                                <i class="fa fa-user-plus"></i>
                                <span class="menu-title">{{__('All user')}}</span>
                            </a>
                        </li>

                        @endif


                        {{-- madication start  --}}
                        @if(Auth::user()->user_type == 'admin' || in_array('8', json_decode(Auth::user()->staff->role->permissions)))
                        @php
                        $medication = DB::table('users')
                                    ->orderBy('id', 'desc')
                                    ->where('med_upcoming', '=', date('Y-m-d'))
                                    ->select('id')
                                    ->distinct()
                                    ->count();
                        @endphp
                        <li class="{{ areActiveRoutes(['medication.index', 'medicationuser.create', 'madication.neworder', 'meduser.view', 'meduser.edit' ])}}">
                            <a class="nav-link" href="{{ route('medication.index') }}">
                                <i class="fa fa-medkit"></i>
                                <span class="menu-title">{{__('Madication')}}@if($medication > 0)<span class="pull-right badge badge-info">{{ $medication }}</span>@endif</span>
                            </a>
                        </li>
                        <li class="{{ areActiveRoutes(['madication.newuser','madication.createorder'])}}">
                            <a class="nav-link" href="{{ route('madication.newuser') }}">
                                  <i class="fa fa-medkit"></i>
                                  <span class="menu-title">{{__('Old Madication User List')}}</span>
                            </a>
                        </li>
                        <li class="{{ areActiveRoutes(['medication.userneworder'])}}">
                            <a class="nav-link" href="{{ route('medication.userneworder') }}">
                                  <i class="fa fa-medkit"></i>
                                  <span class="menu-title">{{__('Request Order')}}</span>
                            </a>
                        </li>
                          @endif
                          {{-- Madication stop  --}}
                          {{-- doctor section start  --}}

                        @if(Auth::user()->user_type == 'admin' || in_array('9', json_decode(Auth::user()->staff->role->permissions)))
                        <li class="{{ areActiveRoutes(['doctor.index', 'doctor.create', 'doctor.edit','department.index', 'department.create', 'department.edit', 'time.slot'])}}">
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span class="menu-title">{{__('Doctors')}}</span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="{{ areActiveRoutes(['doctor.index', 'doctor.create', 'doctor.edit'])}}">
                                    <a class="nav-link" href="{{ route('doctor.index') }}">{{__('All Doctor')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['department.index', 'department.create', 'department.edit'])}}">
                                    <a class="nav-link" href="{{ route('department.index') }}">{{__('Departments')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['time.slot'])}}">
                                    <a class="nav-link" href="{{ route('time.slot') }}">{{__('Add Time Slot')}}</a>
                                </li>
                            </ul>
                        </li>
                        @endif
                        {{-- Doctor section end  --}}
                        {{--user message start --}}
                        @if(Auth::user()->user_type == 'admin' || in_array('10', json_decode(Auth::user()->staff->role->permissions)))
                            @php
                                $unread = DB::table('messages')
                                            ->orderBy('id', 'desc')
                                            ->where('read', 0)
                                            ->select('id')
                                            ->distinct()
                                            ->count();

                            @endphp
                        <li class="{{ areActiveRoutes(['admin.message.index'])}}">
                            <a class="nav-link" href="{{ route('admin.message.index') }}">
                                <i class="fa fa-shopping-basket"></i>
                                <span class="menu-title">{{__('Message')}} @if($unread > 0)<span class="pull-right badge badge-info">{{ $unread }}</span>@endif</span>
                            </a>
                        </li>
                        @endif

                        {{--user message end --}}

                        @if(Auth::user()->user_type == 'admin' || in_array('11', json_decode(Auth::user()->staff->role->permissions)))
                        <li class="{{ areActiveRoutes(['customer.prescription.index'])}}">
                            <a href="{{ route('customer.prescription.index') }}">
                                <i class="fa fa-user-plus"></i>
                                <span class="menu-title">{{__('Prescription')}}</span>
                            </a>
                        </li>
                        @endif


                        @if(Auth::user()->user_type == 'admin' || in_array('12', json_decode(Auth::user()->staff->role->permissions)))
                        <li>
                            <a href="#">
                                <i class="fa fa-file"></i>
                                <span class="menu-title">{{__('Reports')}}</span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="{{ areActiveRoutes(['stock_report.index'])}}">
                                    <a class="nav-link" href="{{ route('stock_report.index') }}">{{__('Stock Report')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['in_house_sale_report.index'])}}">
                                    <a class="nav-link" href="{{ route('in_house_sale_report.index') }}">{{__('Sale Report')}}</a>
                                </li>
                                @if(\App\Models\BusinessSetting::where('type', 'vendor_system_activation')->first()->value == 1)

                                    <li class="{{ areActiveRoutes(['seller_report.index'])}}">
                                        <a class="nav-link" href="{{ route('seller_report.index') }}">{{__('Seller Report')}}</a>
                                    </li>
                                    <li class="{{ areActiveRoutes(['seller_sale_report.index'])}}">
                                        <a class="nav-link" href="{{ route('seller_sale_report.index') }}">{{__('Seller Based Selling Report')}}</a>
                                    </li>
                                @endif
                                <li class="{{ areActiveRoutes(['wish_report.index'])}}">
                                    <a class="nav-link" href="{{ route('wish_report.index') }}">{{__('Product Wish Report')}}</a>
                                </li>
                            </ul>
                        </li>
                        @endif
                        {{-- blog start  --}}

                        @if(Auth::user()->user_type == 'admin' || in_array('13', json_decode(Auth::user()->staff->role->permissions)))
                        <li class="{{ areActiveRoutes(['admin-cblog-index','admin-blog-index','admin-blog-comment'])}}">
                            <a href="#">
                                <i class="fa fa-sticky-note-o"></i>
                                <span class="menu-title">{{__('Blog')}}</span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="{{ areActiveRoutes(['admin-cblog-index'])}}">
                                    <a class="nav-link" href="{{ route('admin-cblog-index') }}">{{__('Category')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['admin-blog-index'])}}">
                                    <a class="nav-link" href="{{ route('admin-blog-index') }}">{{__('Post')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['admin-blog-comment'])}}">
                                    <a class="nav-link" href="{{ route('admin-blog-comment') }}">{{__('Comments')}}</a>
                                </li>
                            </ul>
                        </li>
                        @endif
                        {{-- blog end  --}}


                        {{-- email templete setup  --}}
                        @if(Auth::user()->user_type == 'admin' || in_array('14', json_decode(Auth::user()->staff->role->permissions)))
                        <li class="{{ areActiveRoutes(['emailtemplete.index'])}}">
                            <a class="nav-link" href="{{ route('emailtemplete.index') }}">
                                <i class="fa fa-search"></i>
                                <span class="menu-title">{{__('Email Templete')}}</span>
                            </a>
                        </li>
                        @endif
                        {{-- email templete setup ens  --}}

                        {{-- @if(Auth::user()->user_type == 'admin' || in_array('7', json_decode(Auth::user()->staff->role->permissions)))
                        <li>
                            <a href="#">
                                <i class="fa fa-envelope"></i>
                                <span class="menu-title">{{__('Email Marketing')}}</span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="{{ areActiveRoutes(['newsletters.index'])}}">
                                    <a class="nav-link" href="{{route('newsletters.index')}}">{{__('Newsletters')}}</a>
                                </li>
                            </ul>
                        </li>
                        @endif --}}

                        @if(Auth::user()->user_type == 'admin' || in_array('15', json_decode(Auth::user()->staff->role->permissions)))
                        <li>
                            <a href="#">
                                <i class="fa fa-briefcase"></i>
                                <span class="menu-title">{{__('Business Settings')}}</span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="{{ areActiveRoutes(['activation.index'])}}">
                                    <a class="nav-link" href="{{route('activation.index')}}">{{__('Activation')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['payment_method.index'])}}">
                                    <a class="nav-link" href="{{ route('payment_method.index') }}">{{__('Payment method')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['smtp_settings.index'])}}">
                                    <a class="nav-link" href="{{ route('smtp_settings.index') }}">{{__('SMTP Settings')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['google_analytics.index'])}}">
                                    <a class="nav-link" href="{{ route('google_analytics.index') }}">{{__('Google Analytics')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['facebook_chat.index'])}}">
                                    <a class="nav-link" href="{{ route('facebook_chat.index') }}">{{__('Facebook Chat')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['social_login.index'])}}">
                                    <a class="nav-link" href="{{ route('social_login.index') }}">{{__('Social Media Login')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['currency.index'])}}">
                                    <a class="nav-link" href="{{route('currency.index')}}">{{__('Currency')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['languages.index', 'languages.create', 'languages.store', 'languages.show', 'languages.edit'])}}">
                                    <a class="nav-link" href="{{route('languages.index')}}">{{__('Languages')}}</a>
                                </li>
                            </ul>
                        </li>
                        @endif

                        @if(Auth::user()->user_type == 'admin' || in_array('16', json_decode(Auth::user()->staff->role->permissions)))
                        <li>
                            <a href="#">
                                <i class="fa fa-desktop"></i>
                                <span class="menu-title">{{__('Frontend Settings')}}</span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="{{ areActiveRoutes(['home_settings.index', 'home_banners.index', 'sliders.index', 'home_categories.index', 'home_banners.create', 'home_categories.create', 'home_categories.edit', 'sliders.create'])}}">
                                    <a class="nav-link" href="{{route('home_settings.index')}}">{{__('Home')}}</a>
                                </li>
                                {{-- <li class="{{ areActiveRoutes(['security.index'])}}">
                                    <a class="nav-link" href="{{route('security.index','security')}}">{{__('Security')}}</a>
                                </li> --}}
                                <li class="{{ areActiveRoutes(['special-offer.index'])}}">
                                    <a class="nav-link" href="{{route('special-offer.index')}}">{{__('Special Offer')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['shippingmethod.index'])}}">
                                    <a class="nav-link" href="{{route('shippingmethod.index')}}">{{__('Shipping Method')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['shippingaddress.index'])}}">
                                    <a class="nav-link" href="{{route('shippingaddress.index')}}">{{__('Shipping Address')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['aboutus.index'])}}">
                                    <a class="nav-link" href="{{route('aboutus.index','about')}}">{{__('About Us')}}</a>
                                </li>
                                {{-- <li class="{{ areActiveRoutes(['stories.index'])}}">
                                    <a class="nav-link" href="{{route('stories.index','dinratri-stories')}}">{{__('Apon Health Stories')}}</a>
                                </li> --}}

                                {{-- <li class="{{ areActiveRoutes(['payments.index2'])}}">
                                    <a class="nav-link" href="{{route('payments.index2','payments')}}">{{__('Payments')}}</a>
                                </li> --}}
                                {{-- <li class="{{ areActiveRoutes(['shipping.index'])}}">
                                    <a class="nav-link" href="{{route('shipping.index','shipping')}}">{{__('Shipping')}}</a>
                                </li> --}}
                                {{-- <li class="{{ areActiveRoutes(['cancellation.index'])}}">
                                    <a class="nav-link" href="{{route('cancellation.index','cancellation-return')}}">{{__('Cancellation & Return')}}</a>
                                </li> --}}
                                <li class="{{ areActiveRoutes(['faq.index'])}}">
                                    <a class="nav-link" href="{{route('faq.index','faq')}}">{{__('Faq')}}</a>
                                </li>
                                {{-- <li class="{{ areActiveRoutes(['career.index'])}}">
                                    <a class="nav-link" href="{{route('career.index','career')}}">{{__('Career')}}</a>
                                </li> --}}

                                <li>
                                    <a href="#">
                                        <span class="menu-title">{{__('Policy Pages')}}</span>
                                        <i class="arrow"></i>
                                    </a>

                                    <!--Submenu-->
                                    <ul class="collapse">

                                        {{-- <li class="{{ areActiveRoutes(['sellerpolicy.index'])}}">
                                            <a class="nav-link" href="{{route('sellerpolicy.index', 'seller_policy')}}">{{__('Seller Policy')}}</a>
                                        </li>
                                        <li class="{{ areActiveRoutes(['returnpolicy.index'])}}">
                                            <a class="nav-link" href="{{route('returnpolicy.index', 'return_policy')}}">{{__('Return Policy')}}</a>
                                        </li>
                                        <li class="{{ areActiveRoutes(['supportpolicy.index'])}}">
                                            <a class="nav-link" href="{{route('supportpolicy.index', 'support_policy')}}">{{__('Support Policy')}}</a>
                                        </li> --}}
                                        <li class="{{ areActiveRoutes(['terms.index'])}}">
                                            <a class="nav-link" href="{{route('terms.index', 'terms')}}">{{__('Terms & Conditions')}}</a>
                                        </li>
                                        <li class="{{ areActiveRoutes(['privacypolicy.index'])}}">
                                            <a class="nav-link" href="{{route('privacypolicy.index', 'privacy_policy')}}">{{__('Privacy Policy')}}</a>
                                        </li>
                                    </ul>

                                </li>

                                {{-- <li class="{{ areActiveRoutes(['links.index', 'links.create', 'links.edit'])}}">
                                    <a class="nav-link" href="{{route('links.index')}}">{{__('Useful Link')}}</a>
                                </li> --}}
                                <li class="{{ areActiveRoutes(['generalsettings.index'])}}">
                                    <a class="nav-link" href="{{route('generalsettings.index')}}">{{__('General Settings')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['generalsettings.logo'])}}">
                                    <a class="nav-link" href="{{route('generalsettings.logo')}}">{{__('Logo Settings')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['generalsettings.color'])}}">
                                    <a class="nav-link" href="{{route('generalsettings.color')}}">{{__('Color Settings')}}</a>
                                </li>
                            </ul>
                        </li>
                        @endif

                        @if(Auth::user()->user_type == 'admin' || in_array('17', json_decode(Auth::user()->staff->role->permissions)))
                        <li class="{{ areActiveRoutes(['seosetting.index'])}}">
                            <a class="nav-link" href="{{ route('seosetting.index') }}">
                                <i class="fa fa-search"></i>
                                <span class="menu-title">{{__('SEO Setting')}}</span>
                            </a>
                        </li>
                        @endif

                        @if(Auth::user()->user_type == 'admin' || in_array('18', json_decode(Auth::user()->staff->role->permissions)))
                        <li>
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span class="menu-title">{{__('Staffs')}}</span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="{{ areActiveRoutes(['user.admin'])}}">
                                    <a class="nav-link" href="{{ route('user.admin') }}">{{__('All Admin')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['staffs.index', 'staffs.create', 'staffs.edit'])}}">
                                    <a class="nav-link" href="{{ route('staffs.index') }}">{{__('All staffs')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['roles.index', 'roles.create', 'roles.edit'])}}">
                                    <a class="nav-link" href="{{route('roles.index')}}">{{__('Staff permissions')}}</a>
                                </li>
                            </ul>
                        </li>
                        @endif
                        @if(Auth::user()->user_type == 'admin' || in_array('19', json_decode(Auth::user()->staff->role->permissions)))
                        <li class="{{ areActiveRoutes(['user-message.index'])}}">
                            <a class="nav-link" href="{{ route('user-message.index') }}">
                                <i class="fa fa-search"></i>
                                <span class="menu-title">{{__('Regular Form')}}</span>
                            </a>
                        </li>
                        @endif
                        @if(Auth::user()->user_type == 'admin' || in_array('20', json_decode(Auth::user()->staff->role->permissions)))
                        <li class="{{ areActiveRoutes(['affiliate-user.index'])}}">
                            <a href="#">
                                <i class="fa fa-sticky-note-o"></i>
                                <span class="menu-title">{{__('Affiliate')}}</span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                <li class="{{ areActiveRoutes(['affiliate-user.show'])}}">
                                    <a class="nav-link" href="{{ route('affiliate-user.show') }}">{{__('Affiliate User')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['affiliate-user.index'])}}">
                                    <a class="nav-link" href="{{ route('affiliate-user.index') }}">{{__('Requested User')}}</a>
                                </li>
                            </ul>
                        </li>
                        @endif
                        
                        @if(Auth::user()->user_type == 'admin' || in_array('21', json_decode(Auth::user()->staff->role->permissions)))
                        <li>
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span class="menu-title">{{__('Code Master')}}</span>
                                <i class="arrow"></i>
                            </a>

                            <!--Submenu-->
                            <ul class="collapse">
                                
                                <li class="{{ areActiveRoutes(['master.index', 'master.create', 'master.edit'])}}">
                                    <a class="nav-link" href="{{ route('master.index') }}">{{__('Master')}}</a>
                                </li>
                                <li class="{{ areActiveRoutes(['softcode.index', 'softcode.create', 'softcode.edit'])}}">
                                    <a class="nav-link" href="{{route('softcode.index')}}">{{__('Soft Code')}}</a>
                                </li>
                            </ul>
                        </li>
                        @endif
                        
                        @if(Auth::user()->user_type == 'admin' || in_array('22', json_decode(Auth::user()->staff->role->permissions)))
                        <li class="{{ areActiveRoutes(['withdraw.index.admin','withdraw.show'])}}">
                                <a class="nav-link" href="{{ route('withdraw.index.admin') }}">
                                    <i class="fa fa-shopping-basket"></i>
                                    <span class="menu-title">{{__('Withdraw')}}</span>
                                </a>
                            </li>
                        @endif
                        
                        
                    </ul>
                </div>
            </div>
        </div>
        <!--================================-->
        <!--End menu-->

    </div>
</nav>
