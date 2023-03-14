.class public Lcom/tencent/connect/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Z
    .locals 2

    const-string v0, "\u7528\u6237\u672a\u6388\u6743\uff0c\u6682\u65f6\u65e0\u6cd5\u4f7f\u7528QQ\u767b\u5f55\u53ca\u5206\u4eab\u7b49\u529f\u80fd"

    const/4 v1, -0x6

    .line 27
    invoke-static {p0, p1, v1, v0, v0}, Lcom/tencent/connect/a;->a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 32
    invoke-static {}, Lcom/tencent/tauth/Tencent;->isPermissionNotGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "permission not granted"

    .line 33
    invoke-static {p0, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 35
    new-instance p0, Lcom/tencent/tauth/UiError;

    invoke-direct {p0, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
