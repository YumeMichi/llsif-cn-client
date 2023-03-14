.class public final enum Lcom/bytedance/applog/WhalerGameHelper$Result;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/WhalerGameHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/applog/WhalerGameHelper$Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/bytedance/applog/WhalerGameHelper$Result;

.field public static final enum FAIL:Lcom/bytedance/applog/WhalerGameHelper$Result;

.field public static final enum SUCCESS:Lcom/bytedance/applog/WhalerGameHelper$Result;

.field public static final enum UNCOMPLETED:Lcom/bytedance/applog/WhalerGameHelper$Result;


# instance fields
.field public final gameResult:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/bytedance/applog/WhalerGameHelper$Result;

    const/4 v1, 0x0

    const-string v2, "UNCOMPLETED"

    const-string v3, "uncompleted"

    invoke-direct {v0, v2, v1, v3}, Lcom/bytedance/applog/WhalerGameHelper$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/applog/WhalerGameHelper$Result;->UNCOMPLETED:Lcom/bytedance/applog/WhalerGameHelper$Result;

    new-instance v0, Lcom/bytedance/applog/WhalerGameHelper$Result;

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    const-string v4, "success"

    invoke-direct {v0, v3, v2, v4}, Lcom/bytedance/applog/WhalerGameHelper$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/applog/WhalerGameHelper$Result;->SUCCESS:Lcom/bytedance/applog/WhalerGameHelper$Result;

    new-instance v0, Lcom/bytedance/applog/WhalerGameHelper$Result;

    const/4 v3, 0x2

    const-string v4, "FAIL"

    const-string v5, "fail"

    invoke-direct {v0, v4, v3, v5}, Lcom/bytedance/applog/WhalerGameHelper$Result;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/applog/WhalerGameHelper$Result;->FAIL:Lcom/bytedance/applog/WhalerGameHelper$Result;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bytedance/applog/WhalerGameHelper$Result;

    sget-object v4, Lcom/bytedance/applog/WhalerGameHelper$Result;->UNCOMPLETED:Lcom/bytedance/applog/WhalerGameHelper$Result;

    aput-object v4, v0, v1

    sget-object v1, Lcom/bytedance/applog/WhalerGameHelper$Result;->SUCCESS:Lcom/bytedance/applog/WhalerGameHelper$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/applog/WhalerGameHelper$Result;->FAIL:Lcom/bytedance/applog/WhalerGameHelper$Result;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bytedance/applog/WhalerGameHelper$Result;->$VALUES:[Lcom/bytedance/applog/WhalerGameHelper$Result;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/applog/WhalerGameHelper$Result;->gameResult:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/applog/WhalerGameHelper$Result;
    .locals 1

    const-class v0, Lcom/bytedance/applog/WhalerGameHelper$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/applog/WhalerGameHelper$Result;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/applog/WhalerGameHelper$Result;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/WhalerGameHelper$Result;->$VALUES:[Lcom/bytedance/applog/WhalerGameHelper$Result;

    invoke-virtual {v0}, [Lcom/bytedance/applog/WhalerGameHelper$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/applog/WhalerGameHelper$Result;

    return-object v0
.end method
