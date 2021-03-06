@extends('layouts.app')

@section('content')

<div class="col-lg-6 col-lg-offset-3">
    <div class="panel">
        <div class="panel-heading">
            <h3 class="panel-title">{{__('Role Information')}}</h3>
        </div>

        <!--Horizontal Form-->
        <!--===================================================-->
        <form class="form-horizontal" action="{{ route('roles.store') }}" method="POST" enctype="multipart/form-data">
        	@csrf
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="name">{{__('Name')}}</label>
                    <div class="col-sm-9">
                        <input type="text" placeholder="{{__('Name')}}" id="name" name="name" class="form-control" required>
                    </div>
                </div>
                <div class="panel-heading">
                    <h3 class="panel-title">{{ __('Permissions') }}</h3>
                </div>
                <div class="form-group">
                    <label class="col-sm-3 control-label" for="banner"></label>
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Products') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="1">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Flash Deal') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="2">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Orders') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="3">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Medication Orders') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="4">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Order Tracking') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="5">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Total Sales') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="6">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('All User') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="7">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Medication') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="8">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Doctors') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="9">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Message') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="10">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Prescription') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="11">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Report') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="12">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Blog') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="13">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Email Template') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="14">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Business Settings') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="15">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Frontend Settings') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="16">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('SEO Settings') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="17">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10">
                                <label class="control-label">{{ __('Staffs') }}</label>
                            </div>
                            <div class="col-sm-2">
                                <label class="switch">
                                    <input type="checkbox" name="permissions[]" class="form-control demo-sw" value="18">
                                    <span class="slider round"></span>
                                </label>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="panel-footer text-right">
                <button class="btn btn-purple" type="submit">{{__('Save')}}</button>
            </div>
        </form>
        <!--===================================================-->
        <!--End Horizontal Form-->

    </div>
</div>

@endsection
