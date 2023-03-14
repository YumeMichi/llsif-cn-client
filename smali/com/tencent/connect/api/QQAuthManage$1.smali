.class Lcom/tencent/connect/api/QQAuthManage$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/api/QQAuthManage;->gotoManagePage(Landroid/app/Activity;Lcom/tencent/open/apireq/IApiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tencent/open/apireq/IApiCallback;

.field final synthetic c:Lcom/tencent/connect/api/QQAuthManage$Resp;

.field final synthetic d:Lcom/tencent/connect/api/QQAuthManage;


# direct methods
.method constructor <init>(Lcom/tencent/connect/api/QQAuthManage;Landroid/app/Activity;Lcom/tencent/open/apireq/IApiCallback;Lcom/tencent/connect/api/QQAuthManage$Resp;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/tencent/connect/api/QQAuthManage$1;->d:Lcom/tencent/connect/api/QQAuthManage;

    iput-object p2, p0, Lcom/tencent/connect/api/QQAuthManage$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tencent/connect/api/QQAuthManage$1;->b:Lcom/tencent/open/apireq/IApiCallback;

    iput-object p4, p0, Lcom/tencent/connect/api/QQAuthManage$1;->c:Lcom/tencent/connect/api/QQAuthManage$Resp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 69
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 70
    check-cast p1, Lorg/json/JSONObject;

    const/4 v0, -0x1

    const-string v1, "ret"

    .line 71
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/tencent/connect/api/QQAuthManage$1;->d:Lcom/tencent/connect/api/QQAuthManage;

    iget-object v0, p0, Lcom/tencent/connect/api/QQAuthManage$1;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tencent/connect/api/QQAuthManage$1;->b:Lcom/tencent/open/apireq/IApiCallback;

    invoke-static {p1, v0, v1}, Lcom/tencent/connect/api/QQAuthManage;->a(Lcom/tencent/connect/api/QQAuthManage;Landroid/app/Activity;Lcom/tencent/open/apireq/IApiCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "QQAuthManage"

    const-string v0, "gotoManagePage: checkLogin not login"

    .line 75
    invoke-static {p1, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/tencent/connect/api/QQAuthManage$1;->c:Lcom/tencent/connect/api/QQAuthManage$Resp;

    const/16 v0, -0x7d1

    invoke-virtual {p1, v0}, Lcom/tencent/connect/api/QQAuthManage$Resp;->setCode(I)V

    .line 77
    iget-object p1, p0, Lcom/tencent/connect/api/QQAuthManage$1;->b:Lcom/tencent/open/apireq/IApiCallback;

    iget-object v0, p0, Lcom/tencent/connect/api/QQAuthManage$1;->c:Lcom/tencent/connect/api/QQAuthManage$Resp;

    invoke-interface {p1, v0}, Lcom/tencent/open/apireq/IApiCallback;->onResp(Lcom/tencent/open/apireq/BaseResp;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/tencent/connect/api/QQAuthManage$1;->c:Lcom/tencent/connect/api/QQAuthManage$Resp;

    iget v1, p1, Lcom/tencent/tauth/UiError;->errorCode:I

    invoke-virtual {v0, v1}, Lcom/tencent/connect/api/QQAuthManage$Resp;->setCode(I)V

    .line 85
    iget-object v0, p0, Lcom/tencent/connect/api/QQAuthManage$1;->c:Lcom/tencent/connect/api/QQAuthManage$Resp;

    iget-object p1, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/tencent/connect/api/QQAuthManage$Resp;->setErrorMsg(Ljava/lang/String;)V

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gotoManagePage: checkLogin error. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/connect/api/QQAuthManage$1;->c:Lcom/tencent/connect/api/QQAuthManage$Resp;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QQAuthManage"

    invoke-static {v0, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/tencent/connect/api/QQAuthManage$1;->b:Lcom/tencent/open/apireq/IApiCallback;

    iget-object v0, p0, Lcom/tencent/connect/api/QQAuthManage$1;->c:Lcom/tencent/connect/api/QQAuthManage$Resp;

    invoke-interface {p1, v0}, Lcom/tencent/open/apireq/IApiCallback;->onResp(Lcom/tencent/open/apireq/BaseResp;)V

    return-void
.end method

.method public onWarning(I)V
    .locals 0

    return-void
.end method
