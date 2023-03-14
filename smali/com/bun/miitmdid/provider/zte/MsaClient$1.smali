.class public Lcom/bun/miitmdid/provider/zte/MsaClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/provider/zte/MsaClient;-><init>(Landroid/content/Context;Lcom/bun/miitmdid/provider/zte/MsaServiceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/bun/miitmdid/provider/zte/MsaClient;

.field public final synthetic val$listener:Lcom/bun/miitmdid/provider/zte/MsaServiceConnection;


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/provider/zte/MsaClient;Lcom/bun/miitmdid/provider/zte/MsaServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/bun/miitmdid/provider/zte/MsaClient$1;->this$0:Lcom/bun/miitmdid/provider/zte/MsaClient;

    iput-object p2, p0, Lcom/bun/miitmdid/provider/zte/MsaClient$1;->val$listener:Lcom/bun/miitmdid/provider/zte/MsaServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/bun/miitmdid/provider/zte/MsaClient$1;->this$0:Lcom/bun/miitmdid/provider/zte/MsaClient;

    invoke-static {p2}, Lcom/bun/lib/MsaIdInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bun/lib/MsaIdInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bun/miitmdid/provider/zte/MsaClient;->access$002(Lcom/bun/miitmdid/provider/zte/MsaClient;Lcom/bun/lib/MsaIdInterface;)Lcom/bun/lib/MsaIdInterface;

    new-instance p1, Lcom/bun/miitmdid/provider/zte/MsaAsyncTask;

    iget-object p2, p0, Lcom/bun/miitmdid/provider/zte/MsaClient$1;->this$0:Lcom/bun/miitmdid/provider/zte/MsaClient;

    invoke-static {p2}, Lcom/bun/miitmdid/provider/zte/MsaClient;->access$000(Lcom/bun/miitmdid/provider/zte/MsaClient;)Lcom/bun/lib/MsaIdInterface;

    move-result-object p2

    iget-object v0, p0, Lcom/bun/miitmdid/provider/zte/MsaClient$1;->val$listener:Lcom/bun/miitmdid/provider/zte/MsaServiceConnection;

    invoke-direct {p1, p2, v0}, Lcom/bun/miitmdid/provider/zte/MsaAsyncTask;-><init>(Lcom/bun/lib/MsaIdInterface;Lcom/bun/miitmdid/provider/zte/MsaServiceConnection;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/bun/miitmdid/provider/zte/MsaClient;->access$100()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/bun/miitmdid/provider/zte/MsaClient$1;->this$0:Lcom/bun/miitmdid/provider/zte/MsaClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bun/miitmdid/provider/zte/MsaClient;->access$002(Lcom/bun/miitmdid/provider/zte/MsaClient;Lcom/bun/lib/MsaIdInterface;)Lcom/bun/lib/MsaIdInterface;

    invoke-static {}, Lcom/bun/miitmdid/provider/zte/MsaClient;->access$100()Ljava/lang/String;

    iget-object p1, p0, Lcom/bun/miitmdid/provider/zte/MsaClient$1;->this$0:Lcom/bun/miitmdid/provider/zte/MsaClient;

    invoke-static {p1, v0}, Lcom/bun/miitmdid/provider/zte/MsaClient;->access$002(Lcom/bun/miitmdid/provider/zte/MsaClient;Lcom/bun/lib/MsaIdInterface;)Lcom/bun/lib/MsaIdInterface;

    return-void
.end method
