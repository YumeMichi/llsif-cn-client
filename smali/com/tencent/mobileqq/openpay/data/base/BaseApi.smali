.class public abstract Lcom/tencent/mobileqq/openpay/data/base/BaseApi;
.super Ljava/lang/Object;


# instance fields
.field public appId:Ljava/lang/String;

.field protected appName:Ljava/lang/String;

.field protected final appType:Ljava/lang/String;

.field protected final sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.1.0"

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseApi;->sdkVersion:Ljava/lang/String;

    const-string v0, "native"

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseApi;->appType:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseApi;->appName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract checkParams()Z
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_mqqpay_baseapi_appid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseApi;->appId:Ljava/lang/String;

    const-string v0, "_mqqpay_baseapi_appname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseApi;->appName:Ljava/lang/String;

    return-void
.end method

.method public abstract getApiMark()I
.end method

.method public abstract getApiName()Ljava/lang/String;
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseApi;->appId:Ljava/lang/String;

    const-string v1, "_mqqpay_baseapi_appid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseApi;->appName:Ljava/lang/String;

    const-string v1, "_mqqpay_baseapi_appname"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_baseapi_apptype"

    const-string v1, "native"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_mqqpay_baseapi_sdkversion"

    const-string v1, "1.1.0"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mobileqq/openpay/data/base/BaseApi;->getApiName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_mqqpay_baseapi_apiname"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mobileqq/openpay/data/base/BaseApi;->getApiMark()I

    move-result v0

    const-string v1, "_mqqpay_baseapi_apimark"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
