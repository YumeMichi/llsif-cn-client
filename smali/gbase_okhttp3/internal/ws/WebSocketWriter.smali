.class final Lgbase_okhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field activeWriter:Z

.field final buffer:Lgbase_okio/Buffer;

.field final frameSink:Lgbase_okhttp3/internal/ws/WebSocketWriter$FrameSink;

.field final isClient:Z

.field final maskBuffer:[B

.field final maskKey:[B

.field final random:Ljava/util/Random;

.field final sink:Lgbase_okio/BufferedSink;

.field writerClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ZLgbase_okio/BufferedSink;Ljava/util/Random;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lgbase_okio/Buffer;

    invoke-direct {v0}, Lgbase_okio/Buffer;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->buffer:Lgbase_okio/Buffer;

    .line 58
    new-instance v0, Lgbase_okhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Lgbase_okhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lgbase_okhttp3/internal/ws/WebSocketWriter;)V

    iput-object v0, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->frameSink:Lgbase_okhttp3/internal/ws/WebSocketWriter$FrameSink;

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 68
    iput-boolean p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 69
    iput-object p2, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    .line 70
    iput-object p3, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p3, 0x4

    .line 73
    new-array p3, p3, [B

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    if-eqz p1, :cond_1

    const/16 p1, 0x2000

    .line 74
    new-array p2, p1, [B

    :cond_1
    iput-object p2, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    return-void

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "random == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeControlFrameSynchronized(ILgbase_okio/ByteString;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-boolean v0, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_2

    .line 126
    invoke-virtual {p2}, Lgbase_okio/ByteString;->size()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    or-int/lit16 p1, p1, 0x80

    .line 133
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {v1, p1}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 136
    iget-boolean p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x80

    .line 138
    iget-object v0, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {v0, p1}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 140
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v0, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 141
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    iget-object v0, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {p1, v0}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    .line 143
    invoke-virtual {p2}, Lgbase_okio/ByteString;->toByteArray()[B

    move-result-object p1

    .line 144
    array-length p2, p1

    int-to-long v2, p2

    iget-object v4, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    const-wide/16 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lgbase_okhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 145
    iget-object p2, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {p2, p1}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {p1, v0}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 148
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {p1, p2}, Lgbase_okio/BufferedSink;->write(Lgbase_okio/ByteString;)Lgbase_okio/BufferedSink;

    .line 151
    :goto_0
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {p1}, Lgbase_okio/BufferedSink;->flush()V

    return-void

    .line 128
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Payload size must be less than or equal to 125"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method newMessageSink(IJ)Lgbase_okio/Sink;
    .locals 2

    .line 159
    iget-boolean v0, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 165
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->frameSink:Lgbase_okhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput p1, v1, Lgbase_okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    .line 166
    iput-wide p2, v1, Lgbase_okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    .line 167
    iput-boolean v0, v1, Lgbase_okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 p1, 0x0

    .line 168
    iput-boolean p1, v1, Lgbase_okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    return-object v1

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Another message writer is active. Did you call close()?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method writeClose(ILgbase_okio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    sget-object v0, Lgbase_okio/ByteString;->EMPTY:Lgbase_okio/ByteString;

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    .line 102
    invoke-static {p1}, Lgbase_okhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 104
    :cond_1
    new-instance v0, Lgbase_okio/Buffer;

    invoke-direct {v0}, Lgbase_okio/Buffer;-><init>()V

    .line 105
    invoke-virtual {v0, p1}, Lgbase_okio/Buffer;->writeShort(I)Lgbase_okio/Buffer;

    if-eqz p2, :cond_2

    .line 107
    invoke-virtual {v0, p2}, Lgbase_okio/Buffer;->write(Lgbase_okio/ByteString;)Lgbase_okio/Buffer;

    .line 109
    :cond_2
    invoke-virtual {v0}, Lgbase_okio/Buffer;->readByteString()Lgbase_okio/ByteString;

    move-result-object v0

    .line 112
    :cond_3
    monitor-enter p0

    const/16 p1, 0x8

    const/4 p2, 0x1

    .line 114
    :try_start_0
    invoke-direct {p0, p1, v0}, Lgbase_okhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILgbase_okio/ByteString;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    iput-boolean p2, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 116
    iput-boolean p2, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    throw p1

    .line 118
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method writeMessageFrameSynchronized(IJZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p5, :cond_1

    or-int/lit16 p1, p1, 0x80

    .line 183
    :cond_1
    iget-object p4, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {p4, p1}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 186
    iget-boolean p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x80

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const-wide/16 p4, 0x7d

    cmp-long v1, p2, p4

    if-gtz v1, :cond_3

    long-to-int p4, p2

    or-int/2addr p1, p4

    .line 191
    iget-object p4, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {p4, p1}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    goto :goto_2

    :cond_3
    const-wide/32 p4, 0xffff

    cmp-long v1, p2, p4

    if-gtz v1, :cond_4

    or-int/lit8 p1, p1, 0x7e

    .line 194
    iget-object p4, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {p4, p1}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 195
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    long-to-int p4, p2

    invoke-interface {p1, p4}, Lgbase_okio/BufferedSink;->writeShort(I)Lgbase_okio/BufferedSink;

    goto :goto_2

    :cond_4
    or-int/lit8 p1, p1, 0x7f

    .line 198
    iget-object p4, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {p4, p1}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 199
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {p1, p2, p3}, Lgbase_okio/BufferedSink;->writeLong(J)Lgbase_okio/BufferedSink;

    .line 202
    :goto_2
    iget-boolean p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_6

    .line 203
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object p4, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, p4}, Ljava/util/Random;->nextBytes([B)V

    .line 204
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    iget-object p4, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {p1, p4}, Lgbase_okio/BufferedSink;->write([B)Lgbase_okio/BufferedSink;

    const-wide/16 p4, 0x0

    :goto_3
    cmp-long p1, p4, p2

    if-gez p1, :cond_7

    .line 207
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p1, v1

    .line 208
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->buffer:Lgbase_okio/Buffer;

    iget-object v2, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-virtual {v1, v2, v0, p1}, Lgbase_okio/Buffer;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5

    .line 210
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    int-to-long v7, p1

    iget-object v4, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    move-wide v2, v7

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lgbase_okhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 211
    iget-object v1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    iget-object v2, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-interface {v1, v2, v0, p1}, Lgbase_okio/BufferedSink;->write([BII)Lgbase_okio/BufferedSink;

    add-long/2addr p4, v7

    goto :goto_3

    .line 209
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 215
    :cond_6
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    iget-object p4, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->buffer:Lgbase_okio/Buffer;

    invoke-interface {p1, p4, p2, p3}, Lgbase_okio/BufferedSink;->write(Lgbase_okio/Buffer;J)V

    .line 218
    :cond_7
    iget-object p1, p0, Lgbase_okhttp3/internal/ws/WebSocketWriter;->sink:Lgbase_okio/BufferedSink;

    invoke-interface {p1}, Lgbase_okio/BufferedSink;->emit()Lgbase_okio/BufferedSink;

    return-void

    .line 177
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method writePing(Lgbase_okio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    monitor-enter p0

    const/16 v0, 0x9

    .line 80
    :try_start_0
    invoke-direct {p0, v0, p1}, Lgbase_okhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILgbase_okio/ByteString;)V

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method writePong(Lgbase_okio/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    monitor-enter p0

    const/16 v0, 0xa

    .line 87
    :try_start_0
    invoke-direct {p0, v0, p1}, Lgbase_okhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILgbase_okio/ByteString;)V

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
