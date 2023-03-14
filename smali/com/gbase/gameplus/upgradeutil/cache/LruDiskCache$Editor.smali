.class public final Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;
.super Ljava/lang/Object;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->entry:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    .line 794
    invoke-static {p2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$600(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$1900(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->written:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;)V
    .locals 0

    .line 786
    invoke-direct {p0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;-><init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;
    .locals 0

    .line 786
    iget-object p0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->entry:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;)[Z
    .locals 0

    .line 786
    iget-object p0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->written:[Z

    return-object p0
.end method

.method static synthetic access$2502(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;Z)Z
    .locals 0

    .line 786
    iput-boolean p1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$2300(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;Z)V

    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .line 899
    iget-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->committed:Z

    if-nez v0, :cond_0

    .line 901
    :try_start_0
    invoke-virtual {p0}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 881
    iget-boolean v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->hasErrors:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$2300(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;Z)V

    .line 883
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    iget-object v2, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->entry:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    invoke-static {v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$1200(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$2400(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Ljava/lang/String;)Z

    goto :goto_0

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    invoke-static {v0, p0, v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$2300(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;Z)V

    .line 887
    :goto_0
    iput-boolean v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->committed:Z

    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 827
    invoke-static {p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$1800(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    monitor-enter v0

    .line 807
    :try_start_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->entry:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 810
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->entry:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$600(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 811
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 814
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->entry:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    invoke-virtual {v3, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 816
    :catch_0
    monitor-exit v0

    return-object v2

    .line 808
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 818
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    monitor-enter v0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->entry:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$700(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 842
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->entry:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$600(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 843
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 845
    :cond_0
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->entry:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    invoke-virtual {v1, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 851
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->this$0:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;

    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$2000(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 853
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 859
    :goto_0
    :try_start_4
    new-instance p1, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor$FaultHidingOutputStream;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;Ljava/io/OutputStream;Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$1;)V

    monitor-exit v0

    return-object p1

    .line 856
    :catch_1
    invoke-static {}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache;->access$2100()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 840
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 860
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public set(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 869
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 870
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 872
    invoke-static {v1}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/gbase/gameplus/upgradeutil/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public setEntryExpiryTimestamp(J)V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Editor;->entry:Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;

    invoke-static {v0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;->access$802(Lcom/gbase/gameplus/upgradeutil/cache/LruDiskCache$Entry;J)J

    return-void
.end method
