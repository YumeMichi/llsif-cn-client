.class public abstract Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Streams"
.end annotation


# instance fields
.field public final client:Z

.field public final sink:Lgbase_okio/BufferedSink;

.field public final source:Lgbase_okio/BufferedSource;


# direct methods
.method public constructor <init>(ZLgbase_okio/BufferedSource;Lgbase_okio/BufferedSink;)V
    .locals 0

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-boolean p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    .line 580
    iput-object p2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;->source:Lgbase_okio/BufferedSource;

    .line 581
    iput-object p3, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$Streams;->sink:Lgbase_okio/BufferedSink;

    return-void
.end method
