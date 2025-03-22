@extends('layouts.app')

@section('title')
    
    <title>{{$item->page_title}}</title>

@endsection
    

@section('body')
    <section class="content p-12">
        <div class="uk-container uk-container-xsmall uk-text-center">
            <h2>{{$item->title}}</h2>
           {!!$item->description!!}
            <div class="cta">
                <a class="btn" href="{{$item->btn_link}}">{{$item->btn_title}}</a>
            </div>
        </div>
    </section>


    <section class="donationDetails p-12">
        <div class="uk-container">
            <div class="uk-grid">
                <div class="uk-width-2-5@s">
                    <div class="waysToGive">
                    {!!$item->introduction!!}
                    </div>
                </div>
                <div class="uk-width-1-5@s"></div>
                <div class="uk-width-2-5@s">
                    <div uk-sticky="end: true">
                        <img src="{{Voyager::image($item->image)}}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="p-12 testimonials">
        <div class="uk-container">
            <div class="uk-grid uk-child-width-1-2@s">
                <div class="title semicontent">
                    <h1>{{$testimonial->title}}</h1>
                   {!!$testimonial->intro!!}
                </div>
                <div class="content">
                    {!!$testimonial->description!!}
                </div>
            </div>
            <div class="uk-grid uk-child-width-1-4@m uk-child-width-1-2@s semicontent">
                @foreach(json_decode($testimonial->testimonials)->body as $test)
                <div class="revSection uk-margin-large-top">
                    {!!$test->message!!}
                    <h5>{{$test->name}}</h5>
                </div>
                @endforeach
            </div>
        </div>
    </section>


    <section class="volunteerForm p-12" id="donateform">
        <div class="uk-container uk-container-small uk-text-center@m uk-margin-large-bottom">
            <h1>{{$item->donate_title}}</h1>
            {!!$item->donate_text!!}
        </div>
        <div class="uk-container">
            <div class="uk-grid uk-child-width-1-3@s">
                <div class="volunteerContact  uk-text-center@s">
                    <h5>Company Mailing Address</h5>
                    <span>{{setting('contact-us.address')}}</span>
                    <span>{{setting('contact-us.email')}}</span>
                </div>
                <div class="uk-text-center@s">
                    <h5>General inquiries</h5>
                    <span>{{setting('contact-us.phone')}}</span>
                </div>
                <div class="uk-text-center@s">
                    <h5>Our bank account in Nepal</h5>
                    <div class="bank_details">
                        {!!$item->bank_detail!!}
                    </ul>
                </div>
            </div>
        </div>
        <div class="uk-container uk-containerxsmall uk-margin-medium-top">
            
            <div class="gofundme uk-margin-bottom">
               {!!$item->gofundme!!}
            </div>
        </div>
    </section>


    <section class="home__gallery">
        <div class="homeGallery__wrap">
            @foreach($global_images as $img)
            <div class="homeGallery_image"><img src="{{Voyager::image($img->img)}}" alt=""></div>
            @endforeach
        </div>
    </section>
@endsection