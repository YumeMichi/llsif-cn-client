.class public final enum Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;
.super Ljava/lang/Enum;
.source "HttpMultipartMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

.field public static final enum BROWSER_COMPATIBLE:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

.field public static final enum STRICT:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    const/4 v1, 0x0

    const-string v2, "STRICT"

    invoke-direct {v0, v2, v1}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    .line 15
    new-instance v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    const/4 v2, 0x1

    const-string v3, "BROWSER_COMPATIBLE"

    invoke-direct {v0, v3, v2}, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    sget-object v3, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->STRICT:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    aput-object v3, v0, v1

    sget-object v1, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->$VALUES:[Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;
    .locals 1

    .line 6
    const-class v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    return-object p0
.end method

.method public static values()[Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;
    .locals 1

    .line 6
    sget-object v0, Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->$VALUES:[Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    invoke-virtual {v0}, [Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gbase/gameplus/upgradeutil/http/client/multipart/HttpMultipartMode;

    return-object v0
.end method
