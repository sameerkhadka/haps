@extends('layouts.app')

@section('title')
    
    <title>{{$item->basic_page_title}}</title>

@endsection
    

@section('body')

    
    <section class="non banner" style="background-image: url('{{Voyager::image($item->basic_banner)}}')">
        <div class="overlay"></div>
        <div class="uk-container">
            <div class="bannerText">
                <div class="text">
                    <ul class="breadcrumb uk-flex">
                        <li>
                            <a href="/">Home</a>
                            <span uk-icon="icon: chevron-right"></span>
                        </li>
                        <li>
                        {{$item->basic_page_title}}
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

      
    <section class="resources p-1">
        <div class="uk-container">
            <h2>Resources and Publications</h2>
            <div class="resources_card uk-margin-medium-top">
                <div class="uk-grid uk-child-width-1-3@m uk-child-width-1-2@s">
                    @foreach($resources as $res)
                    <div class="uk-transition-toggle">  
                        <div class="project__card">
                            <div class="projectCard__image">
                                <img src="{{$res->image ? Voyager::image($res->image) : '/images/document.jpg'}}">
                            </div>
                            <div class="uk-panel">
                                <div class="uk-position-small uk-position-bottom uk-overlay cardTitle">
                                    <h4>{{$res->title}}</h4>
                                    <div class="cta">
                                        <div class="inCard">
                                            <a href="{{$res->link ?? '/storage/'.json_decode($res->file)[0]->download_link}}" target="blank">Explore</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
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