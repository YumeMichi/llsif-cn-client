.class public abstract Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;
.super Ljava/lang/Object;


# instance fields
.field protected final RET_CODE_SUCESS:I

.field protected final RET_CODE_UNKNOW:I

.field public apiMark:I

.field public apiName:Ljava/lang/String;

.field public retCode:I

.field public retMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x98967f

    iput v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->RET_CODE_UNKNOW:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->RET_CODE_SUCESS:I

    iput v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retCode:I

    return-void
.end method


# virtual methods
.method public abstract checkParams()Z
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_mqqpay_baseresp_retcode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retCode:I

    const-string v0, "_mqqpay_baseresp_retmsg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retMsg:Ljava/lang/String;

    const-string v0, "_mqqpay_baseapi_apiname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->apiName:Ljava/lang/String;

    const-string v0, "_mqqpay_baseapi_apimark"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->apiMark:I

    return-void
.end method

.method public isSuccess()Z
    .locals 1

    iget v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retCode:I

    const-string v1, "_mqqpay_baseresp_retcode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->retMsg:Ljava/lang/String;

    const-string v1, "_mqqpay_baseresp_retmsg"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->apiName:Ljava/lang/String;

    const-string v1, "_mqqpay_baseapi_apiname"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mobileqq/openpay/data/base/BaseResponse;->apiMark:I

    const-string v1, "_mqqpay_baseapi_apimark"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
