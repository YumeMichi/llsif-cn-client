.class public final enum Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/miitmdid/content/ProviderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEVICE_PROVIDER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum ASUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum BLACKSHARK:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum FREEMEOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum HUA_WEI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum LENOVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum MEIZU:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum MOTO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum NUBIA:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum ONEPLUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum OPPO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum SAMSUNG:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum SSUIOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum UNSUPPORT:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum VIVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum XIAOMI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

.field public static final enum ZTE:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;


# instance fields
.field private index:I

.field private name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/4 v1, 0x0

    const-string v2, "UNSUPPORT"

    const/4 v3, -0x1

    const-string v4, "unsupport"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->UNSUPPORT:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/4 v3, 0x1

    const-string v4, "HUA_WEI"

    const-string v5, "HUAWEI"

    invoke-direct {v2, v4, v3, v1, v5}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->HUA_WEI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v4, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/4 v5, 0x2

    const-string v6, "XIAOMI"

    const-string v7, "Xiaomi"

    invoke-direct {v4, v6, v5, v3, v7}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->XIAOMI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/4 v7, 0x3

    const-string v8, "VIVO"

    const-string v9, "vivo"

    invoke-direct {v6, v8, v7, v5, v9}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->VIVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v8, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/4 v9, 0x4

    const-string v10, "OPPO"

    const-string v11, "oppo"

    invoke-direct {v8, v10, v9, v7, v11}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->OPPO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v10, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/4 v11, 0x5

    const-string v12, "MOTO"

    const-string v13, "motorola"

    invoke-direct {v10, v12, v11, v9, v13}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->MOTO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v12, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/4 v13, 0x6

    const-string v14, "LENOVO"

    const-string v15, "lenovo"

    invoke-direct {v12, v14, v13, v11, v15}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->LENOVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v14, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/4 v15, 0x7

    const-string v11, "ASUS"

    const-string v9, "asus"

    invoke-direct {v14, v11, v15, v13, v9}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ASUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v9, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v11, 0x8

    const-string v13, "SAMSUNG"

    const-string v7, "samsung"

    invoke-direct {v9, v13, v11, v15, v7}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->SAMSUNG:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v7, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v13, 0x9

    const-string v15, "MEIZU"

    const-string v5, "meizu"

    invoke-direct {v7, v15, v13, v11, v5}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->MEIZU:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v5, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v15, 0xa

    const-string v13, "NUBIA"

    const-string v11, "nubia"

    invoke-direct {v5, v13, v15, v15, v11}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->NUBIA:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v11, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v13, "ZTE"

    const/16 v15, 0xb

    invoke-direct {v11, v13, v15, v15, v13}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ZTE:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v13, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v15, 0xc

    const-string v3, "ONEPLUS"

    const-string v1, "OnePlus"

    invoke-direct {v13, v3, v15, v15, v1}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ONEPLUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v1, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v3, 0xd

    const-string v15, "BLACKSHARK"

    move-object/from16 v16, v13

    const-string v13, "blackshark"

    invoke-direct {v1, v15, v3, v3, v13}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->BLACKSHARK:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v13, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v15, "FREEMEOS"

    const/16 v3, 0xe

    move-object/from16 v17, v1

    const/16 v1, 0x1e

    move-object/from16 v18, v11

    const-string v11, "freemeos"

    invoke-direct {v13, v15, v3, v1, v11}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->FREEMEOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    new-instance v1, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const-string v3, "SSUIOS"

    const/16 v11, 0xf

    const/16 v15, 0x1f

    move-object/from16 v19, v13

    const-string v13, "ssui"

    invoke-direct {v1, v3, v11, v15, v13}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->SSUIOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v3, 0x10

    new-array v3, v3, [Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/4 v11, 0x0

    aput-object v0, v3, v11

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v6, v3, v0

    const/4 v0, 0x4

    aput-object v8, v3, v0

    const/4 v0, 0x5

    aput-object v10, v3, v0

    const/4 v0, 0x6

    aput-object v12, v3, v0

    const/4 v0, 0x7

    aput-object v14, v3, v0

    const/16 v0, 0x8

    aput-object v9, v3, v0

    const/16 v0, 0x9

    aput-object v7, v3, v0

    const/16 v0, 0xa

    aput-object v5, v3, v0

    const/16 v0, 0xb

    aput-object v18, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    const/16 v0, 0xd

    aput-object v17, v3, v0

    const/16 v0, 0xe

    aput-object v19, v3, v0

    const/16 v0, 0xf

    aput-object v1, v3, v0

    sput-object v3, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->$VALUES:[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->index:I

    iput-object p4, p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->UNSUPPORT:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->values()[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    move-result-object v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->UNSUPPORT:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;
    .locals 1

    const-class v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-object p0
.end method

.method public static values()[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;
    .locals 1

    sget-object v0, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->$VALUES:[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    invoke-virtual {v0}, [Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    return-object v0
.end method
