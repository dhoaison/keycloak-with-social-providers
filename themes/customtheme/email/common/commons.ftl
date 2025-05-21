<#-- commons.ftl: shared macros for wrapping and logo -->

<#macro renderLogoImage>
  <div style="text-align:center;margin:20px 0;">
    <img
      src="${theme.getResourceUrl('img','logo.png')}"
      alt="${msg('brandName')!}"
      style="max-width:120px; height:auto;"
    />
  </div>
</#macro>

<#macro renderCompleteEmail header content footer>
<!DOCTYPE html>
<html lang="${locale.language}">
<head>
  <meta charset="UTF-8"/>
  <style>
    body   { margin:0; padding:0; background:#f4f4f4; font-family:Arial,sans-serif }
    .box   { max-width:600px; margin:30px auto; background:#fff; border-radius:6px; overflow:hidden }
    .hdr   { background:#0052CC; color:#fff; padding:20px; text-align:center }
    .bd    { padding:30px; color:#333; line-height:1.5 }
    .ftr   { background:#f0f0f0; padding:20px; font-size:12px; color:#666; text-align:center }
    a.btn  { display:inline-block; padding:12px 24px; background:#0052CC; color:#fff;
             text-decoration:none; border-radius:4px; margin:20px 0 }
  </style>
</head>
<body>
  <div class="box">
    <div class="hdr">
      ${header}
    </div>
    <div class="bd">
      ${content}
    </div>
    <div class="ftr">
      ${footer}
    </div>
  </div>
</body>
</html>
</#macro>