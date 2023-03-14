.class public final enum Lcom/geetest/sdk/ab;
.super Ljava/lang/Enum;
.source "FlagEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geetest/sdk/ab;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CRASH:Lcom/geetest/sdk/ab;

.field public static final enum ERROR:Lcom/geetest/sdk/ab;

.field public static final enum NETWORK:Lcom/geetest/sdk/ab;

.field public static final enum NORMAL:Lcom/geetest/sdk/ab;

.field public static final enum USER:Lcom/geetest/sdk/ab;

.field private static final synthetic a:[Lcom/geetest/sdk/ab;


# instance fields
.field public flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/geetest/sdk/ab;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1, v1}, Lcom/geetest/sdk/ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/geetest/sdk/ab;->NORMAL:Lcom/geetest/sdk/ab;

    .line 2
    new-instance v0, Lcom/geetest/sdk/ab;

    const/4 v2, 0x1

    const-string v3, "NETWORK"

    invoke-direct {v0, v3, v2, v2}, Lcom/geetest/sdk/ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/geetest/sdk/ab;->NETWORK:Lcom/geetest/sdk/ab;

    .line 3
    new-instance v0, Lcom/geetest/sdk/ab;

    const/4 v3, 0x2

    const-string v4, "USER"

    invoke-direct {v0, v4, v3, v3}, Lcom/geetest/sdk/ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/geetest/sdk/ab;->USER:Lcom/geetest/sdk/ab;

    .line 4
    new-instance v0, Lcom/geetest/sdk/ab;

    const/4 v4, 0x3

    const-string v5, "CRASH"

    invoke-direct {v0, v5, v4, v4}, Lcom/geetest/sdk/ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/geetest/sdk/ab;->CRASH:Lcom/geetest/sdk/ab;

    .line 5
    new-instance v0, Lcom/geetest/sdk/ab;

    const/4 v5, 0x4

    const-string v6, "ERROR"

    invoke-direct {v0, v6, v5, v5}, Lcom/geetest/sdk/ab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/geetest/sdk/ab;->ERROR:Lcom/geetest/sdk/ab;

    const/4 v6, 0x5

    .line 6
    new-array v6, v6, [Lcom/geetest/sdk/ab;

    sget-object v7, Lcom/geetest/sdk/ab;->NORMAL:Lcom/geetest/sdk/ab;

    aput-object v7, v6, v1

    sget-object v1, Lcom/geetest/sdk/ab;->NETWORK:Lcom/geetest/sdk/ab;

    aput-object v1, v6, v2

    sget-object v1, Lcom/geetest/sdk/ab;->USER:Lcom/geetest/sdk/ab;

    aput-object v1, v6, v3

    sget-object v1, Lcom/geetest/sdk/ab;->CRASH:Lcom/geetest/sdk/ab;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/geetest/sdk/ab;->a:[Lcom/geetest/sdk/ab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/geetest/sdk/ab;->flag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/geetest/sdk/ab;
    .locals 1

    .line 1
    const-class v0, Lcom/geetest/sdk/ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geetest/sdk/ab;

    return-object p0
.end method

.method public static values()[Lcom/geetest/sdk/ab;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/ab;->a:[Lcom/geetest/sdk/ab;

    invoke-virtual {v0}, [Lcom/geetest/sdk/ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geetest/sdk/ab;

    return-object v0
.end method
