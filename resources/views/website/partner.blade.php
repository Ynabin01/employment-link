<div class="brand-logo-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="brand-logo-content slick-row-20">
                    @if (isset($partners))
                        @foreach ($partners as $partner)
                            <div class="brand-logo-item">
                                <img src="{{ $partner->banner_image }}" alt="Clients" />
                            </div>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
