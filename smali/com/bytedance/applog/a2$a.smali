.class public final enum Lcom/bytedance/applog/a2$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/applog/a2$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/bytedance/applog/a2$a;

.field public static final enum c:Lcom/bytedance/applog/a2$a;

.field public static final enum d:Lcom/bytedance/applog/a2$a;

.field public static final enum e:Lcom/bytedance/applog/a2$a;

.field public static final enum f:Lcom/bytedance/applog/a2$a;

.field public static final enum g:Lcom/bytedance/applog/a2$a;

.field public static final enum h:Lcom/bytedance/applog/a2$a;

.field public static final enum i:Lcom/bytedance/applog/a2$a;

.field public static final enum j:Lcom/bytedance/applog/a2$a;

.field public static final enum k:Lcom/bytedance/applog/a2$a;

.field public static final enum l:Lcom/bytedance/applog/a2$a;

.field public static final enum m:Lcom/bytedance/applog/a2$a;

.field public static final synthetic n:[Lcom/bytedance/applog/a2$a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/bytedance/applog/a2$a;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/bytedance/applog/a2$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/applog/a2$a;->b:Lcom/bytedance/applog/a2$a;

    new-instance v0, Lcom/bytedance/applog/a2$a;

    const/4 v2, 0x1

    const-string v3, "NONE"

    invoke-direct {v0, v3, v2, v1}, Lcom/bytedance/applog/a2$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/applog/a2$a;->c:Lcom/bytedance/applog/a2$a;

    new-instance v0, Lcom/bytedance/applog/a2$a;

    const/4 v3, 0x2

    const-string v4, "MOBILE"

    invoke-direct {v0, v4, v3, v2}, Lcom/bytedance/applog/a2$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/applog/a2$a;->d:Lcom/bytedance/applog/a2$a;

    new-instance v0, Lcom/bytedance/applog/a2$a;

    const/4 v4, 0x3

    const-string v5, "MOBILE_2G"

    invoke-direct {v0, v5, v4, v3}, Lcom/bytedance/applog/a2$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/applog/a2$a;->e:Lcom/bytedance/applog/a2$a;

    new-instance v0, Lcom/bytedance/applog/a2$a;

    const/4 v5, 0x4

    const-string v6, "MOBILE_3G"

    invoke-direct {v0, v6, v5, v4}, Lcom/bytedance/applog/a2$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/applog/a2$a;->f:Lcom/bytedance/applog/a2$a;

    new-instance v0, Lcom/bytedance/applog/a2$a;

    const/4 v6, 0x5

    const-string v7, "WIFI"

    invoke-direct {v0, v7, v6, v5}, Lcom/bytedance/applog/a2$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/applog/a2$a;->g:Lcom/bytedance/applog/a2$a;

    new-instance v0, Lcom/bytedance/applog/a2$a;

    const/4 v7, 0x6

    const-string v8, "MOBILE_4G"

    invoke-direct {v0, v8, v7, v6}, Lcom/bytedance/applog/a2$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/applog/a2$a;->h:Lcom/bytedance/applog/a2$a;

    new-instance v0, Lcom/bytedance/applog/a2$a;

    const/4 v8, 0x7

    const-string v9, "MOBILE_5G"

    invoke-direct {v0, v9, v8, v7}, Lcom/bytedance/applog/a2$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/applog/a2$a;->i:Lcom/bytedance/applog/a2$a;

    new-instance v0, Lcom/bytedance/applog/a2$a;

    const/16 v9, 0x8

    const-string v10, "WIFI_24GHZ"

    invoke-direct {v0, v10, v9, v8}, Lcom/bytedance/applog/a2$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/applog/a2$a;->j:Lcom/bytedance/applog/a2$a;

    new-instance v0, Lcom/bytedance/applog/a2$a;

    const/16 v10, 0x9

    const-string v11, "WIFI_5GHZ"

    invoke-direct {v0, v11, v10, v9}, Lcom/bytedance/applog/a2$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/applog/a2$a;->k:Lcom/bytedance/applog/a2$a;

    new-instance v0, Lcom/bytedance/applog/a2$a;

    const/16 v11, 0xa

    const-string v12, "MOBILE_3G_H"

    invoke-direct {v0, v12, v11, v10}, Lcom/bytedance/applog/a2$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/applog/a2$a;->l:Lcom/bytedance/applog/a2$a;

    new-instance v0, Lcom/bytedance/applog/a2$a;

    const/16 v12, 0xb

    const-string v13, "MOBILE_3G_HP"

    invoke-direct {v0, v13, v12, v11}, Lcom/bytedance/applog/a2$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/applog/a2$a;->m:Lcom/bytedance/applog/a2$a;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/bytedance/applog/a2$a;

    sget-object v13, Lcom/bytedance/applog/a2$a;->b:Lcom/bytedance/applog/a2$a;

    aput-object v13, v0, v1

    sget-object v1, Lcom/bytedance/applog/a2$a;->c:Lcom/bytedance/applog/a2$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/applog/a2$a;->d:Lcom/bytedance/applog/a2$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/applog/a2$a;->e:Lcom/bytedance/applog/a2$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/applog/a2$a;->f:Lcom/bytedance/applog/a2$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/applog/a2$a;->g:Lcom/bytedance/applog/a2$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/applog/a2$a;->h:Lcom/bytedance/applog/a2$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/applog/a2$a;->i:Lcom/bytedance/applog/a2$a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/bytedance/applog/a2$a;->j:Lcom/bytedance/applog/a2$a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/bytedance/applog/a2$a;->k:Lcom/bytedance/applog/a2$a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/bytedance/applog/a2$a;->l:Lcom/bytedance/applog/a2$a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/bytedance/applog/a2$a;->m:Lcom/bytedance/applog/a2$a;

    aput-object v1, v0, v12

    sput-object v0, Lcom/bytedance/applog/a2$a;->n:[Lcom/bytedance/applog/a2$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bytedance/applog/a2$a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/applog/a2$a;
    .locals 1

    const-class v0, Lcom/bytedance/applog/a2$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/applog/a2$a;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/applog/a2$a;
    .locals 1

    sget-object v0, Lcom/bytedance/applog/a2$a;->n:[Lcom/bytedance/applog/a2$a;

    invoke-virtual {v0}, [Lcom/bytedance/applog/a2$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/applog/a2$a;

    return-object v0
.end method
