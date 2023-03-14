.class public Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXI/XI/K0/xo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

.field public final synthetic val$idSupplier:LXI/XI/K0/kM;


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;LXI/XI/K0/kM;)V
    .locals 0

    iput-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    iput-object p2, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->val$idSupplier:LXI/XI/K0/kM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectSuccess(Z)V
    .locals 6

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->val$idSupplier:LXI/XI/K0/kM;

    check-cast p1, LXI/XI/K0/K0;

    invoke-virtual {p1}, LXI/XI/K0/K0;->XI()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->access$002(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;Z)Z

    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->val$idSupplier:LXI/XI/K0/kM;

    check-cast p1, LXI/XI/K0/K0;

    .line 1
    iget-object p1, p1, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, LXI/XI/XI/XI;->getOAID()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    move-object p1, v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->val$idSupplier:LXI/XI/K0/kM;

    iget-object v2, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    invoke-static {v2}, Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->access$100(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;)Ljava/lang/String;

    check-cast v1, LXI/XI/K0/K0;

    .line 3
    iget-object v1, v1, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, LXI/XI/XI/XI;->getVAID()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    move-object v1, v0

    .line 4
    :goto_1
    iget-object v2, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->val$idSupplier:LXI/XI/K0/kM;

    iget-object v3, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    invoke-static {v3}, Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->access$100(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;)Ljava/lang/String;

    move-result-object v3

    check-cast v2, LXI/XI/K0/K0;

    .line 5
    iget-object v4, v2, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    if-eqz v4, :cond_2

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAAID idsSupplier:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAAID pkgname:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, v2, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    invoke-interface {v2, v3}, LXI/XI/XI/XI;->getAAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 6
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    const-string v3, ""

    if-nez p1, :cond_3

    move-object p1, v3

    :cond_3
    invoke-static {v2, p1}, Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->access$202(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    if-nez v1, :cond_4

    move-object v1, v3

    :cond_4
    invoke-static {p1, v1}, Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->access$302(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    if-nez v0, :cond_5

    move-object v0, v3

    :cond_5
    invoke-static {p1, v0}, Lcom/bun/miitmdid/provider/freeme/FreemeProvider;->access$402(Lcom/bun/miitmdid/provider/freeme/FreemeProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->this$0:Lcom/bun/miitmdid/provider/freeme/FreemeProvider;

    invoke-virtual {p1}, Lcom/bun/miitmdid/provider/BaseProvider;->returnCallResult()V

    :cond_6
    iget-object p1, p0, Lcom/bun/miitmdid/provider/freeme/FreemeProvider$1;->val$idSupplier:LXI/XI/K0/kM;

    check-cast p1, LXI/XI/K0/K0;

    .line 7
    iget-object v0, p1, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    if-eqz v0, :cond_7

    iget-object v0, p1, LXI/XI/K0/K0;->XI:Landroid/content/Context;

    iget-object p1, p1, LXI/XI/K0/K0;->xo:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_7
    return-void
.end method
