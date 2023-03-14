.class public final enum Lcom/ghome/gshare/util/glog/GShareResult;
.super Ljava/lang/Enum;
.source "GShareResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ghome/gshare/util/glog/GShareResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ghome/gshare/util/glog/GShareResult;

.field public static final enum CANCEL:Lcom/ghome/gshare/util/glog/GShareResult;

.field public static final enum FAILED:Lcom/ghome/gshare/util/glog/GShareResult;

.field public static final enum SUCCESS:Lcom/ghome/gshare/util/glog/GShareResult;


# instance fields
.field public code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/ghome/gshare/util/glog/GShareResult;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1, v1}, Lcom/ghome/gshare/util/glog/GShareResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareResult;->SUCCESS:Lcom/ghome/gshare/util/glog/GShareResult;

    .line 12
    new-instance v0, Lcom/ghome/gshare/util/glog/GShareResult;

    const/4 v2, 0x1

    const-string v3, "FAILED"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v4}, Lcom/ghome/gshare/util/glog/GShareResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareResult;->FAILED:Lcom/ghome/gshare/util/glog/GShareResult;

    .line 13
    new-instance v0, Lcom/ghome/gshare/util/glog/GShareResult;

    const/4 v3, 0x2

    const-string v4, "CANCEL"

    const/4 v5, -0x2

    invoke-direct {v0, v4, v3, v5}, Lcom/ghome/gshare/util/glog/GShareResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareResult;->CANCEL:Lcom/ghome/gshare/util/glog/GShareResult;

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lcom/ghome/gshare/util/glog/GShareResult;

    sget-object v4, Lcom/ghome/gshare/util/glog/GShareResult;->SUCCESS:Lcom/ghome/gshare/util/glog/GShareResult;

    aput-object v4, v0, v1

    sget-object v1, Lcom/ghome/gshare/util/glog/GShareResult;->FAILED:Lcom/ghome/gshare/util/glog/GShareResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ghome/gshare/util/glog/GShareResult;->CANCEL:Lcom/ghome/gshare/util/glog/GShareResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ghome/gshare/util/glog/GShareResult;->$VALUES:[Lcom/ghome/gshare/util/glog/GShareResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/ghome/gshare/util/glog/GShareResult;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ghome/gshare/util/glog/GShareResult;
    .locals 1

    .line 10
    const-class v0, Lcom/ghome/gshare/util/glog/GShareResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ghome/gshare/util/glog/GShareResult;

    return-object p0
.end method

.method public static values()[Lcom/ghome/gshare/util/glog/GShareResult;
    .locals 1

    .line 10
    sget-object v0, Lcom/ghome/gshare/util/glog/GShareResult;->$VALUES:[Lcom/ghome/gshare/util/glog/GShareResult;

    invoke-virtual {v0}, [Lcom/ghome/gshare/util/glog/GShareResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ghome/gshare/util/glog/GShareResult;

    return-object v0
.end method
