<!--== Start Page Header Area ==-->

<div class="breadcrumb-area">
    <div class="container">
        <ol class="default-breadcrumb">
            <li class="crumb">
              <div class="link"><a href="/" class="fa fa-home"></a></div>
            </li>
            <li class="crumb active">
                <div class="link"><span aria-current="location">{{$slug1 ?? 'slug1'}}</span></div>
            </li>
            @if(isset($slug2))
                <li class="crumb active">
                    <div class="link"><span aria-current="location">{{$slug2 ?? 'slug2'}}</span></div>
                </li>
            @endif
            
        </ol>
    </div>
</div>
<!--== End Page Header Area ==-->
