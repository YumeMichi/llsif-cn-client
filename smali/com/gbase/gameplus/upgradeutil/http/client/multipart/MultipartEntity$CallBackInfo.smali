.class public Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;
.super Ljava/lang/Object;
.source "MultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallBackInfo"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;


# instance fields
.field public callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

.field public pos:J

.field public totalLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    invoke-direct {v0}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;-><init>()V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->DEFAULT:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->totalLength:J

    .line 35
    iput-wide v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    return-void
.end method


# virtual methods
.method public doCallBack(Z)Z
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->callBackHandler:Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;

    if-eqz v0, :cond_0

    .line 43
    iget-wide v1, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->totalLength:J

    iget-wide v3, p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/MultipartEntity$CallBackInfo;->pos:J

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/gbase/gameplus/upgradeutil/http/callback/RequestCallBackHandler;->updateProgress(JJZ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
