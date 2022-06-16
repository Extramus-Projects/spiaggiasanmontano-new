<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <title>{{ __('Welcome') }} &raquo; Spiaggia &raquo; admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
  <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

  <!-- custom css -->
  <link rel="stylesheet" type="text/css" href="{{ asset('css/negomboadmin2020.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('css/datepicker/t-datepicker.min.css') }}">
  <link rel="stylesheet" type="text/css" href="{{ asset('css/datepicker/t-datepicker-green.css') }}">

</head>

<body>
	<!-- Bootstrap NavBar -->
	<nav class="navbar navbar-expand-md navbar-dark bg-primary">
	  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <a class="navbar-brand" href="{{ route('admin') }}">
	    <img src="{{ asset('images/siteimages/logo-color.png') }}" width="150" height="30" class="d-inline-block align-top" alt="">
	    <!-- <span class="menu-collapsed">My Bar</span> -->
	  </a>
	  <div class="collapse navbar-collapse" id="navbarNavDropdown">
	    <ul class="navbar-nav ml-auto">
	      <li class="nav-item active">
          @guest
            <a class="nav-link" href="{{ route('user.index') }}">{{ __('Home') }}</a>
          @else
            <a class="nav-link" href="{{ route('admin') }}">{{ __('Home') }}</a>
          @endguest
	      </li>
	      {{-- <li class="nav-item">
	        <a class="nav-link" href="#">Pricing</a>
	      </li> --}}
        @auth
          <li class="nav-item dropdown">
              <a id="username_navbar_style" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                  {{ Auth::user()->name }} <span class="caret"></span>
              </a>

              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                  @if ( Auth::user()->role =="admin")
				  <a class="dropdown-item" href="{{ route('admin') }}">

                      {{ __('Pannello di Controllo') }}
                  </a>
                  @endif
                  <a class="dropdown-item" href="{{ route('logout') }}"
                     onclick="event.preventDefault();
                                   document.getElementById('logout-form').submit();">
                      {{ __('Logout') }}
                  </a>

                  <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                      @csrf
                  </form>
              </div>
          </li>
        @endauth

	      <!-- This menu is hidden in bigger devices with d-sm-none.
	           The sidebar isn't proper for smaller screens imo, so this dropdown menu can keep all the useful sidebar itens exclusively for smaller screens  -->
	      <li class="nav-item dropdown d-sm-block d-md-none">
	        <a class="nav-link dropdown-toggle" href="#" id="smallerscreenmenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Menu
	        </a>
	        <div class="dropdown-menu" aria-labelledby="smallerscreenmenu">
	            <a class="dropdown-item" href="{{ route('admin') }}">Dashboard</a>
	            <a class="dropdown-item" href="{{ route('admin.place.viewplaces') }}">Places</a>
	            <a class="dropdown-item" href="{{ route('admin.booking.viewbookings') }}">Orders</a>
	        </div>
	      </li><!-- Smaller devices menu END -->

	    </ul>
	  </div>
	</nav><!-- NavBar END -->


	<!-- Bootstrap row -->
	<div class="row" id="body-row">
	    <!-- Sidebar -->
	    @auth
        <div id="sidebar-container" class="sidebar-expanded d-none d-md-block"><!-- d-* hiddens the Sidebar in smaller devices. Its itens can be kept on the Navbar 'Menu' -->
  	        <!-- Bootstrap List Group -->
  	        <ul class="list-group">
  	            <!-- Separator with title -->
  	            <li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
  	                <small>MAIN MENU</small>
  	            </li>
  	            <!-- /END Separator -->
                  @if (Auth::user()->role == "admin")
  	            <button data-toggle="sidebar-colapse" class="bg-dark list-group-item list-group-item-action d-flex align-items-center">
  	                <div class="d-flex w-100 justify-content-start align-items-center">
  	                    <span id="collapse-icon" class="fa fa-2x mr-3"></span>
  	                    <span id="collapse-text" class="menu-collapsed">Collapse</span>
  	                </div>
  	            </button>
  	            <!-- Menu with submenu -->
  	            <a href="{{ route('admin') }}" class="bg-dark list-group-item list-group-item-action">
  	                <div class="d-flex w-100 justify-content-start align-items-center">
  	                    <span class="fa fa-dashboard fa-fw mr-3"></span>
  	                    <span class="menu-collapsed">Dashboard</span>
  	                </div>
  	            </a>
                  @if (Auth::user()->role=="admin")
  	            <a href="#submenu1" data-toggle="collapse" aria-expanded="false" class="bg-dark list-group-item list-group-item-action flex-column align-items-start">
  	                <div class="d-flex w-100 justify-content-start align-items-center">
  	                    <span class="fa fa-map-o fa-fw mr-3" aria-hidden="true"></span>
  	                    <span class="menu-collapsed">Manage Places</span>
  	                    <span class="submenu-icon ml-auto"></span>
  	                </div>
  	            </a>
                  @endif
  	            <!-- Submenu content -->
  	            <div id='submenu1' class="collapse sidebar-submenu">
  	                <a href="{{ route('admin.place.viewplaces') }}" class="list-group-item list-group-item-action bg-dark text-white">
  	                    <span class="menu-collapsed">View Places</span>
  	                </a>
                    @if (Auth::user()->role == "admin")
                      <a href="{{ route('admin.place.create') }}" class="list-group-item list-group-item-action bg-dark text-white">
                        <span class="menu-collapsed">Add Places</span>
                      </a>
                    @endif
  	            </div>
  	            <a href="#submenu2" data-toggle="collapse" aria-expanded="false" class="bg-dark list-group-item list-group-item-action flex-column align-items-start">
  	                <div class="d-flex w-100 justify-content-start align-items-center">
  	                    <span class="fa fa-shopping-cart fa-fw mr-3"></span>
  	                    <span class="menu-collapsed">Manage Bookings</span>
  	                    <span class="submenu-icon ml-auto"></span>
  	                </div>
  	            </a>
  	            <!-- Submenu content -->
  	            <div id='submenu2' class="collapse sidebar-submenu">

  	                <a href="{{ route('admin.booking.viewbookings') }}" class="list-group-item list-group-item-action bg-dark text-white">
  	                    <span class="menu-collapsed">View Bookings</span>
  	                </a>
                       @if (Auth::user()->role=="admin")
                    <a href="{{ route('admin.viewbookings.all') }}" class="list-group-item list-group-item-action bg-dark text-white">
  	                    <span class="menu-collapsed">Previous Bookings</span>
  	                </a>
                       @endif
                    <a href="{{ route('admin.booking.entrance') }}" class="list-group-item list-group-item-action bg-dark text-white">
  	                    {{-- <span class="menu-collapsed">Transactions<span class="badge badge-pill badge-primary ml-2">pro</span></span> --}}
  	                    <span class="menu-collapsed">Entrance</span>
  	                </a>
  	                <a href="{{ route('admin.booking.subscription') }}" class="list-group-item list-group-item-action bg-dark text-white">
  	                    <span class="menu-collapsed">{{ __('Agreements') }}</span>
  	                </a>

  	            </div>

                  <a href="{{ route('admin.booking.transaction') }}" class="bg-dark list-group-item list-group-item-action">
                      <div class="d-flex w-100 justify-content-start align-items-center">
                          <span class="fa fa-cc-paypal fa-fw mr-3"></span>
                          <span class="menu-collapsed">{{ __('Transactions') }}</span>
                      </div>
                  </a>
                @endif

                @if (Auth::user()->role == "admin")
                  <a href="{{ route('admin.promocodes') }}" class="bg-dark list-group-item list-group-item-action">
                      <div class="d-flex w-100 justify-content-start align-items-center">
                          <span class="fa fa-tags fa-fw mr-3"></span>
                          <span class="menu-collapsed">{{ __('Promo Codes') }}</span>
                      </div>
                  </a>
                @endif

  	            <!-- Separator with title -->
  	            <li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
  	                <small>OPTIONS</small>
  	            </li>
  	            <!-- /END Separator -->
  	            <a href="{{ route('admin.profile') }}" class="bg-dark list-group-item list-group-item-action">
  	                <div class="d-flex w-100 justify-content-start align-items-center">
  	                    <span class="fa fa-user fa-fw mr-3"></span>
  	                    <span class="menu-collapsed">Profile</span>
  	                </div>
  	            </a>
                @if (Auth::user()->role == "admin")
                  <a href="{{ route('admin.staffs') }}" class="bg-dark list-group-item list-group-item-action">
                      <div class="d-flex w-100 justify-content-start align-items-center">
                          <span class="fa fa-users fa-fw mr-3"></span>
                          <span class="menu-collapsed">{{ __('Staffs') }}</span>
                      </div>
                  </a>
                   <a href="{{ route('admin.users') }}" class="bg-dark list-group-item list-group-item-action">
                      <div class="d-flex w-100 justify-content-start align-items-center">
                          <span class="fa fa-users fa-fw mr-3"></span>
                          <span class="menu-collapsed">{{ __('Users') }}</span>
                      </div>
                  </a>

                  {{-- start setting submenu --}}
                  <a href="#submenu3" data-toggle="collapse" aria-expanded="false" class="bg-dark list-group-item list-group-item-action flex-column align-items-start">
    	                <div class="d-flex w-100 justify-content-start align-items-center">
    	                    <span class="fa fa-cog fa-fw mr-3" aria-hidden="true"></span>
    	                    <span class="menu-collapsed">{{ __('Settings') }}</span>
    	                    <span class="submenu-icon ml-auto"></span>
    	                </div>
    	            </a>
    	            <!-- Submenu content -->
    	            <div id='submenu3' class="collapse sidebar-submenu">
                      <a href="{{ route('admin.settings.price') }}" class="list-group-item list-group-item-action bg-dark text-white">
                        <span class="fa fa-eur fa-fw mr-3"></span>
                        {{-- <span class="menu-collapsed">Messages <span class="badge badge-pill badge-primary ml-2">pro</span></span> --}}
                        <span class="menu-collapsed">{{ __('Pricing') }}</span>
                      </a>


    	                <a href="{{ route('admin.settings') }}" class="list-group-item list-group-item-action bg-dark text-white">
                          <span class="fa fa-calendar fa-fw mr-3"></span>
                          {{-- <span class="menu-collapsed">Messages <span class="badge badge-pill badge-primary ml-2">pro</span></span> --}}
    	                    <span class="menu-collapsed">Schedule</span>
    	                </a>

    	                <a href="{{ route('admin.settings.email') }}" class="list-group-item list-group-item-action bg-dark text-white">
                          <span class="fa fa-envelope fa-fw mr-3"></span>
                          {{-- <span class="menu-collapsed">Messages <span class="badge badge-pill badge-primary ml-2">pro</span></span> --}}
    	                    <span class="menu-collapsed">{{ __('Email Template') }}</span>
    	                </a>


    	            </div>
                  {{-- end setting submenu --}}

                @endif

  	            <!-- Separator without title -->
  	            <li class="list-group-item sidebar-separator menu-collapsed"></li>
  	            <!-- /END Separator -->
  	            <a href="{{ route('admin.help') }}" class="bg-dark list-group-item list-group-item-action">
  	                <div class="d-flex w-100 justify-content-start align-items-center">
  	                    <span class="fa fa-question fa-fw mr-3"></span>
  	                    <span class="menu-collapsed">Help</span>
  	                </div>
  	            </a>
  	        </ul><!-- List Group END-->
  	    </div><!-- sidebar-container END -->

      @endauth

      <div class="col">

        @yield('section')

<!-- Footer -->
        <footer class="page-footer font-small bg-primary marginTop20">

          <!-- Copyright -->
          <div class="footer-copyright text-center py-3">© 2020-2021 Copyright:
            <a href="/" class="text-white"> <strong>Negombo</strong></a>
          </div>
          <!-- Copyright -->

        </footer>
        <!-- Footer -->

	</div>
</body>
<script src="{{ asset('js/t-datepicker.min.js') }}"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-mockjax/1.6.2/jquery.mockjax.min.js"></script>

<script type="text/javascript" src="{{ asset('js/negomboadmin2020.js') }}"></script>
{{-- <script src="{{ asset('js/negomgo2020.js') }}"></script> --}}
<script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.print.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.flash.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>


</html>
