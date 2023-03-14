.class final Lgbase_okhttp3/internal/ws/RealWebSocket$Close;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field final cancelAfterCloseMillis:J

.field final code:I

.field final reason:Lgbase_okio/ByteString;


# direct methods
.method constructor <init>(ILgbase_okio/ByteString;J)V
    .locals 0

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$Close;->code:I

    .line 568
    iput-object p2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$Close;->reason:Lgbase_okio/ByteString;

    .line 569
    iput-wide p3, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    return-void
.end method
