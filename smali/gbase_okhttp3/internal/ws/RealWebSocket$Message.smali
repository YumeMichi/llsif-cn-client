.class final Lgbase_okhttp3/internal/ws/RealWebSocket$Message;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Message"
.end annotation


# instance fields
.field final data:Lgbase_okio/ByteString;

.field final formatOpcode:I


# direct methods
.method constructor <init>(ILgbase_okio/ByteString;)V
    .locals 0

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput p1, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 557
    iput-object p2, p0, Lgbase_okhttp3/internal/ws/RealWebSocket$Message;->data:Lgbase_okio/ByteString;

    return-void
.end method
