.class final Lgbase_okio/Okio$3;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lgbase_okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbase_okio/Okio;->blackhole()Lgbase_okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public timeout()Lgbase_okio/Timeout;
    .locals 1

    .line 209
    sget-object v0, Lgbase_okio/Timeout;->NONE:Lgbase_okio/Timeout;

    return-object v0
.end method

.method public write(Lgbase_okio/Buffer;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p1, p2, p3}, Lgbase_okio/Buffer;->skip(J)V

    return-void
.end method
