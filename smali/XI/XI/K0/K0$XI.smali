.class public LXI/XI/K0/K0$XI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LXI/XI/K0/K0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic XI:LXI/XI/K0/K0;


# direct methods
.method public constructor <init>(LXI/XI/K0/K0;)V
    .locals 0

    iput-object p1, p0, LXI/XI/K0/K0$XI;->XI:LXI/XI/K0/K0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, LXI/XI/K0/K0$XI;->XI:LXI/XI/K0/K0;

    .line 1
    sget v0, LXI/XI/XI/XI$XI;->XI:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.android.creator.IdsSupplier"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, LXI/XI/XI/XI;

    if-eqz v1, :cond_1

    move-object p2, v0

    check-cast p2, LXI/XI/XI/XI;

    goto :goto_0

    :cond_1
    new-instance v0, LXI/XI/XI/XI$XI$XI;

    invoke-direct {v0, p2}, LXI/XI/XI/XI$XI$XI;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 2
    :goto_0
    iput-object p2, p1, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    .line 3
    iget-object p1, p0, LXI/XI/K0/K0$XI;->XI:LXI/XI/K0/K0;

    .line 4
    iget-object p1, p1, LXI/XI/K0/K0;->kM:LXI/XI/K0/xo;

    const/4 p2, 0x1

    .line 5
    invoke-interface {p1, p2}, LXI/XI/K0/xo;->connectSuccess(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, LXI/XI/K0/K0$XI;->XI:LXI/XI/K0/K0;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    return-void
.end method
