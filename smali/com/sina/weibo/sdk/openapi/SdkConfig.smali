.class public Lcom/sina/weibo/sdk/openapi/SdkConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private userAgree:Z

.field private userAgreeWifiInfo:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUserAgree()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/openapi/SdkConfig;->userAgree:Z

    return v0
.end method

.method public isUserAgreeWifiInfo()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/openapi/SdkConfig;->userAgreeWifiInfo:Z

    return v0
.end method

.method public setUserAgree(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/sina/weibo/sdk/openapi/SdkConfig;->userAgree:Z

    return-void
.end method

.method public setUserAgreeWifiInfo(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/sina/weibo/sdk/openapi/SdkConfig;->userAgreeWifiInfo:Z

    return-void
.end method
