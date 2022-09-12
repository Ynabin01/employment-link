@extends('layouts.master')

@section('content')
@include('website.breadcrumb')
    <!--== Job Categories Area Wrapper ==-->

    <div class="job-list-area sp-y-bottom">
        <div class="container">
            <div class="row align-items-center">
                @if (isset($jobs))
                    @foreach ($jobs as $job)
                        {{-- {{$job->salary}}  {{$job->navigation->caption}} --}}
                        <div class="col-sm-6">
                            <div class="job-box">
                                <figure><img src="{{ $job->banner_image }}"></figure>
                                <a href="/jobdetail/{{ $job->nav_name }}">
                                    <div class="job-content">
                                        <h5>{{ $job->caption }} <span>({{ $job->getJob->total_demand }})</span></h5>
                                        <p><i class="fa fa-industry"></i>{{ $job->getJob->company_name }}</p>
                                        <p><i class="fa fa-map-marker"></i>{{ $job->getJob->country }}</p>
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
