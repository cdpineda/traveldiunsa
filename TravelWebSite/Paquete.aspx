﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TravelSite.Master" AutoEventWireup="true" CodeBehind="Paquete.aspx.cs" Inherits="TravelWebSite.Paquete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="header header-bg-6">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <div class="header-content">
                                <div class="header-content-inner">
                                    <h1>Tour Details</h1>
                                    <p> </p>
                                    <div class="ui breadcrumb">
                                        <a href="index.html" class="section">Home</a>
                                        <div class="divider"> / </div>
                                        <div class="active section">Tour details</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- tour details -->
            <section class="tour-details-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-sm-8">
                            <div id="tour-slide" class="owl-carousel owl-theme">
                                <div class="item"><img src="assets/images/hotel-750x420-1.jpg" class="img-responsive" alt=""></div>
                                <div class="item"><img src="assets/images/hotel-750x420-2.jpg" class="img-responsive" alt=""></div>
                                <div class="item"><img src="assets/images/hotel-750x420-3.jpg" class="img-responsive" alt=""></div>
                                <div class="item"><img src="assets/images/hotel-750x420-4.jpg" class="img-responsive" alt=""></div>
                            </div>
                            <h3>Overview</h3>
                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its 
                                layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to
                                using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web 
                                page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web 
                                sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose
                                (injected humour and the like).
                            </p>
                            <div class="row">
                                <div class="col-md-4 col-sm-4">
                                    <ul class="list-ok">
                                        <li>Coffee machine</li>
                                        <li>Wifi</li>
                                        <li> Microwave</li>
                                        <li>Oven</li>
                                    </ul>
                                </div>
                                <div class="col-md-4 col-sm-4">
                                    <ul class="list-ok">
                                        <li>Fridge</li>
                                        <li>Hairdryer</li>
                                        <li>Towels</li>
                                        <li>Toiletries</li>
                                    </ul>
                                </div>
                                <div class="col-md-4 col-sm-4">
                                    <ul class="list-ok">
                                        <li>DVD player</li>
                                        <li>Air-conditioning</li>
                                        <li>Tv</li>
                                        <li>Freezer</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="separator"></div>
                            <div class="tour_view_map">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h3>Map</h3>
                                    </div>
                                    <div class="col-sm-6">
                                        <!-- The element that will contain Google Map. This is used in both the Javascript and CSS above. -->
                                        <div id="map"></div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="box_map">
                                            <i class="flaticon-car"></i>
                                            <h4>By Train/tube</h4>
                                            <p>Per cu esse assentior delicatissimi, qui adipiscing dissentiunt mediocritatem in, dicat voluptaria no eam. No est alia eloquentiam. Has rebum vulputate adversarium no. Pro cibo delenit scripserit id.</p>
                                        </div>
                                        <div class="box_map">
                                            <i class="flaticon-ship"></i>
                                            <h4>By bus</h4>
                                            <p>Per cu esse assentior delicatissimi, qui adipiscing dissentiunt mediocritatem in, dicat voluptaria no eam. No est alia eloquentiam. Has rebum vulputate adversarium no.</p>
                                        </div>
                                        <div class="box_map">
                                            <i class="flaticon-car"></i>
                                            <h4>By Taxi/cabs</h4>
                                            <p>Per cu esse assentior delicatissimi, qui adipiscing dissentiunt mediocritatem in, dicat voluptaria no eam. No est alia eloquentiam. Has rebum vulputate adversarium no.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="separator"></div>
                            <div class="comments-container">
                                <h3>Reviews </h3>
                                <ul class="comments-list">
                                    <li>
                                        <div class="comment-main-level">
                                            <!-- Avatar -->
                                            <div class="comment-avatar"><img src="assets/images/avtar-1.jpg" alt=""></div>
                                            <div class="comment-box">
                                                <div class="comment-content">
                                                    <cite class="comment-author">Mozammel Hoque</cite>
                                                    <div class="review_rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?</p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="comment-main-level">
                                            <!-- Avatar -->
                                            <div class="comment-avatar"><img src="assets/images/avtar-1.jpg" alt=""></div>
                                            <div class="comment-box">
                                                <div class="comment-content">
                                                    <cite class="comment-author">Mozammel Hoque</cite>
                                                    <div class="review_rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?</p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="comment-main-level">
                                            <!-- Avatar -->
                                            <div class="comment-avatar"><img src="assets/images/avtar-1.jpg" alt=""></div>
                                            <div class="comment-box">
                                                <div class="comment-content">
                                                    <cite class="comment-author">Mozammel Hoque</cite>
                                                    <div class="review_rating">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi et iure laudantium vitae, praesentium optio, sapiente distinctio illo?</p>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- Comment Form -->
                            <div class="comment-form">
                                <h3>Leave a Review</h3>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="f_name" name="f_name" placeholder="First Name*" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="l_name" name="l_name" placeholder="Last Name*" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="email2" name="email2" placeholder="Your Email*" required>
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <div class="select-filters">
                                                <select name="room_type" id="sort-price">
                                                    <option value="" selected="">Rating</option>
                                                    <option value="1">1 (lowest)</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5 (medium)</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <textarea class="form-control" id="message" name="message" placeholder="Your Comment*" rows="5"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" id="verify_booking2" name="verify_booking" placeholder="Are you human? 3 + 1 =">
                                        </div>
                                    </div>

                                    <div class="col-sm-12">
                                        <a href="#" class="thm-btn">Submit</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="sidber-box booking_price">
                                <div class="price">
                                    <strong>$39</strong><small>per person</small>
                                </div>

                                <ul class="list-ok">
                                    <li>Lorem ipsum dolor sit amet,</li>
                                    <li>There are many variations</li>
                                    <li>In pellentesque arcu at diam</li>
                                    <li>Quisque nec ex quis </li>
                                </ul>
                                <div class="offer">*Free for childs under 8 years old</div>
                            </div>
                            <!-- booking -->
                            <div class="sidber-box tags-widget">
                                <div class="cats-title">Booking</div>
                                <div class="booking-form tour_booking">
                                    <form>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Check in</label>
                                                    <div class="icon-addon">
                                                        <input type="text" placeholder="Date" class="form-control" id="datepicker1">
                                                        <label class="glyphicon fa fa-calendar" title="email"></label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>Check out</label>
                                                    <div class="icon-addon">
                                                        <input type="text" placeholder="Check out" class="form-control" id="datepicker2">
                                                        <label class="glyphicon fa fa-calendar" title="email"></label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <label>Adults</label>
                                                <div class="input-group number-spinner">
                                                    <span class="input-group-btn">
                                                        <a class="btn btn-pm" data-dir="dwn"><span class="glyphicon glyphicon-minus"></span></a>
                                                    </span>
                                                    <input type="text" class="form-control text-center" value="1">
                                                    <span class="input-group-btn">
                                                        <a class="btn btn-pm" data-dir="up"><span class="glyphicon glyphicon-plus"></span></a>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class=" col-sm-6">
                                                <label>Children</label>
                                                <div class="input-group number-spinner">
                                                    <span class="input-group-btn">
                                                        <a class="btn btn-pm" data-dir="dwn"><span class="glyphicon glyphicon-minus"></span></a>
                                                    </span>
                                                    <input type="text" class="form-control text-center" value="1">
                                                    <span class="input-group-btn">
                                                        <a class="btn btn-pm" data-dir="up"><span class="glyphicon glyphicon-plus"></span></a>
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <label>Name</label>
                                                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter your Name">
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input type="text" class="form-control" id="email" name="email" placeholder="Enter Your Email">
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <label>Phone</label>
                                                    <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone Number">
                                                </div>
                                            </div>
                                            <div class="col-sm-12">
                                                <div class="form-group">
                                                    <label>Human verification</label>
                                                    <input type="text" class="form-control" id="verify_booking" name="verify_booking" placeholder="Are you human? 3 + 1 =">
                                                </div>
                                            </div>
                                        </div>
                                        <a href="#" class="thm-btn btn-block">Book now</a>
                                    </form>
                                </div>
                            </div>
                            <!-- help center -->
                            <div class="sidber-box help-widget">
                                <i class="flaticon-photographer-with-cap-and-glasses"></i>
                                <h4>Need <span>Help?</span></h4>
                                <a href="#" class="phone">+001620214460</a>
                                <small>Monday to Friday 9.00am - 7.30pm</small>
                            </div>
                        </div>
                    </div>
                    <!-- related tours -->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="separator"></div>
                            <h3>Related Tours</h3>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="grid-item-inner">
                                <div class="grid-img-thumb">
                                    <!-- ribbon -->
                                    <div class="ribbon"><span>Popular</span></div>
                                    <a href="#"><img src="assets/images/tour-370x370-1.jpg" alt="1" class="img-responsive" /></a>
                                </div>
                                <div class="grid-content">
                                    <div class="grid-price text-right">
                                        Only <span><sub>$</sub>785</span>
                                    </div>
                                    <div class="grid-text">
                                        <div class="place-name">City sightseeing</div>
                                        <div class="travel-times">
                                            <h4 class="pull-left">3 days 2 nights </h4>
                                            <span class="pull-right">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- ../grid item -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="grid-item-inner">
                                <div class="grid-img-thumb">
                                    <!-- ribbon -->
                                    <div class="ribbon"><span>Popular</span></div>
                                    <a href="#"><img src="assets/images/tour-370x370-2.jpg" alt="1" class="img-responsive" /></a>
                                </div>
                                <div class="grid-content">
                                    <div class="grid-price text-right">
                                        Only <span><sub>$</sub>785</span>
                                    </div>
                                    <div class="grid-text">
                                        <div class="place-name">Historic Buildings</div>
                                        <div class="travel-times">
                                            <h4 class="pull-left">3 days 2 nights </h4>
                                            <span class="pull-right">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- ../grid item -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="grid-item-inner">
                                <div class="grid-img-thumb">
                                    <!-- ribbon -->
                                    <div class="ribbon"><span>Popular</span></div>
                                    <a href="#"><img src="assets/images/tour-370x370-3.jpg" alt="1" class="img-responsive" /></a>
                                </div>
                                <div class="grid-content">
                                    <div class="grid-price text-right">
                                        Only <span><sub>$</sub>785</span>
                                    </div>
                                    <div class="grid-text">
                                        <div class="place-name">Museums</div>
                                        <div class="travel-times">
                                            <h4 class="pull-left">3 days 2 nights </h4>
                                            <span class="pull-right">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- ../grid item -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="grid-item-inner">
                                <div class="grid-img-thumb">
                                    <!-- ribbon -->
                                    <div class="ribbon"><span>Popular</span></div>
                                    <a href="#"><img src="assets/images/tour-370x370-4.jpg" alt="1" class="img-responsive" /></a>
                                </div>
                                <div class="grid-content">
                                    <div class="grid-price text-right">
                                        Only <span><sub>$</sub>785</span>
                                    </div>
                                    <div class="grid-text">
                                        <div class="place-name">Mariott Hotel</div>
                                        <div class="travel-times">
                                            <h4 class="pull-left">3 days 2 nights </h4>
                                            <span class="pull-right">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- ../grid item -->
                    </div>
                </div>
            </section>
            <!-- Newsletter -->
            <section class="get-offer">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-5">
                            <span>Subscribe to our Newsletter</span>
                            <h2>& Discover the best offers!</h2>
                        </div>
                        <div class="col-sm-7">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Enter Your Email" name="q">
                                <div class="input-group-btn">
                                    <button class="btn btn-default" type="submit"><i class="flaticon-paper-plane"></i> Subscribe</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>        
</asp:Content>
