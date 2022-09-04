<div class="job-list-area sm-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-xl-5 m-auto text-center">
                <div class="section-title section-title--dark">
                    <h6>Recent Jobs</h6>
                    <h2 class="mb-0">List of Demand</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row align-items-center">
            @foreach($job_categories as $categorie)
            <div class="col-sm-6">
                <div class="job-box">
                    <figure><img src="{{$categorie->banner_image}}"></figure>
                    <a href="jobdetail">
                        <div class="job-content">
                            <h5>{{route('category',$categorie->nav_name)}} <span>{{$categorie->caption}}</span></h5>
                            <p><i class="fa fa-industry"></i>{{$categorie->short_content}}</p>
                            <p><i class="fa fa-map-marker"></i>{{$categorie->long_content}}</p>
                        </div>
                    </a>
                    <button class="btn-cog">Apply Now</button>
                </div>
            </div>
            @endforeach
        </div>
        <div class="view-all-button">
            <a href="alljob">View All</a>   
        </div>
    </div>
</div>
