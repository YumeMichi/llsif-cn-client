.class public interface abstract Lcom/sina/weibo/sdk/openapi/IWBAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract authorize(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V
.end method

.method public abstract authorizeCallback(Landroid/app/Activity;IILandroid/content/Intent;)V
.end method

.method public abstract authorizeClient(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V
.end method

.method public abstract authorizeWeb(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/WbAuthListener;)V
.end method

.method public abstract doResultIntent(Landroid/content/Intent;Lcom/sina/weibo/sdk/share/WbShareCallback;)V
.end method

.method public abstract isWBAppInstalled()Z
.end method

.method public abstract isWBAppSupportMultipleImage()Z
.end method

.method public abstract registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;)V
.end method

.method public abstract registerApp(Landroid/content/Context;Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/openapi/SdkListener;)V
.end method

.method public abstract setLoggerEnable(Z)V
.end method

.method public abstract shareMessage(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/WeiboMultiMessage;Z)V
.end method
