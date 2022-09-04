<div class="fun-fact-area sm-top">
    <div class="container">
        <div class="row mtn-40">
            @if (isset($statistics))
                @foreach ($statistics as $statistic)
                    <div class="col-6 col-md-3 text-center">
                        <div class="counter-item">
                            <h2 class="counter-number"><span
                                    class="counter">{{ $statistic->caption }}</span>{{ $statistic->short_content }}</h2>
                            <h6 class="counter-txt">{{ $statistic->long_content }}</h6>
                        </div>
                    </div>
                @endforeach
            @endif
        </div>
    </div>
</div>
