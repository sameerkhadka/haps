@extends('layouts.app')

@section('title')
    
    <title>{{$item->page_title}}</title>

@endsection
    

@section('body')
    



    <section class="content p-12">
        <div class="uk-container uk-container-xsmall uk-text-center">
            <h2>{{$item->title}}</h2>
           <p class="uk-text-center@s">{!!$item->description!!}</p>
            <div class="cta">
                <a class="btn" href="{{$item->btn_link}}">{{$item->btn_title}}</a>
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


    <section class="p-12 testimonials">
        <div class="uk-container">
            <div class="uk-grid uk-child-width-1-2@s">
                <div class="title semicontent">
                    <h1>{{$testimonial->title}}</h1>
                   <p class="uk-text-center@s">{!!$testimonial->intro!!}</p>
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


    <section class="volunteerForm p-12" id="volunteerform">
        <div class="uk-container uk-container-small uk-margin-medium-bottom">
            <h1 class="uk-text-center@m">{{$item->form_title}}</h1>
            <p class="uk-text-center@m">{{$item->form_text}}
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
                        <label>How can you contribute?</label>
                        <textarea name="" id="" placeholder="Research, Enumerator, data analysis, Program Management" required></textarea>
                    </div>
                    <div class="catWrap uk-flex">
                        <label><input class="uk-checkbox" type="checkbox"></label>
                        <span>By checking this box, you provide HAPSA consent to send you information on our services. You may unsubscribe at any time.</span>
                    </div><div class="cta">
                        <a class="btn" href="">Submit</a>
                    </div>
                </form>
            </div>
        </div>
    </section>

@endsection