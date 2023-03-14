.class public Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$MD5DiskCacheFileNameGenerator;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$DiskCacheFileNameGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MD5DiskCacheFileNameGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;


# direct methods
.method public constructor <init>(Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$MD5DiskCacheFileNameGenerator;->this$0:Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 5

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1215
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1216
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1217
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/16 v3, 0x30

    .line 1218
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1220
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1222
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public generate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "MD5"

    .line 1204
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1205
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1206
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gbase/gameplus/upgradeutil/util/core/LruDiskCache$MD5DiskCacheFileNameGenerator;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1208
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
