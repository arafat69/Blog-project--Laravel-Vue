<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="arafat,business,company,agency,multipurpose,modern,bootstrap4">

    <meta name="author" content="">

    <title>Home | Arafat Ali</title>

    <!-- bootstrap.min css -->
    <link rel="stylesheet" href="{{ asset('fontend/plugins/bootstrap/css/bootstrap.min.css') }}">
    <!-- Icon Font Css -->
    <link rel="stylesheet" href="{{ asset('fontend/plugins/themify/css/themify-icons.css') }}">
    <link rel="stylesheet" href="{{ asset('fontend/plugins/fontawesome/css/all.css') }}">
    <link rel="stylesheet" href="{{ asset('fontend/plugins/magnific-popup/dist/magnific-popup.css') }}">
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="{{ asset('fontend/plugins/slick-carousel/slick/slick.css') }}">
    <link rel="stylesheet" href="{{ asset('fontend/plugins/slick-carousel/slick/slick-theme.css') }}">

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="{{ asset('fontend/css/style.css') }}">
</head>

<body>
<div id="app">
    <!-- Header Start -->

    <nav class="navbar navbar-expand-lg navbarPadding sticky-top" id="navbar">
        <div class="container">
            <router-link class="navbar-brand" to="/">
                <!-- Arafat -->
                <img src="{{ asset('fontend/images/logo.png') }}" id="brand-logo">
            </router-link>
            <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarsExample09"
                aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
                <span class="fa fa-bars"></span>
            </button>

            <div class="collapse navbar-collapse text-center" id="navbarsExample09">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"><router-link class="nav-link" to="/" exact>Home</router-link></li>
                    <li class="nav-item"><router-link class="nav-link" to="/about">About</router-link></li>
                    <li class="nav-item"><router-link class="nav-link" to="/services">Services</router-link></li>
                    <li class="nav-item"><router-link class="nav-link" to="/portfolio">Portfolio</router-link></li>
                    <li class="nav-item"><router-link class="nav-link" to="contact">Contact</router-link></li>
                </ul>

                <form class="form-lg-inline my-2 my-md-0 ml-lg-4 text-center">
                    <a href="javascript:void(0)" class="btn btn-solid-border btn-round-full">Get a Quote</a>
                </form>
            </div>
        </div>
    </nav>

    <!-- Header Close -->
    <div class="main-wrapper">
