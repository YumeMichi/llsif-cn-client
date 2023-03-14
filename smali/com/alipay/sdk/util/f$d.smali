.class public Lcom/alipay/sdk/util/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/util/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/alipay/sdk/util/f;


# direct methods
.method public constructor <init>(Lcom/alipay/sdk/util/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/util/f$d;->a:Lcom/alipay/sdk/util/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/alipay/sdk/util/f;Lcom/alipay/sdk/util/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/alipay/sdk/util/f$d;-><init>(Lcom/alipay/sdk/util/f;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/alipay/sdk/util/f$d;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p1}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/f;)Lcom/alipay/sdk/sys/a;

    move-result-object p1

    const-string v0, "biz"

    const-string v1, "srvCon"

    invoke-static {p1, v0, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/alipay/sdk/util/f$d;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p1}, Lcom/alipay/sdk/util/f;->b(Lcom/alipay/sdk/util/f;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/util/f$d;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/f;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    .line 4
    iget-object p2, p0, Lcom/alipay/sdk/util/f$d;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p2}, Lcom/alipay/sdk/util/f;->b(Lcom/alipay/sdk/util/f;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/alipay/sdk/util/f$d;->a:Lcom/alipay/sdk/util/f;

    invoke-static {p1}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/f;)Lcom/alipay/sdk/sys/a;

    move-result-object p1

    const-string v0, "biz"

    const-string v1, "srvDis"

    invoke-static {p1, v0, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/alipay/sdk/util/f$d;->a:Lcom/alipay/sdk/util/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alipay/sdk/util/f;->a(Lcom/alipay/sdk/util/f;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;

    return-void
.end method
