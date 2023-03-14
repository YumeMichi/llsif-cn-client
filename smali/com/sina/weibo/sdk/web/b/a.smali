.class public final Lcom/sina/weibo/sdk/web/b/a;
.super Lcom/sina/weibo/sdk/web/b/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/sina/weibo/sdk/web/b/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 14
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sina/weibo/sdk/web/b/b;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected final b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/b/a;->aC:Lcom/sina/weibo/sdk/web/WebData;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/web/WebData;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
