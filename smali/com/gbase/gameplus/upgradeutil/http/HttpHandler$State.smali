.class public final enum Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;
.super Ljava/lang/Enum;
.source "HttpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/http/HttpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

.field public static final enum CANCELLED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

.field public static final enum FAILURE:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

.field public static final enum LOADING:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

.field public static final enum STARTED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

.field public static final enum SUCCESS:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

.field public static final enum WAITING:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 298
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    const/4 v1, 0x0

    const-string v2, "WAITING"

    invoke-direct {v0, v2, v1, v1}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->WAITING:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    const/4 v2, 0x1

    const-string v3, "STARTED"

    invoke-direct {v0, v3, v2, v2}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->STARTED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    const/4 v3, 0x2

    const-string v4, "LOADING"

    invoke-direct {v0, v4, v3, v3}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->LOADING:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    const/4 v4, 0x3

    const-string v5, "FAILURE"

    invoke-direct {v0, v5, v4, v4}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->FAILURE:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    const/4 v5, 0x4

    const-string v6, "CANCELLED"

    invoke-direct {v0, v6, v5, v5}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->CANCELLED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    const/4 v6, 0x5

    const-string v7, "SUCCESS"

    invoke-direct {v0, v7, v6, v6}, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->SUCCESS:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    const/4 v0, 0x6

    .line 297
    new-array v0, v0, [Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    sget-object v7, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->WAITING:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    aput-object v7, v0, v1

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->STARTED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->LOADING:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->FAILURE:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->CANCELLED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->SUCCESS:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->$VALUES:[Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 301
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 299
    iput p1, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->value:I

    .line 302
    iput p3, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 320
    sget-object p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->FAILURE:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    return-object p0

    .line 318
    :cond_0
    sget-object p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->SUCCESS:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    return-object p0

    .line 316
    :cond_1
    sget-object p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->CANCELLED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    return-object p0

    .line 314
    :cond_2
    sget-object p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->FAILURE:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    return-object p0

    .line 312
    :cond_3
    sget-object p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->LOADING:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    return-object p0

    .line 310
    :cond_4
    sget-object p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->STARTED:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    return-object p0

    .line 308
    :cond_5
    sget-object p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->WAITING:Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;
    .locals 1

    .line 297
    const-class v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    return-object p0
.end method

.method public static values()[Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;
    .locals 1

    .line 297
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->$VALUES:[Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    invoke-virtual {v0}, [Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/gbase/gameplus/upgradeutil/http/HttpHandler$State;->value:I

    return v0
.end method
