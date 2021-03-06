<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <!--
    Copyright 2010-2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.

    Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. A copy of the License is located at

        http://aws.Amazon/apache2.0/

    or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
  -->
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>FIT2CLOUD代码部署演示应用</title>
  <style>
  body {
    color: #ffffff;
    background-color: #2B415A;
    font-family: Arial, sans-serif;
    font-size:14px;
    -moz-transition-property: text-shadow;
    -moz-transition-duration: 4s;
    -webkit-transition-property: text-shadow;
    -webkit-transition-duration: 4s;
    text-shadow: none;
  }
  body.blurry {
    -moz-transition-property: text-shadow;
    -moz-transition-duration: 4s;
    -webkit-transition-property: text-shadow;
    -webkit-transition-duration: 4s;
    text-shadow: #fff 0px 0px 25px;
  }
  a {
    color: #0188cc;
    text-decoration: none;
  }
  .textColumn, .linksColumn {
    padding: 2em;
  }
  .textColumn {
    position: absolute;
    top: 0px;
    right: 50%;
    bottom: 0px;
    left: 0px;

    text-align: right;
    padding-top: 11em;
    background-color: #0188cc;
    background-image: -moz-radial-gradient(left top, circle, #6ac9f9 0%, #0188cc 60%);
    background-image: -webkit-gradient(radial, 0 0, 1, 0 0, 500, from(#2B415A), to(#2B415A));
  }
  .textColumn p {
    width: 75%;
    float:right;
    background-color: #2B415A;
  }
  .linksColumn {
    position: absolute;
    top:0px;
    right: 0px;
    bottom: 0px;
    left: 50%;
    padding-left: 150px;
    background-color: #c7c7c7;
  }

  h1 {
    font-size: 500%;
    font-weight: normal;
    margin-bottom: 0em;
  }
  h2 {
    font-size: 200%;
    font-weight: normal;
    margin-bottom: 0em;
    color: #2B415A;
  }
  h3 {
    font-size: 150%;
    font-weight: normal;
    margin-bottom: 0em;
  }
  ul {
    padding-left: 1em;
    margin: 0px;
  }
  li {
    margin: 1em 0em;
  }

  </style>
</head>
<body id="sample">
  <div class="textColumn">
    <h1>FIT2CLOUD</h1>
    <h3>websphere 代码部署演示应用(V1.0, Build_15)</h3>
  </div>
  
  <div class="linksColumn">
    <h2>基本介绍</h2>
    <ul>
      <li><a href="http://docs.fit2cloud.com/v1.1/overview/concepts-and-terminology.html">FIT2CLOUD概念及术语</a></li>
      <li><a href="http://docs.fit2cloud.com/v1.1/overview/fit2cloud-usecases.html">FIT2CLOUD典型应用场景</a></li>
    </ul>
    <h2>安装部署</h2>
    <ul>
      <li><a href="http://docs.fit2cloud.com/v1.1/deployment/deployment-on-public-cloud-classic.html">公有云－基础网络中部署</a></li>
      <li><a href="http://docs.fit2cloud.com/v1.1/deployment/deployment-on-public-cloud-vpc.html">公有云－VPC中部署</a></li>
      <li><a href="http://docs.fit2cloud.com/v1.1/deployment/deployment-on-private-cloud-enterprise.html">企业内网环境中部署</a></li>
    </ul>
    <h2>集群管理和运维指南</h2>
    <ul>
      <li><a href="http://docs.fit2cloud.com/v1.1/userguide/import-vms.html">导入虚机</a></li>
      <li><a href="http://docs.fit2cloud.com/v1.1/userguide/create-vms.html">创建虚机</a></li>
    </ul>
  </div>
</script>
</body>
</html>

