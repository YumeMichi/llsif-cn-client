.class Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrictLineReader"
.end annotation


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I

.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;


# direct methods
.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/io/InputStream;)V
    .locals 1

    const/16 v0, 0x2000

    .line 1081
    invoke-direct {p0, p1, p2, v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;-><init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/io/InputStream;I)V
    .locals 0

    .line 1093
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "US-ASCII"

    .line 1061
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_1

    if-ltz p3, :cond_0

    .line 1101
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    .line 1102
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->buf:[B

    return-void

    .line 1098
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "capacity <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1095
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method static synthetic access$2600(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;)Ljava/nio/charset/Charset;
    .locals 0

    .line 1056
    iget-object p0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private fillBuf()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1189
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1193
    iput v3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    .line 1194
    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->end:I

    return-void

    .line 1191
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1113
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 1114
    :try_start_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->buf:[B

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1115
    iput-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->buf:[B

    .line 1116
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1118
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1130
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v0

    .line 1131
    :try_start_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->buf:[B

    if-eqz v1, :cond_7

    .line 1138
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->end:I

    if-lt v1, v2, :cond_0

    .line 1139
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->fillBuf()V

    .line 1142
    :cond_0
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    :goto_0
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->end:I

    const/16 v3, 0xa

    if-eq v1, v2, :cond_3

    .line 1143
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->buf:[B

    aget-byte v2, v2, v1

    if-ne v2, v3, :cond_2

    .line 1144
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->buf:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    const/16 v4, 0xd

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    .line 1145
    :goto_1
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v5, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v6, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int/2addr v3, v6

    iget-object v6, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 1146
    iput v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    .line 1147
    monitor-exit v0

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1152
    :cond_3
    new-instance v1, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader$1;

    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->end:I

    iget v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x50

    invoke-direct {v1, p0, v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader$1;-><init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;I)V

    .line 1165
    :cond_4
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v5, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->end:I

    iget v6, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    .line 1167
    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->end:I

    .line 1168
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->fillBuf()V

    .line 1170
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    :goto_2
    iget v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->end:I

    if-eq v2, v4, :cond_4

    .line 1171
    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->buf:[B

    aget-byte v4, v4, v2

    if-ne v4, v3, :cond_6

    .line 1172
    iget v3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    if-eq v2, v3, :cond_5

    .line 1173
    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v5, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1175
    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    add-int/lit8 v2, v2, 0x1

    .line 1176
    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->pos:I

    .line 1177
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1132
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "LineReader is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 1181
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
