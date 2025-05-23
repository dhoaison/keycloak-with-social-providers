<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
      <style>
        body { 
         background:url('${url.resourcesPath}/img/login_bg.png') center/contain no-repeat;
        font-family: Arial, sans-serif; background: #f8f8f9; }
        .container { max-width: 400px; margin: 80px auto; background: #fff; padding: 2em; border-radius: 8px; box-shadow: 0 0 10px #ccc;}
        </style>
</head>
<body>
	<div class="container">
    <p>${msg("emailVerificationBody")}</p>
    <p><a href="${link}">${msg("emailVerificationLinkText")}</a></p>
    <p>${msg("signature")}</p>
    </div>
</body>
</html>