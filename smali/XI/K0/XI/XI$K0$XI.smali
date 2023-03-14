.class public LXI/K0/XI/XI$K0$XI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LXI/K0/XI/XI$K0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic XI:LXI/K0/XI/XI$K0;


# direct methods
.method public constructor <init>(LXI/K0/XI/XI$K0;)V
    .locals 0

    iput-object p1, p0, LXI/K0/XI/XI$K0$XI;->XI:LXI/K0/XI/XI$K0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, LXI/K0/XI/XI$K0$XI;->XI:LXI/K0/XI/XI$K0;

    .line 1
    sget v0, LXI/K0/XI/XI$XI;->XI:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.heytap.openid.IOpenID"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, LXI/K0/XI/XI;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, LXI/K0/XI/XI;

    goto :goto_0

    :cond_1
    new-instance v0, LXI/K0/XI/XI$XI$XI;

    invoke-direct {v0, p2}, LXI/K0/XI/XI$XI$XI;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 2
    :goto_0
    iput-object p2, p1, LXI/K0/XI/XI$K0;->XI:LXI/K0/XI/XI;

    iget-object p1, p0, LXI/K0/XI/XI$K0$XI;->XI:LXI/K0/XI/XI$K0;

    iget-object p1, p1, LXI/K0/XI/XI$K0;->xo:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, LXI/K0/XI/XI$K0$XI;->XI:LXI/K0/XI/XI$K0;

    iget-object p2, p2, LXI/K0/XI/XI$K0;->xo:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

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
    .locals 1

    iget-object p1, p0, LXI/K0/XI/XI$K0$XI;->XI:LXI/K0/XI/XI$K0;

    const/4 v0, 0x0

    iput-object v0, p1, LXI/K0/XI/XI$K0;->XI:LXI/K0/XI/XI;

    return-void
.end method
