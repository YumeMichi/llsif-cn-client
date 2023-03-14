.class public synthetic Lcom/bun/miitmdid/core/MainMdidSdk$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/miitmdid/core/MainMdidSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->values()[Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v0, 0x10

    new-array v0, v0, [I

    sput-object v0, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    sget-object v3, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->XIAOMI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v0, 0xd

    :try_start_1
    sget-object v3, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v4, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->BLACKSHARK:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v2, v3, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v3, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->VIVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/4 v3, 0x3

    aput v3, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v2, 0x4

    :try_start_3
    sget-object v3, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v4, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->HUA_WEI:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v2, v3, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v1, 0x5

    :try_start_4
    sget-object v3, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v4, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->OPPO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v1, v3, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v2, 0x6

    const/16 v3, 0xc

    :try_start_5
    sget-object v4, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v5, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ONEPLUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v2, v4, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v4, 0x7

    :try_start_6
    sget-object v5, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->MOTO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v4, v5, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v1, 0x8

    :try_start_7
    sget-object v5, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->LENOVO:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v1, v5, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v2, 0x9

    :try_start_8
    sget-object v5, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ASUS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v2, v5, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v4, 0xa

    :try_start_9
    sget-object v5, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->SAMSUNG:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v4, v5, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v1, 0xb

    :try_start_a
    sget-object v5, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v6, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->MEIZU:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v1, v5, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v5, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->NUBIA:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v3, v2, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v2, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v3, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->ZTE:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    aput v0, v2, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v1, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->FREEMEOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v1, 0xe

    aput v1, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/bun/miitmdid/core/MainMdidSdk$1;->$SwitchMap$com$bun$miitmdid$content$ProviderList$DEVICE_PROVIDER:[I

    sget-object v1, Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;->SSUIOS:Lcom/bun/miitmdid/content/ProviderList$DEVICE_PROVIDER;

    const/16 v1, 0xf

    aput v1, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
