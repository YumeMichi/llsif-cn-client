.class final Lgbase_okhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "Relay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/internal/cache2/Relay$RelaySource;
    }
.end annotation


# static fields
.field private static final FILE_HEADER_SIZE:J = 0x20L

.field static final PREFIX_CLEAN:Lgbase_okio/ByteString;

.field static final PREFIX_DIRTY:Lgbase_okio/ByteString;

.field private static final SOURCE_FILE:I = 0x2

.field private static final SOURCE_UPSTREAM:I = 0x1


# instance fields
.field final buffer:Lgbase_okio/Buffer;

.field final bufferMaxSize:J

.field complete:Z

.field file:Ljava/io/RandomAccessFile;

.field private final metadata:Lgbase_okio/ByteString;

.field sourceCount:I

.field upstream:Lgbase_okio/Source;

.field final upstreamBuffer:Lgbase_okio/Buffer;

.field upstreamPos:J

.field upstreamReader:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OkHttp cache v1\n"

    .line 46
    invoke-static {v0}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lgbase_okio/ByteString;

    const-string v0, "OkHttp DIRTY :(\n"

    .line 47
    invoke-static {v0}, Lgbase_okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lgbase_okio/ByteString;

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Lgbase_okio/Source;JLgbase_okio/ByteString;J)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lgbase_okio/Buffer;

    invoke-direct {v0}, Lgbase_okio/Buffer;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/internal/cache2/Relay;->upstreamBuffer:Lgbase_okio/Buffer;

    .line 95
    new-instance v0, Lgbase_okio/Buffer;

    invoke-direct {v0}, Lgbase_okio/Buffer;-><init>()V

    iput-object v0, p0, Lgbase_okhttp3/internal/cache2/Relay;->buffer:Lgbase_okio/Buffer;

    .line 109
    iput-object p1, p0, Lgbase_okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 110
    iput-object p2, p0, Lgbase_okhttp3/internal/cache2/Relay;->upstream:Lgbase_okio/Source;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 111
    :goto_0
    iput-boolean p1, p0, Lgbase_okhttp3/internal/cache2/Relay;->complete:Z

    .line 112
    iput-wide p3, p0, Lgbase_okhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 113
    iput-object p5, p0, Lgbase_okhttp3/internal/cache2/Relay;->metadata:Lgbase_okio/ByteString;

    .line 114
    iput-wide p6, p0, Lgbase_okhttp3/internal/cache2/Relay;->bufferMaxSize:J

    return-void
.end method

.method public static edit(Ljava/io/File;Lgbase_okio/Source;Lgbase_okio/ByteString;J)Lgbase_okhttp3/internal/cache2/Relay;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v8, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    new-instance p0, Lgbase_okhttp3/internal/cache2/Relay;

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lgbase_okhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lgbase_okio/Source;JLgbase_okio/ByteString;J)V

    const-wide/16 p1, 0x0

    .line 131
    invoke-virtual {v8, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 132
    sget-object v2, Lgbase_okhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lgbase_okio/ByteString;

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lgbase_okhttp3/internal/cache2/Relay;->writeHeader(Lgbase_okio/ByteString;JJ)V

    return-object p0
.end method

.method public static read(Ljava/io/File;)Lgbase_okhttp3/internal/cache2/Relay;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    new-instance p0, Lgbase_okhttp3/internal/cache2/FileOperator;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lgbase_okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 149
    new-instance v0, Lgbase_okio/Buffer;

    invoke-direct {v0}, Lgbase_okio/Buffer;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x20

    move-object v2, p0

    move-object v5, v0

    .line 150
    invoke-virtual/range {v2 .. v7}, Lgbase_okhttp3/internal/cache2/FileOperator;->read(JLgbase_okio/Buffer;J)V

    .line 151
    sget-object v2, Lgbase_okhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lgbase_okio/ByteString;

    invoke-virtual {v2}, Lgbase_okio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lgbase_okio/Buffer;->readByteString(J)Lgbase_okio/ByteString;

    move-result-object v2

    .line 152
    sget-object v3, Lgbase_okhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lgbase_okio/ByteString;

    invoke-virtual {v2, v3}, Lgbase_okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-virtual {v0}, Lgbase_okio/Buffer;->readLong()J

    move-result-wide v8

    .line 154
    invoke-virtual {v0}, Lgbase_okio/Buffer;->readLong()J

    move-result-wide v6

    .line 157
    new-instance v0, Lgbase_okio/Buffer;

    invoke-direct {v0}, Lgbase_okio/Buffer;-><init>()V

    const-wide/16 v2, 0x20

    add-long v4, v8, v2

    move-object v2, p0

    move-wide v3, v4

    move-object v5, v0

    .line 158
    invoke-virtual/range {v2 .. v7}, Lgbase_okhttp3/internal/cache2/FileOperator;->read(JLgbase_okio/Buffer;J)V

    .line 159
    invoke-virtual {v0}, Lgbase_okio/Buffer;->readByteString()Lgbase_okio/ByteString;

    move-result-object v5

    .line 162
    new-instance p0, Lgbase_okhttp3/internal/cache2/Relay;

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v3, v8

    invoke-direct/range {v0 .. v7}, Lgbase_okhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lgbase_okio/Source;JLgbase_okio/ByteString;J)V

    return-object p0

    .line 152
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unreadable cache file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeHeader(Lgbase_okio/ByteString;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    new-instance v3, Lgbase_okio/Buffer;

    invoke-direct {v3}, Lgbase_okio/Buffer;-><init>()V

    .line 168
    invoke-virtual {v3, p1}, Lgbase_okio/Buffer;->write(Lgbase_okio/ByteString;)Lgbase_okio/Buffer;

    .line 169
    invoke-virtual {v3, p2, p3}, Lgbase_okio/Buffer;->writeLong(J)Lgbase_okio/Buffer;

    .line 170
    invoke-virtual {v3, p4, p5}, Lgbase_okio/Buffer;->writeLong(J)Lgbase_okio/Buffer;

    .line 171
    invoke-virtual {v3}, Lgbase_okio/Buffer;->size()J

    move-result-wide p1

    const-wide/16 p3, 0x20

    cmp-long p5, p1, p3

    if-nez p5, :cond_0

    .line 173
    new-instance v0, Lgbase_okhttp3/internal/cache2/FileOperator;

    iget-object p1, p0, Lgbase_okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lgbase_okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x0

    const-wide/16 v4, 0x20

    .line 174
    invoke-virtual/range {v0 .. v5}, Lgbase_okhttp3/internal/cache2/FileOperator;->write(JLgbase_okio/Buffer;J)V

    return-void

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private writeMetadata(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v3, Lgbase_okio/Buffer;

    invoke-direct {v3}, Lgbase_okio/Buffer;-><init>()V

    .line 179
    iget-object v0, p0, Lgbase_okhttp3/internal/cache2/Relay;->metadata:Lgbase_okio/ByteString;

    invoke-virtual {v3, v0}, Lgbase_okio/Buffer;->write(Lgbase_okio/ByteString;)Lgbase_okio/Buffer;

    .line 181
    new-instance v0, Lgbase_okhttp3/internal/cache2/FileOperator;

    iget-object v1, p0, Lgbase_okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lgbase_okhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x20

    add-long/2addr v1, p1

    .line 182
    iget-object p1, p0, Lgbase_okhttp3/internal/cache2/Relay;->metadata:Lgbase_okio/ByteString;

    invoke-virtual {p1}, Lgbase_okio/ByteString;->size()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Lgbase_okhttp3/internal/cache2/FileOperator;->write(JLgbase_okio/Buffer;J)V

    return-void
.end method


# virtual methods
.method commit(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Lgbase_okhttp3/internal/cache2/Relay;->writeMetadata(J)V

    .line 188
    iget-object v0, p0, Lgbase_okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 191
    sget-object v3, Lgbase_okhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lgbase_okio/ByteString;

    iget-object v0, p0, Lgbase_okhttp3/internal/cache2/Relay;->metadata:Lgbase_okio/ByteString;

    invoke-virtual {v0}, Lgbase_okio/ByteString;->size()I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v7}, Lgbase_okhttp3/internal/cache2/Relay;->writeHeader(Lgbase_okio/ByteString;JJ)V

    .line 192
    iget-object p1, p0, Lgbase_okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 195
    monitor-enter p0

    const/4 p1, 0x1

    .line 196
    :try_start_0
    iput-boolean p1, p0, Lgbase_okhttp3/internal/cache2/Relay;->complete:Z

    .line 197
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    iget-object p1, p0, Lgbase_okhttp3/internal/cache2/Relay;->upstream:Lgbase_okio/Source;

    invoke-static {p1}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lgbase_okhttp3/internal/cache2/Relay;->upstream:Lgbase_okio/Source;

    return-void

    :catchall_0
    move-exception p1

    .line 197
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method isClosed()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lgbase_okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public metadata()Lgbase_okio/ByteString;
    .locals 1

    .line 208
    iget-object v0, p0, Lgbase_okhttp3/internal/cache2/Relay;->metadata:Lgbase_okio/ByteString;

    return-object v0
.end method

.method public newSource()Lgbase_okio/Source;
    .locals 1

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lgbase_okhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 219
    :cond_0
    iget v0, p0, Lgbase_okhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgbase_okhttp3/internal/cache2/Relay;->sourceCount:I

    .line 220
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    new-instance v0, Lgbase_okhttp3/internal/cache2/Relay$RelaySource;

    invoke-direct {v0, p0}, Lgbase_okhttp3/internal/cache2/Relay$RelaySource;-><init>(Lgbase_okhttp3/internal/cache2/Relay;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 220
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
