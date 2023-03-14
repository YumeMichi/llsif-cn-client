.class public final Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;,
        Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;,
        Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;,
        Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:C = 'C'

.field private static final DELETE:C = 'D'

.field private static final EXPIRY_PREFIX:C = 't'

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:C = 'R'

.field private static final UPDATE:C = 'U'

.field static final VERSION:Ljava/lang/String; = "1"


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

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private fileNameGenerator:Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;",
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

    .line 776
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$2;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$2;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 121
    iput-wide v2, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->size:J

    .line 123
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 132
    iput-wide v2, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->nextSequenceNumber:J

    .line 137
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 139
    new-instance v2, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;

    invoke-direct {v2, p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;-><init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)V

    iput-object v2, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 1198
    new-instance v2, Lcom/gbase/gameplus/upgradeutil/cache/MD5FileNameGenerator;

    invoke-direct {v2}, Lcom/gbase/gameplus/upgradeutil/cache/MD5FileNameGenerator;-><init>()V

    iput-object v2, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->fileNameGenerator:Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;

    .line 156
    iput-object v1, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->directory:Ljava/io/File;

    move/from16 v2, p2

    .line 157
    iput v2, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->appVersion:I

    .line 158
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFile:Ljava/io/File;

    .line 159
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    .line 160
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    move/from16 v1, p3

    .line 161
    iput v1, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->valueCount:I

    move-wide/from16 v1, p4

    .line 162
    iput-wide v1, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->maxSize:J

    return-void
.end method

.method static synthetic access$000(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)Ljava/io/Writer;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1700(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/lang/String;J)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

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

    .line 61
    invoke-static {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->valueCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)Ljava/io/File;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2100()Ljava/io/OutputStream;
    .locals 1

    .line 61
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->completeEdit(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized completeEdit(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 559
    :try_start_0
    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->access$1500(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    move-result-object v0

    .line 560
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 565
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$600(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 566
    :goto_0
    iget v3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 567
    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->access$1600(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 571
    invoke-virtual {v0, v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 572
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 568
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->abort()V

    .line 569
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

    .line 578
    :cond_2
    :goto_1
    iget p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->valueCount:I

    if-ge v1, p1, :cond_5

    .line 579
    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 581
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 582
    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 583
    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 584
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    .line 585
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 586
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    .line 587
    iget-wide v7, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->size:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->size:J

    goto :goto_2

    .line 590
    :cond_3
    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 594
    :cond_5
    iget p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->redundantOpCount:I

    const/4 p1, 0x0

    .line 595
    invoke-static {v0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$702(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    .line 596
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$600(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_6

    .line 597
    invoke-static {v0, v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$602(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;Z)Z

    .line 598
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1200(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x74

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$800(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 600
    iget-wide p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->nextSequenceNumber:J

    invoke-static {v0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1302(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;J)J

    goto :goto_3

    .line 603
    :cond_6
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1200(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1200(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 606
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 608
    iget-wide p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->size:J

    iget-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->maxSize:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_8

    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 609
    :cond_8
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    :cond_9
    monitor-exit p0

    return-void

    .line 561
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

    .line 1041
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1045
    array-length p0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    aget-object v2, v0, v1

    .line 1046
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1047
    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->deleteContents(Ljava/io/File;)V

    .line 1049
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1050
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

    .line 1043
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

    .line 385
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized editByDiskKey(Ljava/lang/String;J)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 503
    :try_start_0
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->checkNotClosed()V

    .line 504
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 506
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1300(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 507
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    .line 510
    :try_start_1
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    invoke-direct {v0, p0, p1, v3}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;-><init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;)V

    .line 511
    iget-object p2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 512
    :cond_2
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 513
    monitor-exit p0

    return-object v3

    .line 516
    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    invoke-direct {p2, p0, v0, v3}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;-><init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;)V

    .line 517
    invoke-static {v0, p2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$702(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    .line 520
    iget-object p3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "U "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getByDiskKey(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 435
    :try_start_0
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->checkNotClosed()V

    .line 436
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 438
    monitor-exit p0

    return-object v2

    .line 441
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$600(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 442
    monitor-exit p0

    return-object v2

    .line 446
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$800(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v7, 0xa

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-gez v9, :cond_6

    .line 447
    :goto_0
    iget v3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->valueCount:I

    if-ge v8, v3, :cond_4

    .line 448
    invoke-virtual {v1, v8}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 449
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 450
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

    .line 452
    :cond_3
    :goto_1
    iget-wide v3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->size:J

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)[J

    move-result-object v5

    aget-wide v9, v5, v8

    sub-long/2addr v3, v9

    iput-wide v3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->size:J

    .line 453
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 455
    :cond_4
    iget v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->redundantOpCount:I

    .line 456
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "D "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 457
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 459
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    :cond_5
    monitor-exit p0

    return-object v2

    .line 467
    :cond_6
    :try_start_3
    iget v3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->valueCount:I

    new-array v6, v3, [Ljava/io/FileInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x0

    .line 469
    :goto_2
    :try_start_4
    iget v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->valueCount:I

    if-ge v3, v4, :cond_7

    .line 470
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v1, v3}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v6, v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 484
    :cond_7
    :try_start_5
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->redundantOpCount:I

    .line 485
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "R "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 486
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 487
    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 490
    :cond_8
    new-instance v9, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1300(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;-><init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v9

    .line 474
    :catch_0
    :goto_3
    :try_start_6
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->valueCount:I

    if-ge v8, v0, :cond_9

    .line 475
    aget-object v0, v6, v8

    if-eqz v0, :cond_9

    .line 476
    aget-object v0, v6, v8

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 481
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

    .line 719
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .line 619
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 620
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

.method public static open(Ljava/io/File;IIJ)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_6

    if-lez p2, :cond_5

    .line 184
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 191
    invoke-static {v0, v1, v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 196
    :cond_1
    :goto_0
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    .line 197
    iget-object v1, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    :try_start_0
    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->readJournal()V

    .line 200
    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->processJournal()V

    .line 201
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-static {v2, v1}, Lcom/gbase/gameplus/upgradeutil/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    invoke-virtual {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->delete()V

    .line 215
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 216
    :cond_3
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    .line 217
    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->rebuildJournal()V

    :cond_4
    return-object v0

    .line 180
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_6
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

    .line 322
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 323
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    .line 325
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 326
    :goto_1
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->valueCount:I

    if-ge v3, v2, :cond_0

    .line 327
    iget-wide v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->size:J

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->size:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 330
    invoke-static {v1, v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$702(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    .line 331
    :goto_2
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->valueCount:I

    if-ge v3, v2, :cond_2

    .line 332
    invoke-virtual {v1, v3}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 333
    invoke-virtual {v1, v3}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 335
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

    .line 1023
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x400

    .line 1024
    :try_start_1
    new-array v0, v0, [C

    .line 1026
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 1027
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    .line 1029
    :cond_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1031
    invoke-static {p0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1032
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

    .line 1031
    :goto_1
    invoke-static {p0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1032
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

    .line 225
    :try_start_0
    new-instance v2, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, p0, v3}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;-><init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    :try_start_1
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 230
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 231
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    .line 232
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->appVersion:I

    .line 233
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->valueCount:I

    .line 234
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    .line 235
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 243
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    :catch_0
    :try_start_3
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->redundantOpCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 236
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

    .line 251
    :goto_1
    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    const/4 v4, 0x0

    .line 259
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v1, v3

    .line 265
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    .line 268
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x44

    if-ne v5, v6, :cond_1

    .line 270
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 274
    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 277
    :cond_1
    iget-object v6, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 279
    new-instance v6, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    invoke-direct {v6, p0, v1, v7}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;-><init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/lang/String;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;)V

    .line 280
    iget-object v8, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 v1, 0x43

    if-eq v5, v1, :cond_4

    const/16 v0, 0x52

    if-eq v5, v0, :cond_6

    const/16 v0, 0x55

    if-ne v5, v0, :cond_3

    .line 304
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    invoke-direct {p1, p0, v6, v7}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;-><init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;)V

    invoke-static {v6, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$702(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    goto :goto_0

    .line 312
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_4
    invoke-static {v6, v3}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$602(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;Z)Z

    .line 286
    invoke-static {v6, v7}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$702(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    add-int/2addr v0, v3

    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 288
    array-length v1, v0

    if-lez v1, :cond_6

    .line 290
    :try_start_0
    aget-object v1, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x74

    if-ne v1, v5, :cond_5

    .line 291
    aget-object v1, v0, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$802(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;J)J

    .line 292
    invoke-static {v6, v0, v3}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$900(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const-wide v7, 0x7fffffffffffffffL

    .line 294
    invoke-static {v6, v7, v8}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$802(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;J)J

    .line 295
    invoke-static {v6, v0, v4}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$900(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
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

    :cond_6
    :goto_0
    return-void

    .line 261
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
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    const/4 v0, 0x0

    .line 351
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "libcore.io.DiskLruCache"

    .line 353
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 354
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "1"

    .line 355
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 356
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 358
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->valueCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 360
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    .line 361
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    check-cast v2, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    .line 364
    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "U "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1200(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1200(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x74

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$800(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 371
    :cond_2
    :try_start_3
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 374
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 378
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 380
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v1, "US-ASCII"

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 382
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

    .line 371
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

    .line 635
    :try_start_0
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->checkNotClosed()V

    .line 636
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 637
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 641
    :cond_0
    :goto_0
    iget v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->valueCount:I

    if-ge v1, v2, :cond_3

    .line 642
    invoke-virtual {v0, v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 643
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 644
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

    .line 646
    :cond_2
    :goto_1
    iget-wide v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->size:J

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->size:J

    .line 647
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1100(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 650
    :cond_3
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->redundantOpCount:I

    .line 651
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "D "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 652
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 655
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    :cond_4
    monitor-exit p0

    return v1

    .line 638
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

    .line 392
    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 395
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

    .line 702
    :goto_0
    iget-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->size:J

    iget-wide v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->maxSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 703
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 704
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
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

    .line 688
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 689
    monitor-exit p0

    return-void

    .line 691
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    check-cast v1, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    .line 692
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 693
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->abort()V

    goto :goto_0

    .line 696
    :cond_2
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->trimToSize()V

    .line 697
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    .line 698
    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
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

    .line 714
    invoke-static {p0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 715
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->fileNameGenerator:Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    .line 499
    invoke-direct {p0, p1, v0, v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

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

    .line 678
    :try_start_0
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->checkNotClosed()V

    .line 679
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->trimToSize()V

    .line 680
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->fileNameGenerator:Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->getByDiskKey(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;

    move-result-object p1

    return-object p1
.end method

.method public getCacheFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->fileNameGenerator:Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->directory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v1

    .line 417
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->directory:Ljava/io/File;

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

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->fileNameGenerator:Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-direct {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->checkNotClosed()V

    .line 402
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 404
    monitor-exit p0

    return-wide v0

    .line 406
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$800(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)J

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

.method public getFileNameGenerator()Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->fileNameGenerator:Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    monitor-enter p0

    .line 537
    :try_start_0
    iget-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->maxSize:J
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

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->journalWriter:Ljava/io/Writer;
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

    .line 624
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->fileNameGenerator:Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 625
    invoke-direct {p0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setFileNameGenerator(Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1206
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->fileNameGenerator:Lcom/gbase/gameplus/upgradeutil/cache/FileNameGenerator;

    :cond_0
    return-void
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 0

    monitor-enter p0

    .line 545
    :try_start_0
    iput-wide p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->maxSize:J

    .line 546
    iget-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
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

    .line 555
    :try_start_0
    iget-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
