.class public final Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final diskKey:Ljava/lang/String;

.field private final ins:[Ljava/io/FileInputStream;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;


# direct methods
.method private constructor <init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;->diskKey:Ljava/lang/String;

    .line 733
    iput-wide p3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;->sequenceNumber:J

    .line 734
    iput-object p5, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;->ins:[Ljava/io/FileInputStream;

    .line 735
    iput-object p6, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;)V
    .locals 0

    .line 725
    invoke-direct/range {p0 .. p6}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;-><init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 770
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;->ins:[Ljava/io/FileInputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 771
    invoke-static {v3}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public edit()Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;->diskKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$1700(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/lang/String;J)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/FileInputStream;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;->ins:[Ljava/io/FileInputStream;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getLength(I)J
    .locals 3

    .line 765
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;->lengths:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$1800(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
