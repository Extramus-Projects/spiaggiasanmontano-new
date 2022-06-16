@extends('layouts.adminmaster')

@section('section')
  <div class="container paddingTop20">
    <h1>Spiaggia Admin Help</h1>
    <hr>
    <div class="row">
        <div class="col-sm-10 offset-sm-1">
            <div class="card">
                <div class="card-body">
                    <strong><u>Information</u></strong>
                    <p> This software contains three types of users.</p>
                    <li>Users(Not-logged In)</li>
                    <li>Entrance(logged In)</li>
                    <li>Admin(logged In)</li>
                    <p>For software usings(How to use) contact with admin <strong>Negombo</strong>. Admin can register new members(Admins, Entrances) from <code> profile -> Register</code> with a random password. Then the new member will use reset password for the first time password resetting.</p>
                    <strong><u>Security & Privacy</u></strong>
                    <p>As the software contain confidential data, if anyone see any<code> data leakage, bug, vulnerability </code> please contact with <strong>Developer</strong> as early as possible.</p>
                    <strong><u>Developed By</u></strong><br>
                    <span> Shaykh Siddique</span><br>
                    email: <a href="mailto:shaykhsiddiqee@gmail.com">shaykhsiddiqee@gmail.com</a><br>
                    website: <a target="_blank" href="https://shaykhsiddique.github.io/">shaykhsiddique.github.io</a>
                </div>
            </div>
        </div>
    </div>
  </div>
<div style="padding-top: 300px;"></div>
@endsection
