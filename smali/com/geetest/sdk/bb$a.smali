.class public final enum Lcom/geetest/sdk/bb$a;
.super Ljava/lang/Enum;
.source "GTUserRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geetest/sdk/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/geetest/sdk/bb$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NORMAL:Lcom/geetest/sdk/bb$a;

.field public static final enum ONEPASS:Lcom/geetest/sdk/bb$a;

.field public static final enum REQUESTING:Lcom/geetest/sdk/bb$a;

.field public static final enum SHUTDOWN:Lcom/geetest/sdk/bb$a;

.field private static final synthetic a:[Lcom/geetest/sdk/bb$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/geetest/sdk/bb$a;

    const/4 v1, 0x0

    const-string v2, "SHUTDOWN"

    invoke-direct {v0, v2, v1}, Lcom/geetest/sdk/bb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/bb$a;->SHUTDOWN:Lcom/geetest/sdk/bb$a;

    .line 5
    new-instance v0, Lcom/geetest/sdk/bb$a;

    const/4 v2, 0x1

    const-string v3, "ONEPASS"

    invoke-direct {v0, v3, v2}, Lcom/geetest/sdk/bb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/bb$a;->ONEPASS:Lcom/geetest/sdk/bb$a;

    .line 9
    new-instance v0, Lcom/geetest/sdk/bb$a;

    const/4 v3, 0x2

    const-string v4, "NORMAL"

    invoke-direct {v0, v4, v3}, Lcom/geetest/sdk/bb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/bb$a;->NORMAL:Lcom/geetest/sdk/bb$a;

    .line 13
    new-instance v0, Lcom/geetest/sdk/bb$a;

    const/4 v4, 0x3

    const-string v5, "REQUESTING"

    invoke-direct {v0, v5, v4}, Lcom/geetest/sdk/bb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/geetest/sdk/bb$a;->REQUESTING:Lcom/geetest/sdk/bb$a;

    const/4 v5, 0x4

    .line 14
    new-array v5, v5, [Lcom/geetest/sdk/bb$a;

    sget-object v6, Lcom/geetest/sdk/bb$a;->SHUTDOWN:Lcom/geetest/sdk/bb$a;

    aput-object v6, v5, v1

    sget-object v1, Lcom/geetest/sdk/bb$a;->ONEPASS:Lcom/geetest/sdk/bb$a;

    aput-object v1, v5, v2

    sget-object v1, Lcom/geetest/sdk/bb$a;->NORMAL:Lcom/geetest/sdk/bb$a;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/geetest/sdk/bb$a;->a:[Lcom/geetest/sdk/bb$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/geetest/sdk/bb$a;
    .locals 1

    .line 1
    const-class v0, Lcom/geetest/sdk/bb$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/geetest/sdk/bb$a;

    return-object p0
.end method

.method public static values()[Lcom/geetest/sdk/bb$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/geetest/sdk/bb$a;->a:[Lcom/geetest/sdk/bb$a;

    invoke-virtual {v0}, [Lcom/geetest/sdk/bb$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/geetest/sdk/bb$a;

    return-object v0
.end method
