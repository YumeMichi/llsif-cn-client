.class public final enum Lcom/alipay/sdk/app/EnvUtils$EnvEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/EnvUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnvEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/sdk/app/EnvUtils$EnvEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

.field public static final enum ONLINE:Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

.field public static final enum SANDBOX:Lcom/alipay/sdk/app/EnvUtils$EnvEnum;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    const/4 v1, 0x0

    const-string v2, "ONLINE"

    invoke-direct {v0, v2, v1}, Lcom/alipay/sdk/app/EnvUtils$EnvEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/sdk/app/EnvUtils$EnvEnum;->ONLINE:Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    .line 5
    new-instance v0, Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    const/4 v2, 0x1

    const-string v3, "SANDBOX"

    invoke-direct {v0, v3, v2}, Lcom/alipay/sdk/app/EnvUtils$EnvEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/sdk/app/EnvUtils$EnvEnum;->SANDBOX:Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    const/4 v3, 0x2

    .line 6
    new-array v3, v3, [Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    sget-object v4, Lcom/alipay/sdk/app/EnvUtils$EnvEnum;->ONLINE:Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/alipay/sdk/app/EnvUtils$EnvEnum;->$VALUES:[Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/app/EnvUtils$EnvEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    return-object p0
.end method

.method public static values()[Lcom/alipay/sdk/app/EnvUtils$EnvEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/sdk/app/EnvUtils$EnvEnum;->$VALUES:[Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    invoke-virtual {v0}, [Lcom/alipay/sdk/app/EnvUtils$EnvEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/app/EnvUtils$EnvEnum;

    return-object v0
.end method
