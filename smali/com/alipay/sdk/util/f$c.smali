.class public Lcom/alipay/sdk/util/f$c;
.super Lcom/alipay/android/app/IRemoteServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/util/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/alipay/sdk/util/f;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/util/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/util/f$c;->a:Lcom/alipay/sdk/util/f;

    invoke-direct {p0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/alipay/sdk/util/f;Lcom/alipay/sdk/util/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/alipay/sdk/util/f$c;-><init>(Lcom/alipay/sdk/util/f;)V

    return-void
.end method


# virtual methods
.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    return v0
.end method

.method public isHideLoadingScreen()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public payEnd(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public r03(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/alipay/sdk/util/f$c;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p3}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/f;)Lcom/alipay/sdk/sys/a;

    move-result-object p3

    const-string v0, "wlt"

    invoke-static {p3, v0, p1, p2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "|"

    const-string v1, "ErrActNull"

    const-string v2, "biz"

    .line 1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-nez p4, :cond_0

    .line 4
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    :try_start_0
    const-string v4, "CallingPid"

    .line 7
    invoke-virtual {p4, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v3, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 10
    iget-object p4, p0, Lcom/alipay/sdk/util/f$c;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p4}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/f;)Lcom/alipay/sdk/sys/a;

    move-result-object p4

    const-string v4, "ErrIntentEx"

    invoke-static {p4, v2, v4, p3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :goto_0
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_1

    .line 20
    new-instance p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 21
    invoke-static {p1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 22
    iget-object p2, p0, Lcom/alipay/sdk/util/f$c;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p2}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/f;)Lcom/alipay/sdk/sys/a;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p3, "isFg"

    :try_start_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v2, p3, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :catchall_0
    :cond_1
    :try_start_3
    iget-object p1, p0, Lcom/alipay/sdk/util/f$c;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p1}, Lcom/alipay/sdk/util/f;->c(Lcom/alipay/sdk/util/f;)Landroid/app/Activity;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string p2, ""

    if-eqz p1, :cond_2

    .line 29
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 30
    iget-object p1, p0, Lcom/alipay/sdk/util/f$c;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p1}, Lcom/alipay/sdk/util/f;->c(Lcom/alipay/sdk/util/f;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 31
    iget-object p1, p0, Lcom/alipay/sdk/util/f$c;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p1}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/f;)Lcom/alipay/sdk/sys/a;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v0, "stAct2"

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v2, v0, p2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_2
    iget-object p1, p0, Lcom/alipay/sdk/util/f$c;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p1}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/f;)Lcom/alipay/sdk/sys/a;

    move-result-object p1

    invoke-static {p1, v2, v1, p2}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/alipay/sdk/util/f$c;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p1}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/f;)Lcom/alipay/sdk/sys/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/sdk/sys/a;->a()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 37
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 45
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/alipay/sdk/util/f$c;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p1}, Lcom/alipay/sdk/util/f;->d(Lcom/alipay/sdk/util/f;)Lcom/alipay/sdk/util/f$e;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/sdk/util/f$e;->a()V

    return-void

    :catchall_1
    move-exception p1

    .line 46
    iget-object p2, p0, Lcom/alipay/sdk/util/f$c;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p2}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/f;)Lcom/alipay/sdk/sys/a;

    move-result-object p2

    invoke-static {p2, v2, v1, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    throw p1
.end method
