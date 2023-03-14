.class public final enum Lcom/alipay/sdk/protocol/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/sdk/protocol/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/alipay/sdk/protocol/a;

.field public static final enum c:Lcom/alipay/sdk/protocol/a;

.field public static final enum d:Lcom/alipay/sdk/protocol/a;

.field public static final enum e:Lcom/alipay/sdk/protocol/a;

.field public static final enum f:Lcom/alipay/sdk/protocol/a;

.field public static final enum g:Lcom/alipay/sdk/protocol/a;

.field public static final synthetic h:[Lcom/alipay/sdk/protocol/a;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const/4 v1, 0x0

    const-string v2, "None"

    const-string v3, "none"

    invoke-direct {v0, v2, v1, v3}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const/4 v2, 0x1

    const-string v3, "WapPay"

    const-string v4, "js://wappay"

    invoke-direct {v0, v3, v2, v4}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->c:Lcom/alipay/sdk/protocol/a;

    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const/4 v3, 0x2

    const-string v4, "Update"

    const-string v5, "js://update"

    invoke-direct {v0, v4, v3, v5}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->d:Lcom/alipay/sdk/protocol/a;

    .line 2
    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const/4 v4, 0x3

    const-string v5, "OpenWeb"

    const-string v6, "loc:openweb"

    invoke-direct {v0, v5, v4, v6}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->e:Lcom/alipay/sdk/protocol/a;

    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const/4 v5, 0x4

    const-string v6, "SetResult"

    const-string v7, "loc:setResult"

    invoke-direct {v0, v6, v5, v7}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->f:Lcom/alipay/sdk/protocol/a;

    new-instance v0, Lcom/alipay/sdk/protocol/a;

    const/4 v6, 0x5

    const-string v7, "Exit"

    const-string v8, "loc:exit"

    invoke-direct {v0, v7, v6, v8}, Lcom/alipay/sdk/protocol/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/sdk/protocol/a;->g:Lcom/alipay/sdk/protocol/a;

    const/4 v7, 0x6

    .line 3
    new-array v7, v7, [Lcom/alipay/sdk/protocol/a;

    sget-object v8, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    aput-object v8, v7, v1

    sget-object v1, Lcom/alipay/sdk/protocol/a;->c:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v7, v2

    sget-object v1, Lcom/alipay/sdk/protocol/a;->d:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v7, v3

    sget-object v1, Lcom/alipay/sdk/protocol/a;->e:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v7, v4

    sget-object v1, Lcom/alipay/sdk/protocol/a;->f:Lcom/alipay/sdk/protocol/a;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/alipay/sdk/protocol/a;->h:[Lcom/alipay/sdk/protocol/a;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/alipay/sdk/protocol/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/sdk/protocol/a;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    .line 6
    invoke-static {}, Lcom/alipay/sdk/protocol/a;->values()[Lcom/alipay/sdk/protocol/a;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 7
    iget-object v5, v4, Lcom/alipay/sdk/protocol/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/sdk/protocol/a;
    .locals 1

    .line 1
    const-class v0, Lcom/alipay/sdk/protocol/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alipay/sdk/protocol/a;

    return-object p0
.end method

.method public static values()[Lcom/alipay/sdk/protocol/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/alipay/sdk/protocol/a;->h:[Lcom/alipay/sdk/protocol/a;

    invoke-virtual {v0}, [Lcom/alipay/sdk/protocol/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/sdk/protocol/a;

    return-object v0
.end method
