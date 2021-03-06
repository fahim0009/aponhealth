@extends('layouts.app')

@section('content')

    <div class="pad-all text-center">
        <form class="" action="{{ route('in_house_sale_report.index') }}" method="GET">
            <div class="box-inline mar-btm pad-rgt">
                 Sort by Category:
                 <div class="select">
                     <select id="demo-ease" class="demo-select2" name="category_id" required>
                         @foreach (\App\Models\Category::all() as $key => $category)
                             <option value="{{ $category->id }}">{{ __($category->name) }}</option>
                         @endforeach
                     </select>
                 </div>
            </div>
            <button class="btn btn-default" type="submit">Filter</button>
        </form>
    </div>


    <div class="col-md-offset-2 col-md-8">
        <div class="panel">
            <!--Panel heading-->
            <div class="panel-heading">
                <h3 class="panel-title">Product wise sale report</h3>
            </div>

            <!--Panel body-->
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped mar-no demo-dt-basic">
                        <thead>
                            <tr>
                                <th>Product Name</th>
                                <th>Num of Sale</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($products as $key => $product)
                                <tr>
                                    <td>{{ __($product->name) }}</td>
                                    <td>{{ $product->num_of_sale }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

@endsection
