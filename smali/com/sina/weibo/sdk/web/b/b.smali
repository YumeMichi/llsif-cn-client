.class public abstract Lcom/sina/weibo/sdk/web/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/web/b/b$a;
    }
.end annotation


# instance fields
.field protected Z:Landroid/content/Context;

.field protected aC:Lcom/sina/weibo/sdk/web/WebData;

.field protected aD:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sina/weibo/sdk/auth/AuthInfo;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/sina/weibo/sdk/web/WebData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sina/weibo/sdk/web/WebData;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/b/b;->aC:Lcom/sina/weibo/sdk/web/WebData;

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sina/weibo/sdk/web/b/b;->aD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method public a(Lcom/sina/weibo/sdk/web/b/b$a;)V
    .locals 0

    return-void
.end method

.method protected abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public final readFromBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "web_data"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/web/WebData;

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/b/b;->aC:Lcom/sina/weibo/sdk/web/WebData;

    const-string v0, "_weibo_transaction"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/web/b/b;->aD:Ljava/lang/String;

    .line 71
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/web/b/b;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/sina/weibo/sdk/web/b/b;->Z:Landroid/content/Context;

    return-void
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final u()Lcom/sina/weibo/sdk/web/WebData;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/b/b;->aC:Lcom/sina/weibo/sdk/web/WebData;

    return-object v0
.end method

.method public final writeToBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/b/b;->aC:Lcom/sina/weibo/sdk/web/WebData;

    const-string v1, "web_data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/b/b;->aC:Lcom/sina/weibo/sdk/web/WebData;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/web/WebData;->getType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "web_type"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/web/b/b;->aD:Ljava/lang/String;

    const-string v1, "_weibo_transaction"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/web/b/b;->a(Landroid/os/Bundle;)V

    return-object p1
.end method
