    <header uk-sticky="show-on-up: true; animation: uk-animation-slide-top" class="header uk-sticky" >
        <nav class="uk-navbar-container uk-navbar-transparent uk-visible@m">
            <div class="uk-container uk-container-xlarge">
                <div uk-navbar="" class="uk-navbar">

                    <div class="uk-navbar-left">

                        <ul class="uk-navbar-nav">
                            <li>
                                <a href="/" class="uk-navbar-item uk-logo">
                                    <img class="full" src="{{Voyager::image(setting('site.logo'))}}" alt="{{setting('site.title')}}">
                                </a>
                            </li>
                            <li @if(!Request::segment(1)) class="uk-active @endif"><a href="/">Home</a></li>
                            <li @if(Request::segment(1) == 'about') class="uk-active" @endif><a href="/about">About Us</a></li>
                            
                            <li @if(Request::segment(1) == 'projects') class="uk-active" @endif><a href="/projects">HAPSA Projects</a></li>
                            <li @if(Request::segment(1) == 'news') class="uk-active" @endif><a href="/news" >News Coverage</a></li>
                            <li @if(Request::segment(1) == 'gallery') class="uk-active" @endif><a href="/gallery">Gallery</a></li>
                            <li @if(Request::segment(1) == 'volunteer') class="uk-active" @endif><a href="/volunteer#faqs">FAQ</a></li>
                        </ul>

                    </div>

                    <div class="uk-navbar-center uk-visible@m">

                        <ul class="uk-navbar-nav">
                            
                        </ul>

                    </div>

                    <div class="uk-navbar-right">
                        <a href="{{setting('contact-us.facebook')}}" class="uk-navbar-item" target="_blank">
                            <span uk-icon="icon: facebook" class="uk-icon"></span>
                        </a>
                        <a href="{{setting('contact-us.youtube')}}" class="uk-navbar-item" target="_blank">
                            <span uk-icon="icon: youtube" class="uk-icon"></span>
                        </a>
                        <a href="{{setting('contact-us.instagram')}}" class="uk-navbar-item" target="_blank">
                            <span uk-icon="icon: instagram" class="uk-icon"></span>
                        </a>
                        <div class="cta">
                            <a href="/donate" class="btn">Donate</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <div class="header__mobile uk-hidden@m">
            <div class="uk-container">
                <div class="uk-navbar-container">
                    <nav uk-navbar="" class="uk-navbar">
                        <div class="uk-navbar-left">
                            <a href="/" class="uk-navbar-item uk-logo">
                                <img src="{{Voyager::image(setting('site.logo'))}}">
                            </a>
                        </div>
                        <div class="uk-navbar-right">
                            <a href="{{setting('contact-us.facebook')}}" class="uk-navbar-item" target="_blank">
                                <span uk-icon="icon: facebook" class="uk-icon"></span>
                            </a>
                            <a href="{{setting('contact-us.youtube')}}" class="uk-navbar-item" target="_blank">
                                <span uk-icon="icon: youtube" class="uk-icon"></span>
                            </a>
                            <a href="{{setting('contact-us.instagram')}}" class="uk-navbar-item" target="_blank">
                                <span uk-icon="icon: instagram" class="uk-icon"></span>
                            </a>
                            <a class="uk-navbar-item uk-navbar-toggle" href="#header__mobile" uk-toggle="" aria-expanded="false">
                              <div uk-navbar-toggle-icon="" class="uk-icon uk-navbar-toggle-icon"></div>
                            </a>
                            <div class="cta">
                                <a href="/donate" class="btn">Donate</a>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <div id="header__mobile" uk-offcanvas="" mode="slide" overlay="" class="uk-offcanvas">
              <div class="uk-offcanvas-bar">
                <button class="uk-offcanvas-close uk-icon uk-close" type="button" uk-close=""></button>
                <div class="uk-panel uk-margin-medium-top">
                    <ul class="uk-nav">
                        <li class="uk-active"><a href="/">Home</a></li>
                        <li><a href="/about">About Us</a></li>
                        
                        <li><a href="/projects">HAPSA Projects</a></li>
                        <li><a href="/news" >News Coverage</a></li>
                        <li><a href="/gallery">Gallery</a></li>
                        <li><a href="/volunteer#faqs">FAQ</a></li>
                    </ul>
                </div>
              </div>
            </div>
          </div>
    </header>