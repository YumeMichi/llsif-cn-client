.class public final enum Lcom/gbase/gameplus/upgradeutil/task/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gbase/gameplus/upgradeutil/task/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gbase/gameplus/upgradeutil/task/Priority;

.field public static final enum BG_LOW:Lcom/gbase/gameplus/upgradeutil/task/Priority;

.field public static final enum BG_NORMAL:Lcom/gbase/gameplus/upgradeutil/task/Priority;

.field public static final enum BG_TOP:Lcom/gbase/gameplus/upgradeutil/task/Priority;

.field public static final enum DEFAULT:Lcom/gbase/gameplus/upgradeutil/task/Priority;

.field public static final enum UI_LOW:Lcom/gbase/gameplus/upgradeutil/task/Priority;

.field public static final enum UI_NORMAL:Lcom/gbase/gameplus/upgradeutil/task/Priority;

.field public static final enum UI_TOP:Lcom/gbase/gameplus/upgradeutil/task/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;

    const/4 v1, 0x0

    const-string v2, "UI_TOP"

    invoke-direct {v0, v2, v1}, Lcom/gbase/gameplus/upgradeutil/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;->UI_TOP:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    .line 5
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;

    const/4 v2, 0x1

    const-string v3, "UI_NORMAL"

    invoke-direct {v0, v3, v2}, Lcom/gbase/gameplus/upgradeutil/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;->UI_NORMAL:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    .line 6
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;

    const/4 v3, 0x2

    const-string v4, "UI_LOW"

    invoke-direct {v0, v4, v3}, Lcom/gbase/gameplus/upgradeutil/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;->UI_LOW:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    .line 7
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;

    const/4 v4, 0x3

    const-string v5, "DEFAULT"

    invoke-direct {v0, v5, v4}, Lcom/gbase/gameplus/upgradeutil/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;->DEFAULT:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    .line 8
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;

    const/4 v5, 0x4

    const-string v6, "BG_TOP"

    invoke-direct {v0, v6, v5}, Lcom/gbase/gameplus/upgradeutil/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;->BG_TOP:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    .line 9
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;

    const/4 v6, 0x5

    const-string v7, "BG_NORMAL"

    invoke-direct {v0, v7, v6}, Lcom/gbase/gameplus/upgradeutil/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;->BG_NORMAL:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    .line 10
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;

    const/4 v7, 0x6

    const-string v8, "BG_LOW"

    invoke-direct {v0, v8, v7}, Lcom/gbase/gameplus/upgradeutil/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;->BG_LOW:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    const/4 v0, 0x7

    .line 3
    new-array v0, v0, [Lcom/gbase/gameplus/upgradeutil/task/Priority;

    sget-object v8, Lcom/gbase/gameplus/upgradeutil/task/Priority;->UI_TOP:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    aput-object v8, v0, v1

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/task/Priority;->UI_NORMAL:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/task/Priority;->UI_LOW:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/task/Priority;->DEFAULT:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/task/Priority;->BG_TOP:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/task/Priority;->BG_NORMAL:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/task/Priority;->BG_LOW:Lcom/gbase/gameplus/upgradeutil/task/Priority;

    aput-object v1, v0, v7

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;->$VALUES:[Lcom/gbase/gameplus/upgradeutil/task/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/task/Priority;
    .locals 1

    .line 3
    const-class v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gbase/gameplus/upgradeutil/task/Priority;

    return-object p0
.end method

.method public static values()[Lcom/gbase/gameplus/upgradeutil/task/Priority;
    .locals 1

    .line 3
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/task/Priority;->$VALUES:[Lcom/gbase/gameplus/upgradeutil/task/Priority;

    invoke-virtual {v0}, [Lcom/gbase/gameplus/upgradeutil/task/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gbase/gameplus/upgradeutil/task/Priority;

    return-object v0
.end method
