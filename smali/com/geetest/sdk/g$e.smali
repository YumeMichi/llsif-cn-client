.class public final enum Lcom/geetest/sdk/g$e;
.super Ljava/lang/Enum;
.source "DialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geetest/sdk/g$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISMISS:Lcom/geetest/sdk/g$e;

.field public static final enum INIT:Lcom/geetest/sdk/g$e;

.field public static final enum NUMBER_ONE_CLOSE:Lcom/geetest/sdk/g$e;

.field public static final enum SHOW_LOADING:Lcom/geetest/sdk/g$e;

.field public static final enum SHOW_WEB:Lcom/geetest/sdk/g$e;

.field private static final synthetic a:[Lcom/geetest/sdk/g$e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/geetest/sdk/g$e;

    const/4 v1, 0x0

    const-string v2, "NUMBER_ONE_CLOSE"

    invoke-direct {v0, v2, v1}, Lcom/geetest/sdk/g$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/g$e;->NUMBER_ONE_CLOSE:Lcom/geetest/sdk/g$e;

    .line 2
    new-instance v0, Lcom/geetest/sdk/g$e;

    const/4 v2, 0x1

    const-string v3, "SHOW_LOADING"

    invoke-direct {v0, v3, v2}, Lcom/geetest/sdk/g$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/g$e;->SHOW_LOADING:Lcom/geetest/sdk/g$e;

    .line 3
    new-instance v0, Lcom/geetest/sdk/g$e;

    const/4 v3, 0x2

    const-string v4, "SHOW_WEB"

    invoke-direct {v0, v4, v3}, Lcom/geetest/sdk/g$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/g$e;->SHOW_WEB:Lcom/geetest/sdk/g$e;

    .line 4
    new-instance v0, Lcom/geetest/sdk/g$e;

    const/4 v4, 0x3

    const-string v5, "DISMISS"

    invoke-direct {v0, v5, v4}, Lcom/geetest/sdk/g$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/g$e;->DISMISS:Lcom/geetest/sdk/g$e;

    .line 5
    new-instance v0, Lcom/geetest/sdk/g$e;

    const/4 v5, 0x4

    const-string v6, "INIT"

    invoke-direct {v0, v6, v5}, Lcom/geetest/sdk/g$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/g$e;->INIT:Lcom/geetest/sdk/g$e;

    const/4 v6, 0x5

    .line 6
    new-array v6, v6, [Lcom/geetest/sdk/g$e;

    sget-object v7, Lcom/geetest/sdk/g$e;->NUMBER_ONE_CLOSE:Lcom/geetest/sdk/g$e;

    aput-object v7, v6, v1

    sget-object v1, Lcom/geetest/sdk/g$e;->SHOW_LOADING:Lcom/geetest/sdk/g$e;

    aput-object v1, v6, v2

    sget-object v1, Lcom/geetest/sdk/g$e;->SHOW_WEB:Lcom/geetest/sdk/g$e;

    aput-object v1, v6, v3

    sget-object v1, Lcom/geetest/sdk/g$e;->DISMISS:Lcom/geetest/sdk/g$e;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/geetest/sdk/g$e;->a:[Lcom/geetest/sdk/g$e;

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

.method public static valueOf(Ljava/lang/String;)Lcom/geetest/sdk/g$e;
    .locals 1

    .line 1
    const-class v0, Lcom/geetest/sdk/g$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geetest/sdk/g$e;

    return-object p0
.end method

.method public static values()[Lcom/geetest/sdk/g$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/g$e;->a:[Lcom/geetest/sdk/g$e;

    invoke-virtual {v0}, [Lcom/geetest/sdk/g$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geetest/sdk/g$e;

    return-object v0
.end method
