<#ftl encoding="utf-8">
<#include "base.ftlh">
<#macro title>Профиль</#macro>
<#macro style>
    <style>
        * {
            padding: 0;
            margin: 0;
            outline: 0 !important;
        }

        .navbar-img {
            display: block;
            height: 200px;
            width: auto;
            background: url(https://static.hollywoodreporter.com/sites/default/files/2016/11/thr3_music2-h_2016.jpg) no-repeat center;
        }

        .navbar-brand {
            margin-left: 150px;
        }

        .my-profile {
            display: flex;
            flex-direction: row;
            position: relative;
            right: 170px;
            text-decoration: none;
            transition: color .15s
        }

        a:hover {
            text-decoration: none !important;
        }

        .my-profile-name {
            white-space: nowrap;
            display: inline-block;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            padding-right: 8px;
            padding-top: 3px;
        }

        .bi-person-fill {
            border: solid 1px #007bff;
            border-radius: 100px;
            padding: 2px;
        }

        .search-box, .search-wrapper {
            position: relative;
            padding: 10px;
        }

        .search-wrapper {
            width: 300px;
            margin-right: 312px;
        }

        .search-box {
            border: 1px solid #ccc;
            outline: 0;
            border-radius: 15px;
            height: 35px;
        }

        .search-box:focus {
            box-shadow: 0 0 5px 5px rgb(235, 235, 235);
        }

        .main-content-back {
            display: block;
            margin: auto;
            background-color: rgb(248, 249, 250);
            margin-top: 30px;
            width: 950px;
            height: 400px;
            padding-top: 30px;
            padding-left: 30px;
        }

        .pic-btns {
            position: relative;
            float: left;
        }

        .profile-pic {
            width: 200px;
            height: 200px;
            border-radius: 10px;
        }

        .user-info {
            position: relative;
            margin-left: 250px;
        }

        .user-name-text {
            font-size: 24px;
        }

        .email-info {
            font-size: 24px;
        }

        .email {
            font-size: 24px;
        }

        .photo-upload, .btn-primary, .save-btn {
            height: 30px;
            border: none;
            border-radius: 5px;
            background-color: #007bff;
            color: #fff;
            margin-top: 10px;
            width: 200px;
            cursor: pointer;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
        }

        .photo-upload:hover, .save-btn:hover {
            background-color: rgb(000, 105, 217);
        }

        .btns {
            display: flex;
            flex-direction: column;
            margin-top: 10px;
        }

        .page-footer {
            margin-top: 80px !important;
            background-color: rgb(248, 249, 250);
        }

        .save button {
            margin-top: 20px;
        }

        .usrname, .email-input {
            margin-top: 10px;
            border-radius: 5px;
            border: 1px solid #ced4da;
            padding: 0 10px 0 10px;
            margin-bottom: 10px;
        }

        .form-control {
            width: 100px !important;
            height: 40px !important;
            margin-top: 10px;
        }
    </style>
</#macro>
<#macro content>
    <div class="navbar-img">
    </div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/main_page">ABU MUSIC</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/community">Community</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/playlist_rock">Playlist</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/my_playlist">My Playlist</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/faq">FAQ</a>
                </li>
            </ul>
        </div>
        <div class="search-wrapper">
            <form>
                <input type="text" name="focus" required class="search-box" placeholder="Search"/>
            </form>
        </div>
        <a href="/profile" class="my-profile">
            <div class="my-profile-name">
                My profile
            </div>
            <svg width="30px" height="30px" viewBox="0 0 16 16" class="bi bi-person-fill" fill="currentColor"
                 xmlns="http://www.w3.org/2000/svg">
                <path fill-rule="evenodd"
                      d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
            </svg>
        </a>
    </nav>
    <div class="main-content-back">
        <div class="main-content">
            <div class="pic-btns">
                <div class="prof-pic">
                    <img src="https://i.pinimg.com/736x/50/9c/80/509c80eedb8aa73978d8fbd87de4e125.jpg" class="profile-pic">
                </div>

                <div class="btns">
                    <button type="button" class="photo-upload" data-toggle="modal" data-target="#myModal">Change
                        avatar
                    </button>
                    <a href="/edit_profile">
                        <button type="button" class="btn-primary">Edit profile</button>
                    </a>
                </div>

                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Download new avatar</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                You can only upload an image in JPG or PNG format
                            </div>
                            <div class="modal-footer">
                                <input id="file-input" type="file" name="file" accept="image/png, image/jpeg">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <#if user??>
                <div class="user-info">
                    <div class="user-name-text">${user.get().firstname}</div>
                    <div class="user-name-text">${user.get().lastname}</div>
                    <div class="user-name-text">${user.get().age}</div>
                    <div class="email-block">
                        <a class="email">Email:</a>
                        <a class="email-info">${user.get().email}</a>
                    </div>
<#--                    <div class="status-block">-->
<#--                        <a class="status">Is member of ITIS Music:</a>-->
<#--                        <a class="status-info">xxx</a>-->
<#--                    </div>-->
                </div>
            </#if>
        </div>
    </div>
    <footer class="page-footer font-small blue">
        <div class="footer-copyright text-center py-3">© 2020 Copyright:
            <a href="">ABU Music</a>
        </div>
    </footer>
<#--    <script src="../../../../../Music_Front/user-profile-js.js"></script>-->
    <script>
        $('#myModal').modal({})
    </script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
</#macro>