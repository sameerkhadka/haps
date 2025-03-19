    <footer>
        <div class="uk-container">
            <div class="uk-child-width-1-4@s" uk-grid>
                <div class="footer__section">
                    <div class="footer__logo">
                        <a href="/" class="uk-logo">
                            <img src="{{Voyager::image(setting('site.logo'))}}" alt="">
                        </a>
                    </div>
                    <p>{{setting('site.footer_logo_text')}}</p>
                </div>
                <div class="footer__section links">
                    <ul>
                        <li><a>Quick links</a></li>
                        <li><a href="/resources">Resources</a></li>
                        <li><a href="/contact">Contact Us</a></li>
                        <li><a href="/donate">Donate</a></li>
                        <li><a href="/volunteer">Volunteer</a></li>
                    </ul>
                </div>
                <div class="footer__section">
                    <div class="footer__contactdetails">
                        <ul>
                            <li><a>Nepal Office</a></li>
                            <li><a href="{{setting('contact-us.map')}}">{{setting('contact-us.address')}}</a></li>
                            <li><a href="mailto:{{setting('contact-us.email')}}">{{setting('contact-us.email')}}</a></li>
                            <li><a href="tel:{{setting('contact-us.phone')}}">{{setting('contact-us.phone')}}</a></li>
                        </ul>
                    </div>
                </div>
                <div class="footer__section">
                    <div class="cta">
                        <a href="/donate" class="btn">Donate</a>
                        <a href="/volunteer" class="btn">Volunteer</a>
                    </div>
                </div>
            </div>
            <div class="footer__disclaimer">
                <p>HAPSA Nepal is a 501(c)(3) nonprofit organization, EIN 30-1032421. Donations are tax-deductible.</p>
            </div>
            <div class="footer__end">
                <div class="uk-child-width-1-3@l uk-child-width-1-2@s uk-grid">
                    <div class="footerEnd__section uk-flex">
                        <ul class="uk-flex">
                            <li>
                                <a href="{{setting('contact-us.facebook')}}" target="_blank">
                                    <span uk-icon="icon: facebook" class="uk-icon"></span>
                                </a>
                            </li>
                            <li>
                                <a href="{{setting('contact-us.youtube')}}" target="_blank">
                                    <span uk-icon="icon: youtube" class="uk-icon"></span>
                                </a>
                            </li>
                            <li>
                                <a href="{{setting('contact-us.instagram')}}" target="_blank">
                                    <span uk-icon="icon: instagram" class="uk-icon"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="footerEnd__section  uk-visible@l"></div>
                    <div class="footerEnd__section">
                        <ul class=" uk-flex uk-flex-wrap uk-flex-wrap-stretch">
                            <li><a href="http://" target="_blank">Privacy Policy</a></li>
                            <li><a id="copyright"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>