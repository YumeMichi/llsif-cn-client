.class Lcom/gbase/gameplus/upgradeutil/http/HttpCache$1;
.super Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;
.source "HttpCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gbase/gameplus/upgradeutil/http/HttpCache;-><init>(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/http/HttpCache;


# direct methods
.method constructor <init>(Lcom/gbase/gameplus/upgradeutil/http/HttpCache;I)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpCache$1;->this$0:Lcom/gbase/gameplus/upgradeutil/http/HttpCache;

    invoke-direct {p0, p2}, Lcom/gbase/gameplus/upgradeutil/cache/LruMemoryCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/gbase/gameplus/upgradeutil/http/HttpCache$1;->sizeOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method
