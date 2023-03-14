.class public final enum Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;
.super Ljava/lang/Enum;
.source "CompatibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

.field public static final enum FINISHED:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

.field public static final enum PENDING:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

.field public static final enum RUNNING:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 231
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->PENDING:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    .line 235
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->RUNNING:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    .line 239
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    const/4 v3, 0x2

    const-string v4, "FINISHED"

    invoke-direct {v0, v4, v3}, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->FINISHED:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    const/4 v0, 0x3

    .line 227
    new-array v0, v0, [Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    sget-object v4, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->PENDING:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    aput-object v4, v0, v1

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->RUNNING:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->FINISHED:Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    aput-object v1, v0, v3

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->$VALUES:[Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;
    .locals 1

    .line 227
    const-class v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    return-object p0
.end method

.method public static values()[Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;
    .locals 1

    .line 227
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->$VALUES:[Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    invoke-virtual {v0}, [Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gbase/gameplus/upgradeutil/util/core/CompatibleAsyncTask$Status;

    return-object v0
.end method
