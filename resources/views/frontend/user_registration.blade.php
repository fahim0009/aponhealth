@extends('frontend.layouts.app')
@section('title')
    Registration - Apon Health
@stop
@section('content')
<style>
    #message {
  display:block;
  background: #f1f1f1;
  color: #000;
  margin-top: 0px;
  padding: 10px 0px;
  margin-bottom: 10px;
}

#message p {
  padding: 0 35px;
  font-size: 14px;
  line-height: 1rem;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -20px;
  content: "✔";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -20px;
  content: "✖";
}

#register:disabled {
   pointer-events: none;
    opacity: 0.3;
}
 

</style>
    <section class="gry-bg py-4">
        <div class="profile">
            <div class="container">
                <div class="row mb-3">
                          
                    <div class=" col-md-6  mx-auto bg-white">
                         <div class="col-md-12 text-center px-35 pt-5">
                                <h3 class="heading heading-4 strong-500">
                                    {{__('Create an account')}}
                                </h3>
                            </div>
                        <form class="form-default" role="form" action="{{ route('user.register') }}" method="POST">
                                            @csrf
                        <div class="form-container p-5">
                             <div class="form-group">
                                <label>Name </label>
                                <input type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" value="{{ old('name') }}"  maxlength="50" name="name" id="name" required>
                                @error('name')
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('name') }}</strong>
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                             <div class="form-group">
                                <label>Phone </label>
                                <input id="email" type="number" class="form-control @error('error') is-invalid @enderror" value="{{ old('email') }}" name="email" required autocomplete="email">
                                    
                            </div>
                            @error('email')
                                <span class="invalid-feedback">
                                    <strong>{{ $errors->first('email') }}</strong>
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                            <span id="error_email"></span>
                            {{-- affiliate code start  --}}
                                            
                                        <input type="hidden" class="form-control{{ $errors->has('reference') ? ' is-invalid' : '' }}" 
                                        @php 
                                        if(isset($_GET["affiliate_id"])) {
                                        $id = $_GET["affiliate_id"];
                                        }
                                        if(isset($id)) {
                                            echo 'value="'.$id.'"';
                                            echo "readonly";
                                        }else {
                                        echo 'value="reference"';                                    }
                                        @endphp 
                        placeholder="{{ __('Reference id') }}" name="reference">
                        {{-- affiliate code end  --}}
                            <div class="form-group">
                                <label>Password </label>
                                <input type="password" id="password" class="form-control" name="password" pattern="{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required>
                                
                            </div>
                            <div class="form-group">
                                <label>Confirm Password </label>
                                <input type="password" class="form-control" name="password_confirmation" id="password_confirmation" required>
                                
                            </div>
                            {{-- password validation  --}}
                            <div class="row">
                                <div class="col-12">
                                    <div id="message">
                                        <p><span id='messagev'></span></p>
                                    </div>
                                </div>
                            </div>
                            {{-- password validation  --}}
                            <div class="form-group">
                       <input class="magic-checkbox" type="checkbox" name="checkbox_example_1" id="checkboxExample_1a" required>
                        <label for="checkboxExample_1a" class="text-sm">By signing up you agree to our <a href="{{route('terms')}}">terms and conditions</a></label>
                           </div>
                            

                            <select class="form-control" data-placeholder="Select shipping Cost " id="paid" name="shipping_cost" hidden="" readonly="">
                                <option value="100">100</option>
                            </select>

                            <button type="submit" id="register"  disabled class="text-white btn-theme float-right mb-3">Create Account
                        </button>
                        {{ csrf_field() }}

                        </div>
                        </form >
                          
                                <p class="w-100 d-flex justify-content-center align-items-center">
                                  {{__('Already have an account?')}}<a href="{{ route('user.login') }}" class="strong-600 pl-2"> {{__('Log In')}} </a>
                                </p>
                          
                    </div>
                </div>
                <!--old code--->
                
            </div>
        </div>
    </section>
@endsection
@section('script')
<script>
$(document).ready(function() {
    $('#email').keyup(function(){
      var error_email = '';
      var email = $('#email').val();
      var _token = $('input[name="_token"]').val();
      var filter = /(^(01){1}[3456789]{1}(\d){8})$/;
  if(!filter.test(email))
  {
    $('#error_email').html('<label class="text-danger">Invalid Phone Number</label>');
    $('#email').addClass('has-error');
    $('#register').attr('disabled', 'disabled');
  } else if (email.length > 11){
    $('#error_email').html('<label class="text-danger">Invalid Phone Number</label>');
    $('#email').addClass('has-error');
    $('#register').attr('disabled', 'disabled');
  } else {
       $.ajax({
        url:"{{ route('email_available.check') }}",
        method:"POST",
        data:{email:email, _token:_token},
        success:function(result)
        {
         if(result == 'unique')
         {
          $('#error_email').html('<label class="text-success">Phone Available</label>');
          $('#email').removeClass('has-error');
          $('#register').attr('disabled', false);
         }
         else
         {
          $('#error_email').html('<label class="text-danger">Already have a Account</label>');
          $('#email').addClass('has-error');
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
            if ($('#password').val() == $('#password_confirmation').val()) {
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
@endsection

