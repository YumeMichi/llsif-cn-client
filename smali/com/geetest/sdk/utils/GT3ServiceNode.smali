.class public final enum Lcom/geetest/sdk/utils/GT3ServiceNode;
.super Ljava/lang/Enum;
.source "GT3ServiceNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geetest/sdk/utils/GT3ServiceNode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/geetest/sdk/utils/GT3ServiceNode;

.field public static final enum NODE_CHINA:Lcom/geetest/sdk/utils/GT3ServiceNode;

.field public static final enum NODE_IPV6:Lcom/geetest/sdk/utils/GT3ServiceNode;

.field public static final enum NODE_NORTH_AMERICA:Lcom/geetest/sdk/utils/GT3ServiceNode;

.field public static final enum NODE_NORTH_GOOGLE:Lcom/geetest/sdk/utils/GT3ServiceNode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/geetest/sdk/utils/GT3ServiceNode;

    const/4 v1, 0x0

    const-string v2, "NODE_CHINA"

    invoke-direct {v0, v2, v1}, Lcom/geetest/sdk/utils/GT3ServiceNode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/utils/GT3ServiceNode;->NODE_CHINA:Lcom/geetest/sdk/utils/GT3ServiceNode;

    .line 2
    new-instance v0, Lcom/geetest/sdk/utils/GT3ServiceNode;

    const/4 v2, 0x1

    const-string v3, "NODE_NORTH_AMERICA"

    invoke-direct {v0, v3, v2}, Lcom/geetest/sdk/utils/GT3ServiceNode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/utils/GT3ServiceNode;->NODE_NORTH_AMERICA:Lcom/geetest/sdk/utils/GT3ServiceNode;

    .line 3
    new-instance v0, Lcom/geetest/sdk/utils/GT3ServiceNode;

    const/4 v3, 0x2

    const-string v4, "NODE_NORTH_GOOGLE"

    invoke-direct {v0, v4, v3}, Lcom/geetest/sdk/utils/GT3ServiceNode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/utils/GT3ServiceNode;->NODE_NORTH_GOOGLE:Lcom/geetest/sdk/utils/GT3ServiceNode;

    .line 4
    new-instance v0, Lcom/geetest/sdk/utils/GT3ServiceNode;

    const/4 v4, 0x3

    const-string v5, "NODE_IPV6"

    invoke-direct {v0, v5, v4}, Lcom/geetest/sdk/utils/GT3ServiceNode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/utils/GT3ServiceNode;->NODE_IPV6:Lcom/geetest/sdk/utils/GT3ServiceNode;

    const/4 v5, 0x4

    .line 5
    new-array v5, v5, [Lcom/geetest/sdk/utils/GT3ServiceNode;

    sget-object v6, Lcom/geetest/sdk/utils/GT3ServiceNode;->NODE_CHINA:Lcom/geetest/sdk/utils/GT3ServiceNode;

    aput-object v6, v5, v1

    sget-object v1, Lcom/geetest/sdk/utils/GT3ServiceNode;->NODE_NORTH_AMERICA:Lcom/geetest/sdk/utils/GT3ServiceNode;

    aput-object v1, v5, v2

    sget-object v1, Lcom/geetest/sdk/utils/GT3ServiceNode;->NODE_NORTH_GOOGLE:Lcom/geetest/sdk/utils/GT3ServiceNode;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/geetest/sdk/utils/GT3ServiceNode;->$VALUES:[Lcom/geetest/sdk/utils/GT3ServiceNode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geetest/sdk/utils/GT3ServiceNode;
    .locals 1

    .line 1
    const-class v0, Lcom/geetest/sdk/utils/GT3ServiceNode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geetest/sdk/utils/GT3ServiceNode;

    return-object p0
.end method

.method public static values()[Lcom/geetest/sdk/utils/GT3ServiceNode;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/utils/GT3ServiceNode;->$VALUES:[Lcom/geetest/sdk/utils/GT3ServiceNode;

    invoke-virtual {v0}, [Lcom/geetest/sdk/utils/GT3ServiceNode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geetest/sdk/utils/GT3ServiceNode;

    return-object v0
.end method
