.class final Lgbase_okhttp3/internal/ws/RealWebSocket$PingRunnable;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lgbase_okhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Lgbase_okhttp3/internal/ws/RealWebSocket;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$PingRunnable;->this$0:Lgbase_okhttp3/internal/ws/RealWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 515
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$PingRunnable;->this$0:Lgbase_okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lgbase_okhttp3/internal/ws/RealWebSocket;->writePingFrame()V

    return-void
.end method
