.class final Lgbase_okhttp3/ResponseBody$1;
.super Lgbase_okhttp3/ResponseBody;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbase_okhttp3/ResponseBody;->create(Lgbase_okhttp3/MediaType;JLgbase_okio/BufferedSource;)Lgbase_okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lgbase_okio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lgbase_okhttp3/MediaType;


# direct methods
.method constructor <init>(Lgbase_okhttp3/MediaType;JLgbase_okio/BufferedSource;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lgbase_okhttp3/ResponseBody$1;->val$contentType:Lgbase_okhttp3/MediaType;

    iput-wide p2, p0, Lgbase_okhttp3/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lgbase_okhttp3/ResponseBody$1;->val$content:Lgbase_okio/BufferedSource;

    invoke-direct {p0}, Lgbase_okhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 224
    iget-wide v0, p0, Lgbase_okhttp3/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Lgbase_okhttp3/MediaType;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 220
    iget-object v0, p0, Lgbase_okhttp3/ResponseBody$1;->val$contentType:Lgbase_okhttp3/MediaType;

    return-object v0
.end method

.method public source()Lgbase_okio/BufferedSource;
    .locals 1

    .line 228
    iget-object v0, p0, Lgbase_okhttp3/ResponseBody$1;->val$content:Lgbase_okio/BufferedSource;

    return-object v0
.end method
