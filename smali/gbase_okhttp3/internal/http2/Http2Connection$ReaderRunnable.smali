.class Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Lgbase_okhttp3/internal/NamedRunnable;
.source "Http2Connection.java"

# interfaces
.implements Lgbase_okhttp3/internal/http2/Http2Reader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReaderRunnable"
.end annotation


# instance fields
.field final reader:Lgbase_okhttp3/internal/http2/Http2Reader;

.field final synthetic this$0:Lgbase_okhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lgbase_okhttp3/internal/http2/Http2Connection;Lgbase_okhttp3/internal/http2/Http2Reader;)V
    .locals 2

    .line 557
    iput-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    const/4 v0, 0x1

    .line 558
    new-array v0, v0, [Ljava/lang/Object;

    iget-object p1, p1, Lgbase_okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lgbase_okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    iput-object p2, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lgbase_okhttp3/internal/http2/Http2Reader;

    return-void
.end method

.method private applyAndAckSettings(Lgbase_okhttp3/internal/http2/Settings;)V
    .locals 5

    .line 694
    sget-object v0, Lgbase_okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-object v3, v3, Lgbase_okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "OkHttp %s ACK Settings"

    invoke-direct {v1, p0, v3, v2, p1}, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lgbase_okhttp3/internal/http2/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    return-void
.end method

.method public alternateService(ILjava/lang/String;Lgbase_okio/ByteString;Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method public data(ZILgbase_okio/BufferedSource;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lgbase_okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3, p4, p1}, Lgbase_okhttp3/internal/http2/Http2Connection;->pushDataLater(ILgbase_okio/BufferedSource;IZ)V

    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lgbase_okhttp3/internal/http2/Http2Connection;->getStream(I)Lgbase_okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 591
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    sget-object v0, Lgbase_okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lgbase_okhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2, v0}, Lgbase_okhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILgbase_okhttp3/internal/http2/ErrorCode;)V

    int-to-long p1, p4

    .line 592
    invoke-interface {p3, p1, p2}, Lgbase_okio/BufferedSource;->skip(J)V

    return-void

    .line 595
    :cond_1
    invoke-virtual {v0, p3, p4}, Lgbase_okhttp3/internal/http2/Http2Stream;->receiveData(Lgbase_okio/BufferedSource;I)V

    if-eqz p1, :cond_2

    .line 597
    invoke-virtual {v0}, Lgbase_okhttp3/internal/http2/Http2Stream;->receiveFin()V

    :cond_2
    return-void
.end method

.method protected execute()V
    .locals 4

    .line 563
    sget-object v0, Lgbase_okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lgbase_okhttp3/internal/http2/ErrorCode;

    .line 564
    sget-object v1, Lgbase_okhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lgbase_okhttp3/internal/http2/ErrorCode;

    .line 566
    :try_start_0
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lgbase_okhttp3/internal/http2/Http2Reader;

    invoke-virtual {v2, p0}, Lgbase_okhttp3/internal/http2/Http2Reader;->readConnectionPreface(Lgbase_okhttp3/internal/http2/Http2Reader$Handler;)V

    .line 567
    :goto_0
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lgbase_okhttp3/internal/http2/Http2Reader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lgbase_okhttp3/internal/http2/Http2Reader;->nextFrame(ZLgbase_okhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    sget-object v0, Lgbase_okhttp3/internal/http2/ErrorCode;->NO_ERROR:Lgbase_okhttp3/internal/http2/ErrorCode;

    .line 570
    sget-object v1, Lgbase_okhttp3/internal/http2/ErrorCode;->CANCEL:Lgbase_okhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :try_start_1
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 572
    :catch_0
    :try_start_2
    sget-object v0, Lgbase_okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lgbase_okhttp3/internal/http2/ErrorCode;

    .line 573
    sget-object v1, Lgbase_okhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lgbase_okhttp3/internal/http2/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    :try_start_3
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    :goto_1
    invoke-virtual {v2, v0, v1}, Lgbase_okhttp3/internal/http2/Http2Connection;->close(Lgbase_okhttp3/internal/http2/ErrorCode;Lgbase_okhttp3/internal/http2/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 579
    :catch_1
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lgbase_okhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    .line 576
    :goto_2
    :try_start_4
    iget-object v3, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v0, v1}, Lgbase_okhttp3/internal/http2/Http2Connection;->close(Lgbase_okhttp3/internal/http2/ErrorCode;Lgbase_okhttp3/internal/http2/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 579
    :catch_2
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->reader:Lgbase_okhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Lgbase_okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public goAway(ILgbase_okhttp3/internal/http2/ErrorCode;Lgbase_okio/ByteString;)V
    .locals 3

    .line 721
    invoke-virtual {p3}, Lgbase_okio/ByteString;->size()I

    .line 726
    iget-object p2, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    monitor-enter p2

    .line 727
    :try_start_0
    iget-object p3, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-object p3, p3, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lgbase_okhttp3/internal/http2/Http2Stream;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lgbase_okhttp3/internal/http2/Http2Stream;

    .line 728
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgbase_okhttp3/internal/http2/Http2Connection;->shutdown:Z

    .line 729
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 733
    invoke-virtual {v1}, Lgbase_okhttp3/internal/http2/Http2Stream;->getId()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lgbase_okhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 734
    sget-object v2, Lgbase_okhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lgbase_okhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lgbase_okhttp3/internal/http2/Http2Stream;->receiveRstStream(Lgbase_okhttp3/internal/http2/ErrorCode;)V

    .line 735
    iget-object v2, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lgbase_okhttp3/internal/http2/Http2Stream;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Lgbase_okhttp3/internal/http2/Http2Connection;->removeStream(I)Lgbase_okhttp3/internal/http2/Http2Stream;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 729
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public headers(ZIILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lgbase_okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 603
    iget-object p3, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p3, p2}, Lgbase_okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 604
    iget-object p3, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p3, p2, p4, p1}, Lgbase_okhttp3/internal/http2/Http2Connection;->pushHeadersLater(ILjava/util/List;Z)V

    return-void

    .line 608
    :cond_0
    iget-object p3, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    monitor-enter p3

    .line 610
    :try_start_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-boolean v0, v0, Lgbase_okhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v0, :cond_1

    monitor-exit p3

    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lgbase_okhttp3/internal/http2/Http2Connection;->getStream(I)Lgbase_okhttp3/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_4

    .line 616
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget v0, v0, Lgbase_okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    if-gt p2, v0, :cond_2

    monitor-exit p3

    return-void

    .line 619
    :cond_2
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget v1, v1, Lgbase_okhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    monitor-exit p3

    return-void

    .line 622
    :cond_3
    new-instance v0, Lgbase_okhttp3/internal/http2/Http2Stream;

    iget-object v5, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    const/4 v6, 0x0

    move-object v3, v0

    move v4, p2

    move v7, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lgbase_okhttp3/internal/http2/Http2Stream;-><init>(ILgbase_okhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    .line 624
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iput p2, p1, Lgbase_okhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 625
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object p1, Lgbase_okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance p4, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;

    const-string v1, "OkHttp %s stream %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lgbase_okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {p4, p0, v1, v2, v0}, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lgbase_okhttp3/internal/http2/Http2Stream;)V

    invoke-interface {p1, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 639
    monitor-exit p3

    return-void

    .line 641
    :cond_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-virtual {v0, p4}, Lgbase_okhttp3/internal/http2/Http2Stream;->receiveHeaders(Ljava/util/List;)V

    if-eqz p1, :cond_5

    .line 645
    invoke-virtual {v0}, Lgbase_okhttp3/internal/http2/Http2Stream;->receiveFin()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 641
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ping(ZII)V
    .locals 2

    if-eqz p1, :cond_0

    .line 710
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1, p2}, Lgbase_okhttp3/internal/http2/Http2Connection;->removePing(I)Lgbase_okhttp3/internal/http2/Ping;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 712
    invoke-virtual {p1}, Lgbase_okhttp3/internal/http2/Ping;->receive()V

    goto :goto_0

    .line 716
    :cond_0
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Lgbase_okhttp3/internal/http2/Http2Connection;->writePingLater(ZIILgbase_okhttp3/internal/http2/Ping;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public priority(IIIZ)V
    .locals 0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lgbase_okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 763
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1, p2, p3}, Lgbase_okhttp3/internal/http2/Http2Connection;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method public rstStream(ILgbase_okhttp3/internal/http2/ErrorCode;)V
    .locals 1

    .line 649
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/internal/http2/Http2Connection;->pushedStream(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lgbase_okhttp3/internal/http2/Http2Connection;->pushResetLater(ILgbase_okhttp3/internal/http2/ErrorCode;)V

    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/internal/http2/Http2Connection;->removeStream(I)Lgbase_okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 655
    invoke-virtual {p1, p2}, Lgbase_okhttp3/internal/http2/Http2Stream;->receiveRstStream(Lgbase_okhttp3/internal/http2/ErrorCode;)V

    :cond_1
    return-void
.end method

.method public settings(ZLgbase_okhttp3/internal/http2/Settings;)V
    .locals 10

    .line 662
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 663
    :try_start_0
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lgbase_okhttp3/internal/http2/Http2Connection;->peerSettings:Lgbase_okhttp3/internal/http2/Settings;

    invoke-virtual {v1}, Lgbase_okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v1

    if-eqz p1, :cond_0

    .line 664
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lgbase_okhttp3/internal/http2/Http2Connection;->peerSettings:Lgbase_okhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/http2/Settings;->clear()V

    .line 665
    :cond_0
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lgbase_okhttp3/internal/http2/Http2Connection;->peerSettings:Lgbase_okhttp3/internal/http2/Settings;

    invoke-virtual {p1, p2}, Lgbase_okhttp3/internal/http2/Settings;->merge(Lgbase_okhttp3/internal/http2/Settings;)V

    .line 666
    invoke-direct {p0, p2}, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->applyAndAckSettings(Lgbase_okhttp3/internal/http2/Settings;)V

    .line 667
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lgbase_okhttp3/internal/http2/Http2Connection;->peerSettings:Lgbase_okhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lgbase_okhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_2

    sub-int/2addr p1, v1

    int-to-long p1, p1

    .line 670
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-boolean v1, v1, Lgbase_okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    if-nez v1, :cond_1

    .line 671
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, p2}, Lgbase_okhttp3/internal/http2/Http2Connection;->addBytesToWriteWindow(J)V

    .line 672
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iput-boolean v4, v1, Lgbase_okhttp3/internal/http2/Http2Connection;->receivedInitialPeerSettings:Z

    .line 674
    :cond_1
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 675
    iget-object v1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v5, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-object v5, v5, Lgbase_okhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lgbase_okhttp3/internal/http2/Http2Stream;

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lgbase_okhttp3/internal/http2/Http2Stream;

    goto :goto_0

    :cond_2
    move-wide p1, v2

    .line 678
    :cond_3
    :goto_0
    sget-object v1, Lgbase_okhttp3/internal/http2/Http2Connection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;

    const-string v7, "OkHttp %s settings"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lgbase_okhttp3/internal/http2/Http2Connection;->hostname:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    invoke-direct {v6, p0, v7, v4}, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 683
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_4

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    .line 685
    array-length v0, v5

    :goto_1
    if-ge v9, v0, :cond_4

    aget-object v1, v5, v9

    .line 686
    monitor-enter v1

    .line 687
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lgbase_okhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 688
    monitor-exit v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 683
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public windowUpdate(IJ)V
    .locals 3

    if-nez p1, :cond_0

    .line 742
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 743
    :try_start_0
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    iget-wide v1, p1, Lgbase_okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    add-long/2addr v1, p2

    iput-wide v1, p1, Lgbase_okhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 744
    iget-object p1, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 745
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 747
    :cond_0
    iget-object v0, p0, Lgbase_okhttp3/internal/http2/Http2Connection$ReaderRunnable;->this$0:Lgbase_okhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lgbase_okhttp3/internal/http2/Http2Connection;->getStream(I)Lgbase_okhttp3/internal/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 749
    monitor-enter p1

    .line 750
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lgbase_okhttp3/internal/http2/Http2Stream;->addBytesToWriteWindow(J)V

    .line 751
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method
