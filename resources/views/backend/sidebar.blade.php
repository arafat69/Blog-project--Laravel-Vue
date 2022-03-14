<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Arafat</title>
    <link rel="stylesheet" href="{{ asset('backend/assets/css/bootstrap.css') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="{{ asset('backend/assets/vendors/perfect-scrollbar/perfect-scrollbar.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/assets/css/app.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
</head>

<body>
    <div id="app">
        <div id="sidebar" class='active'>
            <div class="sidebar-wrapper active">
                <div class="sidebar-header border-bottom">
                    <a href="{{url('/') }}" target="_blank">Main Site</a>
                </div>
                <div class="sidebar-menu">
                    <ul class="menu">
                        <li class='sidebar-title'>Main Menu</li>

                        <li class="sidebar-item">
                            <router-link to="/dashboard" class='sidebar-link' exact>
                                <i data-feather="home" width="20"></i>
                                <span>Dashboard</span>
                        </li>

                         <li class="sidebar-item">
                            <router-link to="/category" class='sidebar-link'>
                                <i data-feather="home" width="20"></i>
                                <span>Category</span>
                            </router-link>
                        </li>

                         <li class="sidebar-item">
                            <router-link to="/post" class='sidebar-link'>
                                <i data-feather="home" width="20"></i>
                                <span>Post</span>
                            </router-link>
                        </li>

                        <li class="sidebar-item  has-sub">
                            <a href="#" class='sidebar-link'>
                                <i data-feather="triangle" width="20"></i>
                                <span>Template</span>
                            </a>
                            <ul class="submenu ">
                                <li>
                                    <router-link to="/sidebar">Sidebar</router-link>
                                </li>

                                <li>
                                    <router-link to="/about">Badge</router-link>
                                </li>
                            </ul>
                        </li>

                        <li class="sidebar-item">
                            <router-link to="/logout" class='sidebar-link'
                            onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                <i data-feather="log-out" width="20"></i>
                                <span>Logout</span>
                            </router-link>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                @csrf
                            </form>
                        </li>


                        {{-- <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a> --}}

                    </ul>
                </div>
                <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
            </div>
        </div>
        <div id="main">
