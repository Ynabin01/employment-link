@extends('layouts.master')

@section('content')
@include('website.breadcrumb')
    <!--== Job Categories Area Wrapper ==-->

    <div class="job-list-area sp-y-bottom">
        <div class="container">
            <div class="row align-items-center">
                @if (isset($jobs))
                    @foreach ($jobs as $job)
                        {{-- {{$job->navigation->salary}}  {{$job->navigation->caption}} --}}
                        <div class="col-sm-6">
                            <div class="job-box">
                                <figure><img src="{{ $job->navigation->banner_image }}"></figure>
                                <a href="/jobdetail/{{ $job->navigation->nav_name }}">
                                    <div class="job-content">
                                        <h5>{{ $job->navigation->caption }} <span>({{ $job->total_demand }})</span></h5>
                                        <p><i class="fa fa-industry"></i>{{ $job->company_name }}</p>
                                        <p><i class="fa fa-map-marker"></i>{{ $job->country }}</p>
                                    </div>
                                </a>
                                <button class="btn-cog">Apply Now</button>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
    </div>
    <!--== End Categories Area Wrapper ==-->
@endsection
