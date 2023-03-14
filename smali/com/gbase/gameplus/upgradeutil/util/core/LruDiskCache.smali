.class public final Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$MD5DiskCacheFileNameGenerator;,
        Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;,
        Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$StrictLineReader;,
        Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;,
        Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;,
        Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private diskCacheFileNameGenerator:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,64}"

    .line 72
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 770
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$2;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$2;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 125
    iput-wide v2, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->size:J

    .line 127
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 136
    iput-wide v2, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->nextSequenceNumber:J

    .line 141
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 143
    new-instance v2, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$1;

    invoke-direct {v2, p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$1;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;)V

    iput-object v2, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 1226
    new-instance v2, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$MD5DiskCacheFileNameGenerator;

    invoke-direct {v2, p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$MD5DiskCacheFileNameGenerator;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;)V

    iput-object v2, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    .line 160
    iput-object v1, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->directory:Ljava/io/File;

    move/from16 v2, p2

    .line 161
    iput v2, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->appVersion:I

    .line 162
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    .line 163
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFileTmp:Ljava/io/File;

    .line 164
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFileBackup:Ljava/io/File;

    move/from16 v1, p3

    .line 165
    iput v1, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->valueCount:I

    move-wide/from16 v1, p4

    .line 166
    iput-wide v1, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->maxSize:J

    return-void
.end method

.method static synthetic access$000(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;)Ljava/io/Writer;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1700(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;Ljava/lang/String;J)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-static {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->valueCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;)Z
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;)Ljava/io/File;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2100()Ljava/io/OutputStream;
    .locals 1

    .line 65
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->completeEdit(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;I)I
    .locals 0

    .line 65
    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .line 656
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    .line 657
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized completeEdit(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 545
    :try_start_0
    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;->access$1500(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;

    move-result-object v0

    .line 546
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 551
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$600(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 552
    :goto_0
    iget v3, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 553
    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;->access$1600(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 557
    invoke-virtual {v0, v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 558
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;->abort()V

    .line 555
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 564
    :cond_2
    :goto_1
    iget p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->valueCount:I

    if-ge v1, p1, :cond_5

    .line 565
    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 567
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 568
    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 569
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 570
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 571
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 572
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 573
    iget-wide v7, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->size:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->size:J

    goto :goto_2

    .line 576
    :cond_3
    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 580
    :cond_5
    iget p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->redundantOpCount:I

    const/4 p1, 0x0

    .line 581
    invoke-static {v0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$702(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    .line 582
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$600(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_6

    .line 583
    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$602(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;Z)Z

    .line 584
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1200(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " t_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$800(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 586
    iget-wide p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->nextSequenceNumber:J

    invoke-static {v0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1302(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;J)J

    goto :goto_3

    .line 589
    :cond_6
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1200(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1200(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 592
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 594
    iget-wide p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->size:J

    iget-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->maxSize:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 595
    :cond_8
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    :cond_9
    monitor-exit p0

    return-void

    .line 547
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private static deleteContents(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1039
    array-length p0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    aget-object v2, v0, v1

    .line 1040
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1041
    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->deleteContents(Ljava/io/File;)V

    .line 1043
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1044
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 1037
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a readable directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized editByDiskKey(Ljava/lang/String;J)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 488
    :try_start_0
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->checkNotClosed()V

    .line 489
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 492
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1300(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 493
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    .line 496
    :try_start_1
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;

    invoke-direct {v0, p0, p1, v3}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$1;)V

    .line 497
    iget-object p2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 498
    :cond_2
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 499
    monitor-exit p0

    return-object v3

    .line 502
    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    invoke-direct {p2, p0, v0, v3}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$1;)V

    .line 503
    invoke-static {v0, p2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$702(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    .line 506
    iget-object p3, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIRTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 507
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getByDiskKey(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Snapshot;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 419
    :try_start_0
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->checkNotClosed()V

    .line 420
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 423
    monitor-exit p0

    return-object v2

    .line 426
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$600(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 427
    monitor-exit p0

    return-object v2

    .line 431
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$800(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v7, 0xa

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-gez v9, :cond_6

    .line 432
    :goto_0
    iget v3, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->valueCount:I

    if-ge v8, v3, :cond_4

    .line 433
    invoke-virtual {v1, v8}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 434
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 435
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_3
    :goto_1
    iget-wide v3, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->size:J

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)[J

    move-result-object v5

    aget-wide v9, v5, v8

    sub-long/2addr v3, v9

    iput-wide v3, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->size:J

    .line 438
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 440
    :cond_4
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->redundantOpCount:I

    .line 441
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REMOVE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 442
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 444
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    :cond_5
    monitor-exit p0

    return-object v2

    .line 452
    :cond_6
    :try_start_3
    iget v3, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->valueCount:I

    new-array v6, v3, [Ljava/io/FileInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x0

    .line 454
    :goto_2
    :try_start_4
    iget v4, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->valueCount:I

    if-ge v3, v4, :cond_7

    .line 455
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v1, v3}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v6, v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 469
    :cond_7
    :try_start_5
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->redundantOpCount:I

    .line 470
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "READ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 471
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalRebuildRequired()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 472
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 475
    :cond_8
    new-instance v9, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Snapshot;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1300(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Snapshot;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v9

    .line 459
    :catch_0
    :goto_3
    :try_start_6
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->valueCount:I

    if-ge v8, v0, :cond_9

    .line 460
    aget-object v0, v6, v8

    if-eqz v0, :cond_9

    .line 461
    aget-object v0, v6, v8

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 466
    :cond_9
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .line 605
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 606
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_4

    if-lez p2, :cond_3

    .line 188
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 195
    invoke-static {v0, v1, v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 200
    :cond_1
    :goto_0
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    .line 201
    iget-object v1, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    :try_start_0
    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->readJournal()V

    .line 204
    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->processJournal()V

    .line 205
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v2, v1}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->delete()V

    .line 219
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 220
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    .line 221
    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->rebuildJournal()V

    return-object v0

    .line 184
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 315
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;

    .line 317
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 318
    :goto_1
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->valueCount:I

    if-ge v3, v2, :cond_0

    .line 319
    iget-wide v4, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->size:J

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->size:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 322
    invoke-static {v1, v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$702(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    .line 323
    :goto_2
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->valueCount:I

    if-ge v3, v2, :cond_2

    .line 324
    invoke-virtual {v1, v3}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 325
    invoke-virtual {v1, v3}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 327
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1017
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x400

    .line 1018
    :try_start_1
    new-array v0, v0, [C

    .line 1020
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 1021
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 1023
    :cond_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1025
    invoke-static {p0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1026
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 1025
    :goto_1
    invoke-static {p0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1026
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private readJournal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    const/4 v1, 0x0

    .line 228
    :try_start_0
    new-instance v2, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$StrictLineReader;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, p0, v3}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$StrictLineReader;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 229
    :try_start_1
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 234
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    .line 235
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->appVersion:I

    .line 236
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->valueCount:I

    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    .line 238
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 246
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :catch_0
    :try_start_3
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->redundantOpCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 254
    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 239
    :cond_0
    :try_start_4
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 254
    :goto_1
    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    add-int/lit8 v4, v1, 0x1

    .line 265
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 268
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    .line 269
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 270
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 274
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 277
    :cond_1
    iget-object v5, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 279
    new-instance v5, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;

    invoke-direct {v5, p0, v4, v6}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$1;)V

    .line 280
    iget-object v7, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v7, "CLEAN"

    .line 283
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    .line 284
    invoke-static {v5, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$602(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;Z)Z

    .line 285
    invoke-static {v5, v6}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$702(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    add-int/2addr v0, v1

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 287
    array-length v3, v0

    if-lez v3, :cond_6

    const/4 v3, 0x0

    .line 289
    :try_start_0
    aget-object v4, v0, v3

    const-string v6, "t_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    aget-object v3, v0, v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$802(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;J)J

    .line 291
    invoke-static {v5, v0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$900(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-wide v6, 0x7fffffffffffffffL

    .line 293
    invoke-static {v5, v6, v7}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$802(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;J)J

    .line 294
    invoke-static {v5, v0, v3}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$900(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-ne v0, v3, :cond_5

    if-ne v1, v4, :cond_5

    const-string v4, "DIRTY"

    .line 300
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 301
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    invoke-direct {p1, p0, v5, v6}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;-><init>(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$1;)V

    invoke-static {v5, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$702(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    goto :goto_0

    :cond_5
    if-ne v0, v3, :cond_7

    const/4 v0, 0x4

    if-ne v1, v0, :cond_7

    const-string v0, "READ"

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_0
    return-void

    .line 305
    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    const/4 v0, 0x0

    .line 343
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "libcore.io.DiskLruCache"

    .line 345
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 346
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "1"

    .line 347
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 348
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 349
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 350
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 351
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->valueCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 352
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 353
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;

    .line 356
    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    .line 357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1200(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1200(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " t_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$800(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 363
    :cond_2
    :try_start_3
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 366
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFileBackup:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 370
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 372
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v1, "US-ASCII"

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 374
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 363
    :goto_1
    :try_start_4
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private declared-synchronized removeByDiskKey(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 621
    :try_start_0
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->checkNotClosed()V

    .line 622
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 624
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 628
    :cond_0
    :goto_0
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->valueCount:I

    if-ge v1, v2, :cond_3

    .line 629
    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 630
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 631
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 633
    :cond_2
    :goto_1
    iget-wide v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->size:J

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->size:J

    .line 634
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    :cond_3
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->redundantOpCount:I

    .line 638
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 639
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 642
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    :cond_4
    monitor-exit p0

    return v1

    .line 625
    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 384
    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 386
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 387
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    :goto_0
    iget-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->size:J

    iget-wide v2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->maxSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 690
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 691
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    .line 706
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 708
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 676
    monitor-exit p0

    return-void

    .line 678
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;

    .line 679
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 680
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;->abort()V

    goto :goto_0

    .line 683
    :cond_2
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->trimToSize()V

    .line 684
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 685
    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    invoke-static {p0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 702
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 484
    invoke-direct {p0, p1, v0, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 665
    :try_start_0
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->checkNotClosed()V

    .line 666
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->trimToSize()V

    .line 667
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Snapshot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 410
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->getByDiskKey(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Snapshot;

    move-result-object p1

    return-object p1
.end method

.method public getCacheFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 405
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->directory:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public getDiskCacheFileNameGenerator()Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    return-object v0
.end method

.method public declared-synchronized getExpiryTimestamp(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->checkNotClosed()V

    .line 394
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 397
    monitor-exit p0

    return-wide v0

    .line 399
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;->access$800(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$Entry;)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 523
    :try_start_0
    iget-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    .line 652
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 611
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setDiskCacheFileNameGenerator(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1234
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->diskCacheFileNameGenerator:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;

    :cond_0
    return-void
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 0

    monitor-enter p0

    .line 531
    :try_start_0
    iput-wide p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->maxSize:J

    .line 532
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 541
    :try_start_0
    iget-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
