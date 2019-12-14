<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.Statement" %>
<%@page import="connect.ConnectionManager" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- meta data -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="title" content="���ﴺĮ����">
    <meta name="keywords" content="���ﴺĮ����, ��Į��, ������ǻ�Ͱ���б�, �ΰ����ɼ���Ʈ�����, �ΰ����ɰ���б�, ����ũ, AI, PTech, P-Tech, IBM">
    <meta name="description" content="���ﴺĮ���� ���� ���� ȯ���մϴ�.">
    <meta name="author" content="WATD">
    <!-- open graph -->
    <meta property="og:title" content="���ﴺĮ����">
    <meta property="og:description" content="���ﴺĮ���� ���� ���� ȯ���մϴ�.">
    <!-- cdn -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>                       <!-- jquery -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <!-- bootstrap css -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">      <!-- bootstrap theme -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <!-- bootstrap js -->
    <script src="js/jquery.counterup.js"></script>
    <script src="js/jquery.waypoints.js"></script>
        <!-- counterup js -->
    <!-- custom css -->
    <link rel="stylesheet" href="../css/main.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:500&display=swap" rel="stylesheet">
    <script type = "text/javascript" src="../js/	LobbySrc.js"></script>
    <title>���ﴺĮ����</title>
</head>
<body>
    <!--
        ALL CSS was written by Bootstrap4
    -->
    <header>
        <!-- <div class="header-notice bg-warning">
            <form action="" method="" class="col-xs-1 header-form">
                <select class="form-control form-control-sm" name="select-lang">
                    <option value="ko">�ѱ���</option>
                    <option value="en">English</option>
                    <option value="jp">������</option>
                </select>
            </form>
            <p class="text-center notice-text">
                �� ����Ʈ�� ũ�ҿ� ����ȭ�Ǿ� �ֽ��ϴ�.
            </p>
        </div> -->
        <!-- ũ�ҿ� ����ȭ�Ǿ� �ִٴ� ���� -->
        <!-- �� �±��� ���̰� ����� ����� �ּ�ó��, ���� ���� ��� Ž���� -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a href="#" class="navbar-brand">���ﴺĮ����</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <ul class="nav navbar-nav">
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">�б��Ұ�</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="" class="dropdown-item" onclick = "schintro()">�б��Ұ�</a>
                        <a href="" class="dropdown-item" onclick = "principal()">�б���Ұ�</a>
                        <a href="" class="dropdown-item" onclick = "shcsymbol()">�б���¡</a>
                        <a href="" class="dropdown-item" onclick = "schfeat()">�б�Ư¡</a>
                        <a href="" class="dropdown-item" onclick = "newcolor()">��Į���?</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">�б���Ȱ</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="" class="dropdown-item" onclick = "admission()">2020�⵵ ���оȳ�</a>
                        <a href="" class="dropdown-item" onclick = "transfer()">���оȳ�</a>
                        <!-- <a href="#" class="dropdown-item" onclick = "">��������</a> ��� ����-->
                        <a href="" class="dropdown-item" onclick = "curprocess()">��������</a>
                        <a href="" class="dropdown-item" onclick = "curactivity()">����Ȱ��</a>
                        <a href="" class="dropdown-item" onclick = "external()">�ܺ�Ȱ��</a>
                        <a href="" class="dropdown-item" onclick = "qualifi()">�ڰݰ���</a>
                        <a href="" class="dropdown-item" onclick = "academic()">�л�����</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a href="" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">�б�����</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="" class="dropdown-item">��к���</a>
                        <a href="" class="dropdown-item">��������</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a href="" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Q&amp;A</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a href="" class="dropdown-item">�ԡ����� Q&amp;A</a>
                        <a href="" class="dropdown-item">��Ÿ Q&amp;A</a>
                    </div>
                </li>
            </ul>
        </nav>
    </header>
    <main>
        <div class="main-video">
            <video controls muted autoplay loop poster="img/video/main-video">
                <source src="img/video/main-video.mp4" type="video/mp4">
            </video>
            <div class="bg-transparent video-hover text-white">
                <h1>���ﴺĮ���� ���� ����</h1>
                <h1>ȯ���մϴ�</h1>
                <p><a href="#" class="btn btn-info mtn-md">�б� �Ұ�</a></p>
            </div>
        </div>
        <div class="container mb-2">
            <div class="card-deck">
                <div class="card">
                    <div class="card-header">
                        Q&amp;A
                        <!--�Խ��� �ֱ����� DB �����ؼ� 5�� ���� -->
                    </div>
                    <div class="card-body">
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                    </div>
                </div>
                <div class="card">
                    <!--
                        �������� �޴�
                        DB���� ���������� �ҷ��� ��
                        <div class="text-left"><a href="�ּ�">�������� ����</a></div>
                        ���� �ҷ����� �˴ϴ�.
                    -->
                        <!--�Խ��� �ֱ����� DB �����ؼ� 5�� ���� -->
                    <div class="card-header">
                        ��������
                    </div>
                    <div class="card-body">
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                        <div class="text-left"><a href="#">lorem</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="card-deck" style="height: 100px;">
                <div class="card">
                    <div class="card-header">
                        ���� ���л� ��
                    </div>
                    <div class="card-body">
                        <h1 class="text-center counter">54</h1>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        ���� ���л� ��
                    </div>
                    <div class="card-body">
                        <h1 class="text-center counter">52</h1>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        ���� ������ ��
                    </div>
                    <div class="card-body">
                        <h1 class="text-center counter">0</h1>
                    </div>
                </div>
                <script>
                    $('.counter').counterUp({
                        delay: 10,
                        time: 1000
                    });
                </script>
            </div>
        </div>
    </main>
</body>
</html>

