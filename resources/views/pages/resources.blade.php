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
            <h1>{{$item->basic_page_title}}</h1>
            <ul class="resources_list uk-list uk-margin-medium-top">
                @foreach($resources as $res)
                <li>
                    <a href="@if($res->link) {{$res->link}} @else /storage/{{json_decode($res->file)[0]->download_link}} @endif" target="_blank">
                        {{$res->title}}
                    </a>
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