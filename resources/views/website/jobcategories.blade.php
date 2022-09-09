@extends('layouts.master')

@push('title')
    {{-- {{ $normal->caption }} --}}
@endpush

@section('content')
    <!--== Start Page Header Area ==-->
    <div class="breadcrumb-area">
        <div class="container">
            <ol class="default-breadcrumb">
                <li class="crumb">
                    <div class="link"><a href="/" class="fa fa-home"></a></div>
                </li>
                <li class="crumb active">
                    <div class="link"><span aria-current="location">Job Categories</span></div>
                </li>
            </ol>
        </div>
    </div>

    <!--== End Page Header Area ==-->
    <!--== Job Categories Area Wrapper ==-->
    <div class="job-category-area sp-y-bottom">
        <div class="container">
            <div class="row align-items-center">
                @foreach ($job_categories as $cat)
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a href="{{ route('JobList', $cat->nav_name) }}">
                            <div class="category-box">
                                <img src="{{ $cat->banner_image }}">
                                <p>{{ $cat->caption }}</p>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    <!--== End Categories Area Wrapper ==-->
@endsection
