.class public abstract Lgbase_okhttp3/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/EventListener$Factory;
    }
.end annotation


# static fields
.field public static final NONE:Lgbase_okhttp3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lgbase_okhttp3/EventListener$1;

    invoke-direct {v0}, Lgbase_okhttp3/EventListener$1;-><init>()V

    sput-object v0, Lgbase_okhttp3/EventListener;->NONE:Lgbase_okhttp3/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static factory(Lgbase_okhttp3/EventListener;)Lgbase_okhttp3/EventListener$Factory;
    .locals 1

    .line 29
    new-instance v0, Lgbase_okhttp3/EventListener$2;

    invoke-direct {v0, p0}, Lgbase_okhttp3/EventListener$2;-><init>(Lgbase_okhttp3/EventListener;)V

    return-object v0
.end method


# virtual methods
.method public connectEnd(Lgbase_okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lgbase_okhttp3/Protocol;Ljava/lang/Throwable;)V
    .locals 0
    .param p4    # Lgbase_okhttp3/Protocol;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public connectStart(Lgbase_okhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    return-void
.end method

.method public connectionAcquired(Lgbase_okhttp3/Call;Lgbase_okhttp3/Connection;)V
    .locals 0

    return-void
.end method

.method public connectionReleased(Lgbase_okhttp3/Call;Lgbase_okhttp3/Connection;)V
    .locals 0

    return-void
.end method

.method public dnsEnd(Lgbase_okhttp3/Call;Ljava/lang/String;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgbase_okhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public dnsStart(Lgbase_okhttp3/Call;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public fetchEnd(Lgbase_okhttp3/Call;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public fetchStart(Lgbase_okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public requestBodyEnd(Lgbase_okhttp3/Call;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public requestBodyStart(Lgbase_okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public requestHeadersEnd(Lgbase_okhttp3/Call;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public requestHeadersStart(Lgbase_okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public responseBodyEnd(Lgbase_okhttp3/Call;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public responseBodyStart(Lgbase_okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public responseHeadersEnd(Lgbase_okhttp3/Call;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public responseHeadersStart(Lgbase_okhttp3/Call;)V
    .locals 0

    return-void
.end method

.method public secureConnectEnd(Lgbase_okhttp3/Call;Lgbase_okhttp3/Handshake;Ljava/lang/Throwable;)V
    .locals 0
    .param p2    # Lgbase_okhttp3/Handshake;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public secureConnectStart(Lgbase_okhttp3/Call;)V
    .locals 0

    return-void
.end method
