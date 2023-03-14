.class final Lcom/ghomesdk/gameplus/GamePlus$8;
.super Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;
.source "GamePlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/GamePlus;->checkTokenWithAutoLogin(Ljava/lang/Object;Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback<",
        "Lcom/ghomesdk/gameplus/impl/object/CheckTokenResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

.field final synthetic val$_context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/ghomesdk/gameplus/callback/ErrorCallback;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$8;->val$_context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ghomesdk/gameplus/GamePlus$8;->val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    invoke-direct {p0}, Lcom/ghomesdk/gameplus/callback/HttpDefaultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/CheckTokenResponse;)V
    .locals 1

    if-nez p1, :cond_1

    .line 628
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/CheckTokenResponse;->getStatus()I

    move-result p1

    .line 629
    invoke-virtual {p3}, Lcom/ghomesdk/gameplus/impl/object/CheckTokenResponse;->getLogin_status()I

    move-result p2

    const/4 p3, 0x1

    if-ne p3, p1, :cond_0

    if-ne p3, p2, :cond_0

    .line 631
    invoke-static {}, Lcom/ghomesdk/gameplus/login/LoginController;->getInstance()Lcom/ghomesdk/gameplus/login/LoginController;

    move-result-object p1

    iget-object p2, p0, Lcom/ghomesdk/gameplus/GamePlus$8;->val$_context:Landroid/app/Activity;

    sget-object p3, Lcom/ghomesdk/gameplus/config/Config;->loginStyle:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/ghomesdk/gameplus/utils/ResourceFinder;->getStyleId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    new-instance v0, Lcom/ghomesdk/gameplus/GamePlus$8$1;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/GamePlus$8$1;-><init>(Lcom/ghomesdk/gameplus/GamePlus$8;)V

    invoke-virtual {p1, p2, p3, v0}, Lcom/ghomesdk/gameplus/login/LoginController;->startPay(Landroid/app/Activity;ILcom/ghomesdk/gameplus/callback/LoginCallback;)V

    goto :goto_0

    .line 645
    :cond_0
    iget-object p1, p0, Lcom/ghomesdk/gameplus/GamePlus$8;->val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    const/4 p2, -0x1

    const-string p3, "\u5f53\u524d\u8d26\u53f7\u53ef\u80fd\u5df2\u5728\u5176\u4ed6\u8bbe\u5907\u767b\u5f55\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u540e\u518d\u6b21\u5c1d\u8bd5"

    invoke-interface {p1, p2, p3}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object p3, p0, Lcom/ghomesdk/gameplus/GamePlus$8;->val$_callback:Lcom/ghomesdk/gameplus/callback/ErrorCallback;

    invoke-interface {p3, p1, p2}, Lcom/ghomesdk/gameplus/callback/ErrorCallback;->callback(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic callback(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 624
    check-cast p3, Lcom/ghomesdk/gameplus/impl/object/CheckTokenResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ghomesdk/gameplus/GamePlus$8;->callback(ILjava/lang/String;Lcom/ghomesdk/gameplus/impl/object/CheckTokenResponse;)V

    return-void
.end method
