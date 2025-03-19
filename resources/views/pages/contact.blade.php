@extends('layouts.app')

@section('title')
    <title>Contact | Hapsa Globe</title>
@endsection
    

@section('body')

                

    <section class="volunteerForm p-12" id="volunteerform">
        <div class="uk-container uk-container-small uk-text-center@m uk-margin-medium-bottom">
            <h1>Let's get in touch</h1>
            <p>Feel free to reach out to us using the options below, and our dedicated team will respond to your inquiries promptly.
            </p>
        </div>
        <div class="uk-container">
            <div class="uk-grid">
                <div class="volunteerContact uk-width-1-3@s uk-margin-medium-top">
                    <h5>Company Mailing Address</h5>
                    <span>{{setting('contact-us.address')}}</span>
                    <span>{{setting('contact-us.email')}}</span>
                    <h5>General inquiries</h5>
                    <span>{{setting('contact-us.phone')}}</span>
                </div>
                <form class="uk-width-2-3@s uk-margin-medium-top">
                    <div class="uk-grid uk-child-width-1-2@m">
                        <div class="catWrap">
                            <label>Full Name</label>
                            <input class="uk-input" type="text" required>
                        </div>
                        <div class="catWrap">
                            <label>Age</label>
                            <input class="uk-input" type="number" required>
                        </div>
                        <div class="catWrap">
                            <label>Email</label>
                            <input class="uk-input" type="email" required>
                        </div>
                        <div class="catWrap">
                            <label>Phone</label>
                            <input class="uk-input" type="number">
                        </div>
                    </div>
                    <div class="catWrap">
                        <label>Message</label>
                        <textarea name="" id="" required></textarea>
                    </div>
                    <div class="cta">
                        <a class="btn" href="">Submit</a>
                    </div>
                </form>
            </div>
        </div>
    </section>
    
    <section class="faqs p-12" id="faqs">
        <div class="uk-container">
            <h1 class="uk-text-uppercase">{{$faqs->title}}</h1>
           {!!$faqs->description!!}
            <ul uk-accordion>
                @foreach(json_decode($faqs->faqs)->body as $faq)
                <li>
                    <a class="uk-accordion-title" href><h3>{{$faq->question}}</h3></a>
                    <div class="uk-accordion-content">
                        {!!$faq->answer!!}
                    </div>
                </li>
                @endforeach
            </ul>
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