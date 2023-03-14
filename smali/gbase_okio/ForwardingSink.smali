.class public abstract Lgbase_okio/ForwardingSink;
.super Ljava/lang/Object;
.source "ForwardingSink.java"

# interfaces
.implements Lgbase_okio/Sink;


# instance fields
.field private final delegate:Lgbase_okio/Sink;


# direct methods
.method public constructor <init>(Lgbase_okio/Sink;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 26
    iput-object p1, p0, Lgbase_okio/ForwardingSink;->delegate:Lgbase_okio/Sink;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lgbase_okio/ForwardingSink;->delegate:Lgbase_okio/Sink;

    invoke-interface {v0}, Lgbase_okio/Sink;->close()V

    return-void
.end method

.method public final delegate()Lgbase_okio/Sink;
    .locals 1

    .line 31
    iget-object v0, p0, Lgbase_okio/ForwardingSink;->delegate:Lgbase_okio/Sink;

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lgbase_okio/ForwardingSink;->delegate:Lgbase_okio/Sink;

    invoke-interface {v0}, Lgbase_okio/Sink;->flush()V

    return-void
.end method

.method public timeout()Lgbase_okio/Timeout;
    .locals 1

    .line 43
    iget-object v0, p0, Lgbase_okio/ForwardingSink;->delegate:Lgbase_okio/Sink;

    invoke-interface {v0}, Lgbase_okio/Sink;->timeout()Lgbase_okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbase_okio/ForwardingSink;->delegate:Lgbase_okio/Sink;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lgbase_okio/Buffer;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lgbase_okio/ForwardingSink;->delegate:Lgbase_okio/Sink;

    invoke-interface {v0, p1, p2, p3}, Lgbase_okio/Sink;->write(Lgbase_okio/Buffer;J)V

    return-void
.end method
