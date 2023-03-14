.class public final enum Lcom/ghome/gshare/GSharePlatformType;
.super Ljava/lang/Enum;
.source "GSharePlatformType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ghome/gshare/GSharePlatformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ghome/gshare/GSharePlatformType;

.field public static final enum QQ_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

.field public static final enum QZONE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

.field public static final enum SDK_CHOOSE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

.field public static final enum SINA_WB_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

.field public static final enum WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

.field public static final enum WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/ghome/gshare/GSharePlatformType;

    const/4 v1, 0x0

    const-string v2, "WEIXIN_PLATFORM"

    invoke-direct {v0, v2, v1}, Lcom/ghome/gshare/GSharePlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    .line 9
    new-instance v0, Lcom/ghome/gshare/GSharePlatformType;

    const/4 v2, 0x1

    const-string v3, "WEIXIN_CIRCLE_PLATFORM"

    invoke-direct {v0, v3, v2}, Lcom/ghome/gshare/GSharePlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    .line 10
    new-instance v0, Lcom/ghome/gshare/GSharePlatformType;

    const/4 v3, 0x2

    const-string v4, "QQ_PLATFORM"

    invoke-direct {v0, v4, v3}, Lcom/ghome/gshare/GSharePlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghome/gshare/GSharePlatformType;->QQ_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    .line 11
    new-instance v0, Lcom/ghome/gshare/GSharePlatformType;

    const/4 v4, 0x3

    const-string v5, "QZONE_PLATFORM"

    invoke-direct {v0, v5, v4}, Lcom/ghome/gshare/GSharePlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghome/gshare/GSharePlatformType;->QZONE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    .line 12
    new-instance v0, Lcom/ghome/gshare/GSharePlatformType;

    const/4 v5, 0x4

    const-string v6, "SINA_WB_PLATFORM"

    invoke-direct {v0, v6, v5}, Lcom/ghome/gshare/GSharePlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghome/gshare/GSharePlatformType;->SINA_WB_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    .line 13
    new-instance v0, Lcom/ghome/gshare/GSharePlatformType;

    const/4 v6, 0x5

    const-string v7, "SDK_CHOOSE_PLATFORM"

    invoke-direct {v0, v7, v6}, Lcom/ghome/gshare/GSharePlatformType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ghome/gshare/GSharePlatformType;->SDK_CHOOSE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    const/4 v0, 0x6

    .line 6
    new-array v0, v0, [Lcom/ghome/gshare/GSharePlatformType;

    sget-object v7, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->WEIXIN_CIRCLE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->QQ_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->QZONE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->SINA_WB_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ghome/gshare/GSharePlatformType;->SDK_CHOOSE_PLATFORM:Lcom/ghome/gshare/GSharePlatformType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ghome/gshare/GSharePlatformType;->$VALUES:[Lcom/ghome/gshare/GSharePlatformType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ghome/gshare/GSharePlatformType;
    .locals 1

    .line 6
    const-class v0, Lcom/ghome/gshare/GSharePlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ghome/gshare/GSharePlatformType;

    return-object p0
.end method

.method public static values()[Lcom/ghome/gshare/GSharePlatformType;
    .locals 1

    .line 6
    sget-object v0, Lcom/ghome/gshare/GSharePlatformType;->$VALUES:[Lcom/ghome/gshare/GSharePlatformType;

    invoke-virtual {v0}, [Lcom/ghome/gshare/GSharePlatformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ghome/gshare/GSharePlatformType;

    return-object v0
.end method
