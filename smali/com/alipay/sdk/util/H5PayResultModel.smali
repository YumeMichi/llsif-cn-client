.class public Lcom/alipay/sdk/util/H5PayResultModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public resultCode:Ljava/lang/String;

.field public returnUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/util/H5PayResultModel;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/util/H5PayResultModel;->returnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/util/H5PayResultModel;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setReturnUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/util/H5PayResultModel;->returnUrl:Ljava/lang/String;

    return-void
.end method
