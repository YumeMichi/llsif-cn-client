.class public Lcom/greport/glog/model/MiscInfo;
.super Ljava/lang/Object;
.source "MiscInfo.java"

# interfaces
.implements Lcom/greport/glog/Kvable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/greport/glog/model/MiscInfo$Key;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiscInfo"


# instance fields
.field public access_subtype:Ljava/lang/String;

.field public access_type:Ljava/lang/String;

.field public carrier:Ljava/lang/String;

.field public cid:I

.field public country:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public lac:I

.field public language:Ljava/lang/String;

.field public mcc:I

.field private md5:Ljava/lang/String;

.field public mnc:I

.field public time_zone:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/greport/glog/model/MiscInfo;->md5:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/greport/glog/model/MiscInfo;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/greport/glog/model/MiscInfo;->carrier:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/greport/glog/model/MiscInfo;->getCountryAndLanguage(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    aget-object v2, v0, v1

    iput-object v2, p0, Lcom/greport/glog/model/MiscInfo;->country:Ljava/lang/String;

    const/4 v2, 0x1

    .line 53
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/greport/glog/model/MiscInfo;->language:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/greport/glog/model/MiscInfo;->getNetworkStatus(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 55
    aget-object v3, v0, v1

    iput-object v3, p0, Lcom/greport/glog/model/MiscInfo;->access_type:Ljava/lang/String;

    .line 56
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/greport/glog/model/MiscInfo;->access_subtype:Ljava/lang/String;

    .line 59
    :cond_0
    invoke-static {p1}, Lcom/greport/glog/model/MiscInfo;->getTimeZone(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/greport/glog/model/MiscInfo;->time_zone:I

    .line 60
    invoke-static {v2}, Lcom/greport/glog/model/MiscInfo;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/greport/glog/model/MiscInfo;->ip:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/greport/glog/model/MiscInfo;->getCellInfo(Landroid/content/Context;)[I

    move-result-object p1

    .line 64
    aget v0, p1, v1

    iput v0, p0, Lcom/greport/glog/model/MiscInfo;->mcc:I

    .line 65
    aget v0, p1, v2

    iput v0, p0, Lcom/greport/glog/model/MiscInfo;->mnc:I

    const/4 v0, 0x2

    .line 66
    aget v0, p1, v0

    iput v0, p0, Lcom/greport/glog/model/MiscInfo;->lac:I

    const/4 v0, 0x3

    .line 67
    aget p1, p1, v0

    iput p1, p0, Lcom/greport/glog/model/MiscInfo;->cid:I

    return-void
.end method

.method public static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "phone"

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "MiscInfo"

    const-string v1, "read carrier fail"

    .line 120
    invoke-static {v0, v1, p0}, Lcom/greport/glog/util/GLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string p0, "Unknown"

    return-object p0
.end method

.method public static getCellInfo(Landroid/content/Context;)[I
    .locals 5

    const/4 v0, 0x4

    .line 254
    new-array v0, v0, [I

    :try_start_0
    const-string v1, "phone"

    .line 257
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 258
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 259
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v2

    .line 260
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 262
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 264
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    aput v1, v0, v4

    .line 265
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p0

    aput p0, v0, v3

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 267
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p0

    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 268
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    aput v1, v0, v4

    .line 269
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p0

    aput p0, v0, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getCountryAndLanguage(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    .line 126
    new-array v0, v0, [Ljava/lang/String;

    .line 129
    :try_start_0
    invoke-static {p0}, Lcom/greport/glog/model/MiscInfo;->getLocaleFromUserConfig(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 131
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 132
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 135
    :cond_0
    aget-object p0, v0, v2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Unknown"

    if-eqz p0, :cond_1

    :try_start_1
    aput-object v3, v0, v2

    .line 139
    :cond_1
    aget-object p0, v0, v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    aput-object v3, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "MiscInfo"

    const-string v2, "error in getLocaleInfo"

    .line 145
    invoke-static {v1, v2, p0}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .locals 4

    .line 228
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 229
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 230
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 231
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 232
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 234
    new-instance v3, Lcom/greport/glog/util/IPv4Validator;

    invoke-direct {v3}, Lcom/greport/glog/util/IPv4Validator;-><init>()V

    .line 235
    invoke-virtual {v3, v2}, Lcom/greport/glog/util/IPv4Validator;->isValidIP(Ljava/lang/String;)Z

    move-result v3

    if-eqz p0, :cond_2

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    if-nez v3, :cond_1

    const/16 p0, 0x25

    .line 241
    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 242
    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method private static getLocaleFromUserConfig(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    .line 154
    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 155
    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 158
    iget-object p0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "MiscInfo"

    const-string v0, "fail to read user config locale"

    .line 161
    invoke-static {p0, v0}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    .line 165
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getNetworkStatus(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    .line 172
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 175
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    aput-object v1, v0, v2

    return-object v0

    :cond_0
    const-string v4, "connectivity"

    .line 181
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_1

    aput-object v1, v0, v2

    return-object v0

    .line 187
    :cond_1
    invoke-virtual {p0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v4, :cond_2

    const-string p0, "Wi-Fi"

    aput-object p0, v0, v2

    return-object v0

    .line 193
    :cond_2
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    .line 194
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v4, :cond_3

    const-string v1, "2G/3G"

    aput-object v1, v0, v2

    .line 196
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 200
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method public static getTimeZone(Landroid/content/Context;)I
    .locals 2

    .line 208
    :try_start_0
    invoke-static {p0}, Lcom/greport/glog/model/MiscInfo;->getLocaleFromUserConfig(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    .line 209
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p0

    const v0, 0x36ee80

    div-int/2addr p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "MiscInfo"

    const-string v1, "error in getTimeZone"

    .line 214
    invoke-static {v0, v1, p0}, Lcom/greport/glog/util/GLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/16 p0, 0x8

    return p0
.end method


# virtual methods
.method public getMD5()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/greport/glog/model/MiscInfo;->md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/greport/glog/model/MiscInfo;->toKvList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/greport/glog/util/ToString;->of(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/greport/glog/util/MD5;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/greport/glog/model/MiscInfo;->md5:Ljava/lang/String;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/greport/glog/model/MiscInfo;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public toKvList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/greport/glog/Kv;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/MiscInfo;->carrier:Ljava/lang/String;

    const-string v3, "carrier"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/MiscInfo;->country:Ljava/lang/String;

    const-string v3, "country"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/MiscInfo;->language:Ljava/lang/String;

    const-string v3, "language"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/MiscInfo;->access_type:Ljava/lang/String;

    const-string v3, "access_type"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/MiscInfo;->access_subtype:Ljava/lang/String;

    const-string v3, "access_subtype"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/greport/glog/Kv;

    iget v2, p0, Lcom/greport/glog/model/MiscInfo;->time_zone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "time_zone"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, Lcom/greport/glog/Kv;

    iget-object v2, p0, Lcom/greport/glog/model/MiscInfo;->ip:Ljava/lang/String;

    const-string v3, "ip"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/greport/glog/Kv;

    iget v2, p0, Lcom/greport/glog/model/MiscInfo;->mcc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mcc"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lcom/greport/glog/Kv;

    iget v2, p0, Lcom/greport/glog/model/MiscInfo;->mnc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "mnc"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/greport/glog/Kv;

    iget v2, p0, Lcom/greport/glog/model/MiscInfo;->lac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "lac"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/greport/glog/Kv;

    iget v2, p0, Lcom/greport/glog/model/MiscInfo;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cid"

    invoke-direct {v1, v3, v2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 112
    invoke-static {p0}, Lcom/greport/glog/util/ToString;->of(Lcom/greport/glog/Kvable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
