@extends("layouts.master")

@section('content')

<!--== Start Page Header Area ==-->
<div class="breadcrumb-area">
    <div class="container">
        <ol class="default-breadcrumb">
            <li class="crumb">
              <div class="link"><a href="index.html" class="fa fa-home"></a></div>
            </li>
            <li class="crumb active">
                <div class="link"><span aria-current="location">All Jobs</span></div>
            </li>
        </ol>
    </div>
</div>
<!--== End Page Header Area ==-->

<!--== Job Categories Area Wrapper ==-->
<div class="job-list-area sp-y-bottom">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="job-box">
                    <figure><img src="website/images/client/719.gif"></figure>
                    <a href="jobdetail">
                    <div class="job-content">
                        <h5>Security Guard <span>(21)</span></h5>
                        <p><i class="fa fa-industry"></i>Strike Force Security Sdn. Bhd.</p>
                        <p><i class="fa fa-map-marker"></i>Malaysia , Selangor , Klang</p>
                    </div>
                    </a>
                    <button class="btn-cog">Apply Now</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!--== End Categories Area Wrapper ==-->
@endsection
