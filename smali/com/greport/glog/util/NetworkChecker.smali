.class public Lcom/greport/glog/util/NetworkChecker;
.super Ljava/lang/Object;
.source "NetworkChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "connectivity"

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 62
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const-string v0, "WIFI"

    if-nez p0, :cond_0

    goto/16 :goto_3

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_3

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_8

    .line 68
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/16 v1, 0x10

    if-eq p0, v1, :cond_7

    if-eq p0, v2, :cond_7

    const/4 v1, 0x4

    if-eq p0, v1, :cond_7

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v1, 0x7

    if-eq p0, v1, :cond_7

    const/16 v1, 0xb

    if-ne p0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x11

    if-eq p0, v1, :cond_6

    const/4 v1, 0x6

    if-eq p0, v1, :cond_6

    const/4 v1, 0x3

    if-eq p0, v1, :cond_6

    const/4 v1, 0x5

    if-eq p0, v1, :cond_6

    const/16 v1, 0x8

    if-eq p0, v1, :cond_6

    const/16 v1, 0x9

    if-eq p0, v1, :cond_6

    const/16 v1, 0xa

    if-eq p0, v1, :cond_6

    const/16 v1, 0xc

    if-eq p0, v1, :cond_6

    const/16 v1, 0xe

    if-eq p0, v1, :cond_6

    const/16 v1, 0xf

    if-ne p0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x12

    if-eq p0, v1, :cond_5

    const/16 v1, 0xd

    if-ne p0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x14

    if-ne p0, v1, :cond_8

    const-string v0, "5G"

    goto :goto_3

    :cond_5
    :goto_0
    const-string v0, "4G"

    goto :goto_3

    :cond_6
    :goto_1
    const-string v0, "3G"

    goto :goto_3

    :cond_7
    :goto_2
    const-string v0, "2G"

    :cond_8
    :goto_3
    return-object v0
.end method

.method public static isOffline(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 43
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isWifiAvailable(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 52
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
