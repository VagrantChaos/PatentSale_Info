<%@ page language="java"  pageEncoding="utf-8" %>

<html lang="en">
<head>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>

<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <meta name="description" content="">--%>
<%--    <meta name="author" content="Mosaddek">--%>
<%--    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">--%>
<%--    <link rel="shortcut icon" href="http://10.4.55.170:37131/img/favicon.html">--%>

    <title>Dynamic Table</title>
    <link type="text/css" rel="stylesheet" href="../css/datas.css">
<%--    <!-- Bootstrap core CSS -->--%>
<%--    <link href="./Dynamic Table_files/bootstrap.min.css" rel="stylesheet">--%>
<%--    <link href="./Dynamic Table_files/bootstrap-reset.css" rel="stylesheet">--%>
<%--    <!--external css-->--%>
<%--    <link href="./Dynamic Table_files/font-awesome.css" rel="stylesheet">--%>
<%--    <!-- Custom styles for this template -->--%>
<%--    <link href="./Dynamic Table_files/style.css" rel="stylesheet">--%>
<%--    <link href="./Dynamic Table_files/style-responsive.css" rel="stylesheet">--%>

<%--    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->--%>
<%--    <!--[if lt IE 9]>--%>
<%--    <script src="js/html5shiv.js"></script>--%>
<%--    <script src="js/respond.min.js"></script>--%>
<%--    <![endif]-->--%>
<%--    <style type="text/css">#_copy{align-items:center;background:#4494d5;border-radius:3px;color:#fff;cursor:pointer;display:flex;font-size:13px;height:30px;justify-content:center;position:absolute;width:60px;z-index:1000}#select-tooltip,#sfModal,.modal-backdrop,div[id^=reader-helper]{display:none!important}.modal-open{overflow:auto!important}._sf_adjust_body{padding-right:0!important}.enable_copy_btns_div{position:fixed;width:154px;left:10px;top:45%;background:#e7f1ff;border:2px solid #4595d5;font-weight:600;border-radius:2px;font-family:-apple-system,BlinkMacSystemFont,Segoe UI,PingFang SC,Hiragino Sans GB,Microsoft YaHei,Helvetica Neue,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol;z-index:5000}.enable_copy_btns_logo{width:100%;background:#4595d5;text-align:center;font-size:12px;color:#e7f1ff;line-height:30px;height:30px}.enable_copy_btns_btn{display:block;width:128px;height:28px;background:#7f5711;border-radius:4px;color:#fff;font-size:12px;border:0;outline:0;margin:8px auto;font-weight:700;cursor:pointer;opacity:.9}.enable_copy_btns_btn:hover{opacity:.8}.enable_copy_btns_btn:active{opacity:1}</style></head>--%>

<body>

<section id="container">
    <header class="header">
        <div class="sidebar-toggle-box">
<%--            <div data-original-title="Toggle Navigation" data-placement="right" class="icon-reorder tooltips"></div>--%>
            <input type="button" value="=" style="border: white;">
        </div>
    </header>

    <aside>
        <div id="sidebar" class="nav-collapse " style="overflow: hidden; outline: none;" tabindex="5000">
            <ul class="sidebar-menu">
                <li class="sub-menu active">
                    <a href="javascript:;" class="">
                        <i class="icon-th"></i>
                        <span>Data Tables</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub">
                        <li class="active"><a class="" href="http://10.4.55.170:37131/dynamic_table.html">Dynamic Table</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </aside>

    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Dynamic Table
                        </header>
                        <div id="sample_1_wrapper" class="dataTables_wrapper form-inline" role="grid"><div class="row"><div class="col-sm-6"><div id="sample_1_length" class="dataTables_length"><label><select size="1" name="sample_1_length" aria-controls="sample_1" class="form-control"><option value="10" selected="selected">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> records per page</label></div></div><div class="col-sm-6"><div class="dataTables_filter" id="sample_1_filter"><label>Search: <input type="text" aria-controls="sample_1" class="form-control"></label></div></div></div><table class="table table-striped border-top dataTable" id="sample_1" aria-describedby="sample_1_info">
                            <thead>
                            <tr role="row"><th style="width: 13px;" class="sorting_disabled" role="columnheader" rowspan="1" colspan="1" aria-label=""><input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes"></th><th class="sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Username: activate to sort column ascending" style="width: 78px;">Username</th><th class="hidden-phone sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Email: activate to sort column ascending" style="width: 156px;">Email</th><th class="hidden-phone sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Points: activate to sort column ascending" style="width: 49px;">Points</th><th class="hidden-phone sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label="Joined: activate to sort column ascending" style="width: 78px;">Joined</th><th class="hidden-phone sorting" role="columnheader" tabindex="0" aria-controls="sample_1" rowspan="1" colspan="1" aria-label=": activate to sort column ascending" style="width: 80px;"></th></tr>
                            </thead>

                            <tbody role="alert" aria-live="polite" aria-relevant="all"><tr class="gradeX odd">
                                <td class="  sorting_1"><input type="checkbox" class="checkboxes" value="1"></td>
                                <td class=" ">Jhone doe</td>
                                <td class="hidden-phone "><a href="mailto:jhone-doe@gmail.com">jhone-doe@gmail.com</a></td>
                                <td class="hidden-phone ">10</td>
                                <td class="center hidden-phone ">02.03.2013</td>
                                <td class="hidden-phone "><span class="label label-success">Approved</span></td>
                            </tr><tr class="gradeX even">
                                <td class="  sorting_1"><input type="checkbox" class="checkboxes" value="1"></td>
                                <td class=" ">gada</td>
                                <td class="hidden-phone "><a href="mailto:gada-lal@gmail.com">gada-lal@gmail.com</a></td>
                                <td class="hidden-phone ">34</td>
                                <td class="center hidden-phone ">08.03.2013</td>
                                <td class="hidden-phone "><span class="label label-warning">Suspended</span></td>
                            </tr><tr class="odd gradeX">
                                <td class="  sorting_1"><input type="checkbox" class="checkboxes" value="1"></td>
                                <td class=" ">soa bal</td>
                                <td class="hidden-phone "><a href="mailto:soa%20bal@yahoo.com">soa bal@yahoo.com</a></td>
                                <td class="hidden-phone ">33</td>
                                <td class="center hidden-phone ">1.12.2013</td>
                                <td class="hidden-phone "><span class="label label-danger">Approved</span></td>
                            </tr><tr class="odd gradeX even">
                                <td class="  sorting_1"><input type="checkbox" class="checkboxes" value="1"></td>
                                <td class=" ">ram sag</td>
                                <td class="hidden-phone "><a href="mailto:soa%20bal@gmail.com">soa bal@gmail.com</a></td>
                                <td class="hidden-phone ">33</td>
                                <td class="center hidden-phone ">7.2.2013</td>
                                <td class="hidden-phone "><span class="label label-info">Blocked</span></td>
                            </tr><tr class="odd gradeX">
                                <td class="  sorting_1"><input type="checkbox" class="checkboxes" value="1"></td>
                                <td class=" ">durlab</td>
                                <td class="hidden-phone "><a href="mailto:soa%20bal@gmail.com">test@gmail.com</a></td>
                                <td class="hidden-phone ">33</td>
                                <td class="center hidden-phone ">03.07.2013</td>
                                <td class="hidden-phone "><span class="label label-success">Approved</span></td>
                            </tr><tr class="odd gradeX even">
                                <td class="  sorting_1"><input type="checkbox" class="checkboxes" value="1"></td>
                                <td class=" ">durlab</td>
                                <td class="hidden-phone "><a href="mailto:soa%20bal@gmail.com">lorem-ip@gmail.com</a></td>
                                <td class="hidden-phone ">33</td>
                                <td class="center hidden-phone ">05.04.2013</td>
                                <td class="hidden-phone "><span class="label label-danger">Approved</span></td>
                            </tr><tr class="odd gradeX">
                                <td class="  sorting_1"><input type="checkbox" class="checkboxes" value="1"></td>
                                <td class=" ">sumon</td>
                                <td class="hidden-phone "><a href="mailto:soa%20bal@gmail.com">lorem-ip@gmail.com</a></td>
                                <td class="hidden-phone ">33</td>
                                <td class="center hidden-phone ">05.04.2013</td>
                                <td class="hidden-phone "><span class="label label-success">Approved</span></td>
                            </tr><tr class="odd gradeX even">
                                <td class="  sorting_1"><input type="checkbox" class="checkboxes" value="1"></td>
                                <td class=" ">bombi</td>
                                <td class="hidden-phone "><a href="mailto:soa%20bal@gmail.com">lorem-ip@gmail.com</a></td>
                                <td class="hidden-phone ">33</td>
                                <td class="center hidden-phone ">05.04.2013</td>
                                <td class="hidden-phone "><span class="label label-danger">Approved</span></td>
                            </tr><tr class="odd gradeX">
                                <td class="  sorting_1"><input type="checkbox" class="checkboxes" value="1"></td>
                                <td class=" ">ABC ho</td>
                                <td class="hidden-phone "><a href="mailto:soa%20bal@gmail.com">lorem-ip@gmail.com</a></td>
                                <td class="hidden-phone ">33</td>
                                <td class="center hidden-phone ">05.04.2013</td>
                                <td class="hidden-phone "><span class="label label-success">Approved</span></td>
                            </tr><tr class="odd gradeX even">
                                <td class="  sorting_1"><input type="checkbox" class="checkboxes" value="1"></td>
                                <td class=" ">test</td>
                                <td class="hidden-phone "><a href="mailto:soa%20bal@gmail.com">lorem-ip@gmail.com</a></td>
                                <td class="hidden-phone ">33</td>
                                <td class="center hidden-phone ">05.04.2013</td>
                                <td class="hidden-phone "><span class="label label-success">Approved</span></td>
                            </tr></tbody></table><div class="row"><div class="col-sm-6"><div class="dataTables_info" id="sample_1_info">Showing 1 to 10 of 25 entries</div></div><div class="col-sm-6"><div class="dataTables_paginate paging_bootstrap pagination"><ul><li class="prev disabled"><a href="http://10.4.55.170:37131/dynamic_table.html#">← Prev</a></li><li class="active"><a href="http://10.4.55.170:37131/dynamic_table.html#">1</a></li><li><a href="http://10.4.55.170:37131/dynamic_table.html#">2</a></li><li><a href="http://10.4.55.170:37131/dynamic_table.html#">3</a></li><li class="next"><a href="http://10.4.55.170:37131/dynamic_table.html#">Next → </a></li></ul></div></div></div></div>
                    </section>
                </div>
            </div>
            <!-- page end-->
        </section>
    </section>
</section>
</body>
</html>