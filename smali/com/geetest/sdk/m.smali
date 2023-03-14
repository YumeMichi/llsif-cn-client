.class public Lcom/geetest/sdk/m;
.super Ljava/lang/Object;
.source "HashUtils.java"


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "SHA-256"

    .line 1
    invoke-static {p0, v0}, Lcom/geetest/sdk/m;->a([BLjava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/geetest/sdk/n;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a([BLjava/lang/String;)[B
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method
