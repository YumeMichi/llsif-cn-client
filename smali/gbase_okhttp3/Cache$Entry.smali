.class final Lgbase_okhttp3/Cache$Entry;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbase_okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private final code:I

.field private final handshake:Lgbase_okhttp3/Handshake;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final protocol:Lgbase_okhttp3/Protocol;

.field private final receivedResponseMillis:J

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Lgbase_okhttp3/Headers;

.field private final sentRequestMillis:J

.field private final url:Ljava/lang/String;

.field private final varyHeaders:Lgbase_okhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lgbase_okhttp3/internal/platform/Platform;->get()Lgbase_okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lgbase_okhttp3/internal/platform/Platform;->get()Lgbase_okhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/internal/platform/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbase_okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lgbase_okhttp3/Response;)V
    .locals 2

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->request()Lgbase_okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 597
    invoke-static {p1}, Lgbase_okhttp3/internal/http/HttpHeaders;->varyHeaders(Lgbase_okhttp3/Response;)Lgbase_okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/Cache$Entry;->varyHeaders:Lgbase_okhttp3/Headers;

    .line 598
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->request()Lgbase_okhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 599
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->protocol()Lgbase_okhttp3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/Cache$Entry;->protocol:Lgbase_okhttp3/Protocol;

    .line 600
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lgbase_okhttp3/Cache$Entry;->code:I

    .line 601
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 602
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->headers()Lgbase_okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/Cache$Entry;->responseHeaders:Lgbase_okhttp3/Headers;

    .line 603
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->handshake()Lgbase_okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/Cache$Entry;->handshake:Lgbase_okhttp3/Handshake;

    .line 604
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgbase_okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 605
    invoke-virtual {p1}, Lgbase_okhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgbase_okhttp3/Cache$Entry;->receivedResponseMillis:J

    return-void
.end method

.method constructor <init>(Lgbase_okio/Source;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    :try_start_0
    invoke-static {p1}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Source;)Lgbase_okio/BufferedSource;

    move-result-object v0

    .line 544
    invoke-interface {v0}, Lgbase_okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbase_okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 545
    invoke-interface {v0}, Lgbase_okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lgbase_okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 546
    new-instance v1, Lgbase_okhttp3/Headers$Builder;

    invoke-direct {v1}, Lgbase_okhttp3/Headers$Builder;-><init>()V

    .line 547
    invoke-static {v0}, Lgbase_okhttp3/Cache;->readInt(Lgbase_okio/BufferedSource;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 549
    invoke-interface {v0}, Lgbase_okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lgbase_okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lgbase_okhttp3/Headers$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {v1}, Lgbase_okhttp3/Headers$Builder;->build()Lgbase_okhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lgbase_okhttp3/Cache$Entry;->varyHeaders:Lgbase_okhttp3/Headers;

    .line 553
    invoke-interface {v0}, Lgbase_okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgbase_okhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lgbase_okhttp3/internal/http/StatusLine;

    move-result-object v1

    .line 554
    iget-object v2, v1, Lgbase_okhttp3/internal/http/StatusLine;->protocol:Lgbase_okhttp3/Protocol;

    iput-object v2, p0, Lgbase_okhttp3/Cache$Entry;->protocol:Lgbase_okhttp3/Protocol;

    .line 555
    iget v2, v1, Lgbase_okhttp3/internal/http/StatusLine;->code:I

    iput v2, p0, Lgbase_okhttp3/Cache$Entry;->code:I

    .line 556
    iget-object v1, v1, Lgbase_okhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    iput-object v1, p0, Lgbase_okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 557
    new-instance v1, Lgbase_okhttp3/Headers$Builder;

    invoke-direct {v1}, Lgbase_okhttp3/Headers$Builder;-><init>()V

    .line 558
    invoke-static {v0}, Lgbase_okhttp3/Cache;->readInt(Lgbase_okio/BufferedSource;)I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_1

    .line 560
    invoke-interface {v0}, Lgbase_okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lgbase_okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lgbase_okhttp3/Headers$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 562
    :cond_1
    sget-object v2, Lgbase_okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgbase_okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 563
    sget-object v3, Lgbase_okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lgbase_okhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 564
    sget-object v4, Lgbase_okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lgbase_okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lgbase_okhttp3/Headers$Builder;

    .line 565
    sget-object v4, Lgbase_okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lgbase_okhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lgbase_okhttp3/Headers$Builder;

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_2

    .line 567
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    iput-wide v6, p0, Lgbase_okhttp3/Cache$Entry;->sentRequestMillis:J

    if-eqz v3, :cond_3

    .line 570
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_3
    iput-wide v4, p0, Lgbase_okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 572
    invoke-virtual {v1}, Lgbase_okhttp3/Headers$Builder;->build()Lgbase_okhttp3/Headers;

    move-result-object v1

    iput-object v1, p0, Lgbase_okhttp3/Cache$Entry;->responseHeaders:Lgbase_okhttp3/Headers;

    .line 574
    invoke-direct {p0}, Lgbase_okhttp3/Cache$Entry;->isHttps()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 575
    invoke-interface {v0}, Lgbase_okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 579
    invoke-interface {v0}, Lgbase_okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-static {v1}, Lgbase_okhttp3/CipherSuite;->forJavaName(Ljava/lang/String;)Lgbase_okhttp3/CipherSuite;

    move-result-object v1

    .line 581
    invoke-direct {p0, v0}, Lgbase_okhttp3/Cache$Entry;->readCertificateList(Lgbase_okio/BufferedSource;)Ljava/util/List;

    move-result-object v2

    .line 582
    invoke-direct {p0, v0}, Lgbase_okhttp3/Cache$Entry;->readCertificateList(Lgbase_okio/BufferedSource;)Ljava/util/List;

    move-result-object v3

    .line 583
    invoke-interface {v0}, Lgbase_okio/BufferedSource;->exhausted()Z

    move-result v4

    if-nez v4, :cond_4

    .line 584
    invoke-interface {v0}, Lgbase_okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgbase_okhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lgbase_okhttp3/TlsVersion;

    move-result-object v0

    goto :goto_3

    :cond_4
    sget-object v0, Lgbase_okhttp3/TlsVersion;->SSL_3_0:Lgbase_okhttp3/TlsVersion;

    .line 586
    :goto_3
    invoke-static {v0, v1, v2, v3}, Lgbase_okhttp3/Handshake;->get(Lgbase_okhttp3/TlsVersion;Lgbase_okhttp3/CipherSuite;Ljava/util/List;Ljava/util/List;)Lgbase_okhttp3/Handshake;

    move-result-object v0

    iput-object v0, p0, Lgbase_okhttp3/Cache$Entry;->handshake:Lgbase_okhttp3/Handshake;

    goto :goto_4

    .line 577
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lgbase_okhttp3/Cache$Entry;->handshake:Lgbase_okhttp3/Handshake;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    :goto_4
    invoke-interface {p1}, Lgbase_okio/Source;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lgbase_okio/Source;->close()V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private isHttps()Z
    .locals 2

    .line 655
    iget-object v0, p0, Lgbase_okhttp3/Cache$Entry;->url:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertificateList(Lgbase_okio/BufferedSource;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbase_okio/BufferedSource;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 659
    invoke-static {p1}, Lgbase_okhttp3/Cache;->readInt(Lgbase_okio/BufferedSource;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 660
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 663
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 664
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 666
    invoke-interface {p1}, Lgbase_okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 667
    new-instance v5, Lgbase_okio/Buffer;

    invoke-direct {v5}, Lgbase_okio/Buffer;-><init>()V

    .line 668
    invoke-static {v4}, Lgbase_okio/ByteString;->decodeBase64(Ljava/lang/String;)Lgbase_okio/ByteString;

    move-result-object v4

    invoke-virtual {v5, v4}, Lgbase_okio/Buffer;->write(Lgbase_okio/ByteString;)Lgbase_okio/Buffer;

    .line 669
    invoke-virtual {v5}, Lgbase_okio/Buffer;->inputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 673
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private writeCertList(Lgbase_okio/BufferedSink;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbase_okio/BufferedSink;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lgbase_okio/BufferedSink;->writeDecimalLong(J)Lgbase_okio/BufferedSink;

    move-result-object v0

    const/16 v1, 0xa

    .line 681
    invoke-interface {v0, v1}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    const/4 v0, 0x0

    .line 682
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 683
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 684
    invoke-static {v3}, Lgbase_okio/ByteString;->of([B)Lgbase_okio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lgbase_okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 685
    invoke-interface {p1, v3}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v3

    .line 686
    invoke-interface {v3, v1}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 689
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public matches(Lgbase_okhttp3/Request;Lgbase_okhttp3/Response;)Z
    .locals 2

    .line 694
    iget-object v0, p0, Lgbase_okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lgbase_okhttp3/Request;->url()Lgbase_okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lgbase_okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    .line 695
    invoke-virtual {p1}, Lgbase_okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgbase_okhttp3/Cache$Entry;->varyHeaders:Lgbase_okhttp3/Headers;

    .line 696
    invoke-static {p2, v0, p1}, Lgbase_okhttp3/internal/http/HttpHeaders;->varyMatches(Lgbase_okhttp3/Response;Lgbase_okhttp3/Headers;Lgbase_okhttp3/Request;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public response(Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;)Lgbase_okhttp3/Response;
    .locals 5

    .line 700
    iget-object v0, p0, Lgbase_okhttp3/Cache$Entry;->responseHeaders:Lgbase_okhttp3/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lgbase_okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    iget-object v1, p0, Lgbase_okhttp3/Cache$Entry;->responseHeaders:Lgbase_okhttp3/Headers;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lgbase_okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 702
    new-instance v2, Lgbase_okhttp3/Request$Builder;

    invoke-direct {v2}, Lgbase_okhttp3/Request$Builder;-><init>()V

    iget-object v3, p0, Lgbase_okhttp3/Cache$Entry;->url:Ljava/lang/String;

    .line 703
    invoke-virtual {v2, v3}, Lgbase_okhttp3/Request$Builder;->url(Ljava/lang/String;)Lgbase_okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lgbase_okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    const/4 v4, 0x0

    .line 704
    invoke-virtual {v2, v3, v4}, Lgbase_okhttp3/Request$Builder;->method(Ljava/lang/String;Lgbase_okhttp3/RequestBody;)Lgbase_okhttp3/Request$Builder;

    move-result-object v2

    iget-object v3, p0, Lgbase_okhttp3/Cache$Entry;->varyHeaders:Lgbase_okhttp3/Headers;

    .line 705
    invoke-virtual {v2, v3}, Lgbase_okhttp3/Request$Builder;->headers(Lgbase_okhttp3/Headers;)Lgbase_okhttp3/Request$Builder;

    move-result-object v2

    .line 706
    invoke-virtual {v2}, Lgbase_okhttp3/Request$Builder;->build()Lgbase_okhttp3/Request;

    move-result-object v2

    .line 707
    new-instance v3, Lgbase_okhttp3/Response$Builder;

    invoke-direct {v3}, Lgbase_okhttp3/Response$Builder;-><init>()V

    .line 708
    invoke-virtual {v3, v2}, Lgbase_okhttp3/Response$Builder;->request(Lgbase_okhttp3/Request;)Lgbase_okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lgbase_okhttp3/Cache$Entry;->protocol:Lgbase_okhttp3/Protocol;

    .line 709
    invoke-virtual {v2, v3}, Lgbase_okhttp3/Response$Builder;->protocol(Lgbase_okhttp3/Protocol;)Lgbase_okhttp3/Response$Builder;

    move-result-object v2

    iget v3, p0, Lgbase_okhttp3/Cache$Entry;->code:I

    .line 710
    invoke-virtual {v2, v3}, Lgbase_okhttp3/Response$Builder;->code(I)Lgbase_okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lgbase_okhttp3/Cache$Entry;->message:Ljava/lang/String;

    .line 711
    invoke-virtual {v2, v3}, Lgbase_okhttp3/Response$Builder;->message(Ljava/lang/String;)Lgbase_okhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, p0, Lgbase_okhttp3/Cache$Entry;->responseHeaders:Lgbase_okhttp3/Headers;

    .line 712
    invoke-virtual {v2, v3}, Lgbase_okhttp3/Response$Builder;->headers(Lgbase_okhttp3/Headers;)Lgbase_okhttp3/Response$Builder;

    move-result-object v2

    new-instance v3, Lgbase_okhttp3/Cache$CacheResponseBody;

    invoke-direct {v3, p1, v0, v1}, Lgbase_okhttp3/Cache$CacheResponseBody;-><init>(Lgbase_okhttp3/internal/cache/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-virtual {v2, v3}, Lgbase_okhttp3/Response$Builder;->body(Lgbase_okhttp3/ResponseBody;)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    iget-object v0, p0, Lgbase_okhttp3/Cache$Entry;->handshake:Lgbase_okhttp3/Handshake;

    .line 714
    invoke-virtual {p1, v0}, Lgbase_okhttp3/Response$Builder;->handshake(Lgbase_okhttp3/Handshake;)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Lgbase_okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 715
    invoke-virtual {p1, v0, v1}, Lgbase_okhttp3/Response$Builder;->sentRequestAtMillis(J)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    iget-wide v0, p0, Lgbase_okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 716
    invoke-virtual {p1, v0, v1}, Lgbase_okhttp3/Response$Builder;->receivedResponseAtMillis(J)Lgbase_okhttp3/Response$Builder;

    move-result-object p1

    .line 717
    invoke-virtual {p1}, Lgbase_okhttp3/Response$Builder;->build()Lgbase_okhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Lgbase_okhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 609
    invoke-virtual {p1, v0}, Lgbase_okhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lgbase_okio/Sink;

    move-result-object p1

    invoke-static {p1}, Lgbase_okio/Okio;->buffer(Lgbase_okio/Sink;)Lgbase_okio/BufferedSink;

    move-result-object p1

    .line 611
    iget-object v1, p0, Lgbase_okhttp3/Cache$Entry;->url:Ljava/lang/String;

    invoke-interface {p1, v1}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    .line 612
    invoke-interface {v1, v2}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 613
    iget-object v1, p0, Lgbase_okhttp3/Cache$Entry;->requestMethod:Ljava/lang/String;

    invoke-interface {p1, v1}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v1

    .line 614
    invoke-interface {v1, v2}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 615
    iget-object v1, p0, Lgbase_okhttp3/Cache$Entry;->varyHeaders:Lgbase_okhttp3/Headers;

    invoke-virtual {v1}, Lgbase_okhttp3/Headers;->size()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Lgbase_okio/BufferedSink;->writeDecimalLong(J)Lgbase_okio/BufferedSink;

    move-result-object v1

    .line 616
    invoke-interface {v1, v2}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 617
    iget-object v1, p0, Lgbase_okhttp3/Cache$Entry;->varyHeaders:Lgbase_okhttp3/Headers;

    invoke-virtual {v1}, Lgbase_okhttp3/Headers;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, ": "

    if-ge v3, v1, :cond_0

    .line 618
    iget-object v5, p0, Lgbase_okhttp3/Cache$Entry;->varyHeaders:Lgbase_okhttp3/Headers;

    invoke-virtual {v5, v3}, Lgbase_okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v5

    .line 619
    invoke-interface {v5, v4}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v4

    iget-object v5, p0, Lgbase_okhttp3/Cache$Entry;->varyHeaders:Lgbase_okhttp3/Headers;

    .line 620
    invoke-virtual {v5, v3}, Lgbase_okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v4

    .line 621
    invoke-interface {v4, v2}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 624
    :cond_0
    new-instance v1, Lgbase_okhttp3/internal/http/StatusLine;

    iget-object v3, p0, Lgbase_okhttp3/Cache$Entry;->protocol:Lgbase_okhttp3/Protocol;

    iget v5, p0, Lgbase_okhttp3/Cache$Entry;->code:I

    iget-object v6, p0, Lgbase_okhttp3/Cache$Entry;->message:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lgbase_okhttp3/internal/http/StatusLine;-><init>(Lgbase_okhttp3/Protocol;ILjava/lang/String;)V

    invoke-virtual {v1}, Lgbase_okhttp3/internal/http/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v1

    .line 625
    invoke-interface {v1, v2}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 626
    iget-object v1, p0, Lgbase_okhttp3/Cache$Entry;->responseHeaders:Lgbase_okhttp3/Headers;

    invoke-virtual {v1}, Lgbase_okhttp3/Headers;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, Lgbase_okio/BufferedSink;->writeDecimalLong(J)Lgbase_okio/BufferedSink;

    move-result-object v1

    .line 627
    invoke-interface {v1, v2}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 628
    iget-object v1, p0, Lgbase_okhttp3/Cache$Entry;->responseHeaders:Lgbase_okhttp3/Headers;

    invoke-virtual {v1}, Lgbase_okhttp3/Headers;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 629
    iget-object v3, p0, Lgbase_okhttp3/Cache$Entry;->responseHeaders:Lgbase_okhttp3/Headers;

    invoke-virtual {v3, v0}, Lgbase_okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v3

    .line 630
    invoke-interface {v3, v4}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v3

    iget-object v5, p0, Lgbase_okhttp3/Cache$Entry;->responseHeaders:Lgbase_okhttp3/Headers;

    .line 631
    invoke-virtual {v5, v0}, Lgbase_okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v3

    .line 632
    invoke-interface {v3, v2}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 634
    :cond_1
    sget-object v0, Lgbase_okhttp3/Cache$Entry;->SENT_MILLIS:Ljava/lang/String;

    invoke-interface {p1, v0}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v0

    .line 635
    invoke-interface {v0, v4}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v0

    iget-wide v5, p0, Lgbase_okhttp3/Cache$Entry;->sentRequestMillis:J

    .line 636
    invoke-interface {v0, v5, v6}, Lgbase_okio/BufferedSink;->writeDecimalLong(J)Lgbase_okio/BufferedSink;

    move-result-object v0

    .line 637
    invoke-interface {v0, v2}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 638
    sget-object v0, Lgbase_okhttp3/Cache$Entry;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-interface {p1, v0}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v0

    .line 639
    invoke-interface {v0, v4}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v0

    iget-wide v3, p0, Lgbase_okhttp3/Cache$Entry;->receivedResponseMillis:J

    .line 640
    invoke-interface {v0, v3, v4}, Lgbase_okio/BufferedSink;->writeDecimalLong(J)Lgbase_okio/BufferedSink;

    move-result-object v0

    .line 641
    invoke-interface {v0, v2}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 643
    invoke-direct {p0}, Lgbase_okhttp3/Cache$Entry;->isHttps()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    invoke-interface {p1, v2}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 645
    iget-object v0, p0, Lgbase_okhttp3/Cache$Entry;->handshake:Lgbase_okhttp3/Handshake;

    invoke-virtual {v0}, Lgbase_okhttp3/Handshake;->cipherSuite()Lgbase_okhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v0

    .line 646
    invoke-interface {v0, v2}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 647
    iget-object v0, p0, Lgbase_okhttp3/Cache$Entry;->handshake:Lgbase_okhttp3/Handshake;

    invoke-virtual {v0}, Lgbase_okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgbase_okhttp3/Cache$Entry;->writeCertList(Lgbase_okio/BufferedSink;Ljava/util/List;)V

    .line 648
    iget-object v0, p0, Lgbase_okhttp3/Cache$Entry;->handshake:Lgbase_okhttp3/Handshake;

    invoke-virtual {v0}, Lgbase_okhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgbase_okhttp3/Cache$Entry;->writeCertList(Lgbase_okio/BufferedSink;Ljava/util/List;)V

    .line 649
    iget-object v0, p0, Lgbase_okhttp3/Cache$Entry;->handshake:Lgbase_okhttp3/Handshake;

    invoke-virtual {v0}, Lgbase_okhttp3/Handshake;->tlsVersion()Lgbase_okhttp3/TlsVersion;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/TlsVersion;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lgbase_okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lgbase_okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, v2}, Lgbase_okio/BufferedSink;->writeByte(I)Lgbase_okio/BufferedSink;

    .line 651
    :cond_2
    invoke-interface {p1}, Lgbase_okio/BufferedSink;->close()V

    return-void
.end method
