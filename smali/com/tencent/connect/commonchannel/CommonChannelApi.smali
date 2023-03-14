.class public Lcom/tencent/connect/commonchannel/CommonChannelApi;
.super Lcom/tencent/connect/common/BaseApi;
.source "ProGuard"


# static fields
.field public static final SCHEME_HEADER:Ljava/lang/String; = "mqqapi://open_connect/common_channel"


# direct methods
.method public constructor <init>(Lcom/tencent/connect/auth/QQToken;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/connect/auth/c;Lcom/tencent/connect/auth/QQToken;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tencent/connect/common/BaseApi;-><init>(Lcom/tencent/connect/auth/c;Lcom/tencent/connect/auth/QQToken;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "src_id"

    .line 83
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "opensdk_ext_data"

    .line 84
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public launchQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)I
    .locals 5

    const/4 v0, -0x5

    if-nez p3, :cond_0

    return v0

    :cond_0
    const-string v1, "UniversalApi"

    .line 47
    invoke-static {v1, p3}, Lcom/tencent/connect/a;->a(Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, -0x6

    return p1

    .line 50
    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/connect/commonchannel/CommonChannelApi;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    new-instance p1, Lcom/tencent/tauth/UiError;

    const-string p2, "\u4f20\u5165\u53c2\u6570\u6709\u8bef!"

    invoke-direct {p1, v0, p2, p2}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V

    return v0

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mqqapi://open_connect/common_channel"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/tencent/connect/commonchannel/CommonChannelApi;->a(Ljava/lang/StringBuilder;Landroid/app/Activity;)V

    const-string v1, "opensdk_ext_data"

    .line 57
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v2}, Lcom/tencent/open/utils/m;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "exsvr_userinfo"

    invoke-virtual {p0, v0, v4, v3}, Lcom/tencent/connect/commonchannel/CommonChannelApi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {v2}, Lcom/tencent/open/utils/m;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/connect/commonchannel/CommonChannelApi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "src_id"

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 61
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/connect/commonchannel/CommonChannelApi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "com.tencent.mobileqq"

    .line 66
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "for_result"

    .line 67
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg_name"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    .line 69
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    invoke-static {}, Lcom/tencent/connect/common/UIListenerManager;->getInstance()Lcom/tencent/connect/common/UIListenerManager;

    move-result-object v0

    const/16 v1, 0x2782

    invoke-virtual {v0, v1, p3}, Lcom/tencent/connect/common/UIListenerManager;->setListenerWithRequestcode(ILcom/tencent/tauth/IUiListener;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/tencent/connect/commonchannel/CommonChannelApi;->a(Landroid/app/Activity;ILandroid/content/Intent;Z)V

    return v2
.end method
