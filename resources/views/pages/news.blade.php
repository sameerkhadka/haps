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
                            News And Updates
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>



    <section class="newsUpdates uk-margin-xlarge-bottom">
        <div class="uk-container">
            <div class="newsUpdates__wrap uk-margin-xlarge-top dedicatedPage">
                <a href="{{$news[0]->link ? $news[0]->link : '/news/'.$news[0]->slug}}" class="post_section">
                    <div class="uk-card uk-margin-medium-bottom">
                        <div class="uk-grid">
                            <div class="uk-width-1-3@s">
                                <div class="uk-card-media-top">
                                    <img src="{{Voyager::image($news[0]->cover)}}" >
                                </div>
                            </div>
                            <div class="uk-width-2-3@s">
                                <div class="uk-card-body">
                                    <div class="date">{{date('F d, Y',strtotime($news[0]->date))}}</div>
                                    <div class="news__headline uk-text-truncate">{{$news[0]->title}}</div>
                                    <p>{{substr(strip_tags($news[0]->description), 0, 250)}}
                                    </p>
                                    
                                </div>
                                <div class="cta">
                                    <div class="inCard dark">
                                        <div class="explore">Explore</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
                <div class="uk-grid uk-child-width-1-3@s">
                    @foreach($news as $new)
                    @if($loop->first) @continue @endif
                    <a href="{{$new->link ? $new->link : '/news/'.$new->slug}}" class="post_section" target="blank">
                        <div class="uk-card">
                            <div class="uk-card-media-top">
                                <img src="{{Voyager::image($new->cover)}}" >
                            </div>
                            <div class="uk-card-body">
                                <div class="date">{{date('F d, Y',strtotime($new->date))}}</div>
                                <div class="news__headline uk-text-truncate">{{$new->title}}</div>
                            </div>
                        </div>
                    </a>
                    @endforeach
                </div>
            </div>
        </div>
    </section>

@endsection