.class public final Lgbase_okhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbase_okhttp3/internal/cache/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lgbase_okhttp3/Response;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final networkRequest:Lgbase_okhttp3/Request;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lgbase_okhttp3/Request;Lgbase_okhttp3/Response;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lgbase_okhttp3/internal/cache/CacheStrategy;->networkRequest:Lgbase_okhttp3/Request;

    .line 60
    iput-object p2, p0, Lgbase_okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lgbase_okhttp3/Response;

    return-void
.end method

.method public static isCacheable(Lgbase_okhttp3/Response;Lgbase_okhttp3/Request;)Z
    .locals 3

    .line 67
    invoke-virtual {p0}, Lgbase_okhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-eq v0, v1, :cond_2

    const/16 v1, 0x194

    if-eq v0, v1, :cond_2

    const/16 v1, 0x195

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v0, "Expires"

    .line 87
    invoke-virtual {p0, v0}, Lgbase_okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lgbase_okhttp3/Response;->cacheControl()Lgbase_okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 89
    invoke-virtual {p0}, Lgbase_okhttp3/Response;->cacheControl()Lgbase_okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/CacheControl;->isPublic()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-virtual {p0}, Lgbase_okhttp3/Response;->cacheControl()Lgbase_okhttp3/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lgbase_okhttp3/CacheControl;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    .line 101
    :cond_2
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lgbase_okhttp3/Response;->cacheControl()Lgbase_okhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lgbase_okhttp3/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lgbase_okhttp3/Request;->cacheControl()Lgbase_okhttp3/CacheControl;

    move-result-object p0

    invoke-virtual {p0}, Lgbase_okhttp3/CacheControl;->noStore()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
