.class public final enum Lcom/ghome/gshare/util/glog/GShareActive;
.super Ljava/lang/Enum;
.source "GShareActive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ghome/gshare/util/glog/GShareActive;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ghome/gshare/util/glog/GShareActive;

.field public static final enum SHARE_RESULT:Lcom/ghome/gshare/util/glog/GShareActive;

.field public static final enum SHARE_SDK:Lcom/ghome/gshare/util/glog/GShareActive;

.field public static final enum SHARE_SYS:Lcom/ghome/gshare/util/glog/GShareActive;


# instance fields
.field public id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/ghome/gshare/util/glog/GShareActive;

    const/4 v1, 0x0

    const-string v2, "SHARE_SDK"

    const-string v3, "gshare_active_share_sdk"

    invoke-direct {v0, v2, v1, v3}, Lcom/ghome/gshare/util/glog/GShareActive;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareActive;->SHARE_SDK:Lcom/ghome/gshare/util/glog/GShareActive;

    .line 12
    new-instance v0, Lcom/ghome/gshare/util/glog/GShareActive;

    const/4 v2, 0x1

    const-string v3, "SHARE_SYS"

    const-string v4, "gshare_active_share_sys"

    invoke-direct {v0, v3, v2, v4}, Lcom/ghome/gshare/util/glog/GShareActive;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareActive;->SHARE_SYS:Lcom/ghome/gshare/util/glog/GShareActive;

    .line 13
    new-instance v0, Lcom/ghome/gshare/util/glog/GShareActive;

    const/4 v3, 0x2

    const-string v4, "SHARE_RESULT"

    const-string v5, "gshare_active_result"

    invoke-direct {v0, v4, v3, v5}, Lcom/ghome/gshare/util/glog/GShareActive;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareActive;->SHARE_RESULT:Lcom/ghome/gshare/util/glog/GShareActive;

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lcom/ghome/gshare/util/glog/GShareActive;

    sget-object v4, Lcom/ghome/gshare/util/glog/GShareActive;->SHARE_SDK:Lcom/ghome/gshare/util/glog/GShareActive;

    aput-object v4, v0, v1

    sget-object v1, Lcom/ghome/gshare/util/glog/GShareActive;->SHARE_SYS:Lcom/ghome/gshare/util/glog/GShareActive;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ghome/gshare/util/glog/GShareActive;->SHARE_RESULT:Lcom/ghome/gshare/util/glog/GShareActive;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareActive;->$VALUES:[Lcom/ghome/gshare/util/glog/GShareActive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/ghome/gshare/util/glog/GShareActive;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ghome/gshare/util/glog/GShareActive;
    .locals 1

    .line 10
    const-class v0, Lcom/ghome/gshare/util/glog/GShareActive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ghome/gshare/util/glog/GShareActive;

    return-object p0
.end method

.method public static values()[Lcom/ghome/gshare/util/glog/GShareActive;
    .locals 1

    .line 10
    sget-object v0, Lcom/ghome/gshare/util/glog/GShareActive;->$VALUES:[Lcom/ghome/gshare/util/glog/GShareActive;

    invoke-virtual {v0}, [Lcom/ghome/gshare/util/glog/GShareActive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ghome/gshare/util/glog/GShareActive;

    return-object v0
.end method
