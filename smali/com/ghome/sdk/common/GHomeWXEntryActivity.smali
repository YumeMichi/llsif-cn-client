.class public Lcom/ghome/sdk/common/GHomeWXEntryActivity;
.super Landroid/app/Activity;
.source "GHomeWXEntryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GHomeWXEntryActivity"

.field private static listener:Lcom/ghome/sdk/common/GHomeActivityListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 2

    .line 25
    sget-object v0, Lcom/ghome/sdk/common/GHomeWXEntryActivity;->listener:Lcom/ghome/sdk/common/GHomeActivityListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/ghome/sdk/common/GHomeWXEntryActivity;->listener:Lcom/ghome/sdk/common/GHomeActivityListener;

    :cond_0
    const-string v0, "GHomeWXEntryActivity"

    const-string v1, "GHomeWXEntryActivity destroyWXEntryListener"

    .line 28
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setWXEntryListener(Lcom/ghome/sdk/common/GHomeActivityListener;)V
    .locals 1

    .line 18
    sput-object p0, Lcom/ghome/sdk/common/GHomeWXEntryActivity;->listener:Lcom/ghome/sdk/common/GHomeActivityListener;

    const-string p0, "GHomeWXEntryActivity"

    const-string v0, "GHomeWXEntryActivity setWXEntryListener"

    .line 20
    invoke-static {p0, v0}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GHomeWXEntryActivity onCreate listener="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/ghome/sdk/common/GHomeWXEntryActivity;->listener:Lcom/ghome/sdk/common/GHomeActivityListener;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GHomeWXEntryActivity"

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object p1, Lcom/ghome/sdk/common/GHomeWXEntryActivity;->listener:Lcom/ghome/sdk/common/GHomeActivityListener;

    if-eqz p1, :cond_0

    .line 38
    invoke-interface {p1, p0}, Lcom/ghome/sdk/common/GHomeActivityListener;->onCreate(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "GHomeWXEntryActivity"

    const-string v1, "GHomeWXEntryActivity onDestroy"

    .line 55
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/ghome/sdk/common/GHomeWXEntryActivity;->listener:Lcom/ghome/sdk/common/GHomeActivityListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/ghome/sdk/common/GHomeWXEntryActivity;->listener:Lcom/ghome/sdk/common/GHomeActivityListener;

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "GHomeWXEntryActivity"

    const-string v1, "GHomeWXEntryActivity onNewIntent"

    .line 45
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/ghome/sdk/common/GHomeWXEntryActivity;->listener:Lcom/ghome/sdk/common/GHomeActivityListener;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1, p0}, Lcom/ghome/sdk/common/GHomeActivityListener;->onNewIntent(Landroid/content/Intent;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
