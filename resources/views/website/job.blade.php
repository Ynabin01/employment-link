<div class="job-category-area sm-top">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-xl-5 m-auto text-center">
                <div class="section-title section-title--dark">
                    <h6>Available</h6>
                    <h2 class="mb-0">Job Categories</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row align-items-center">

                @foreach ($job_categories as $job)
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <a href="/joblist/{{$job->nav_name}}">
                            <div class="category-box">
                                <img src="{{ $job->banner_image }}">
                                <p>{{ $job->caption }}</p>
                            </div>
                        </a>
                    </div>
                @endforeach
           
        </div>
    </div>
    <div class="view-all-button">
        <a href="/job-seeker/job-categorie">View All Categories</a>
    </div>
</div>
</div>
