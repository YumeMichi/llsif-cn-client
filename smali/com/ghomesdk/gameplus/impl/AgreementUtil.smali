.class public Lcom/ghomesdk/gameplus/impl/AgreementUtil;
.super Ljava/lang/Object;
.source "AgreementUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AgreementUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invokeWebView(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 9

    .line 60
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->agreement_filename:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/ghomesdk/gameplus/config/Config;->agreement_filename:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/ghomesdk/gameplus/utils/Util;->isExistDataCache(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "UTF-8"

    .line 64
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/FileUtil;->readFileAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    move-object v3, p1

    .line 63
    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "file:///android_asset/agreement.html"

    .line 70
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 72
    :goto_0
    new-instance v0, Lcom/ghomesdk/gameplus/impl/AgreementUtil$2;

    invoke-direct {v0, p0}, Lcom/ghomesdk/gameplus/impl/AgreementUtil$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public static isAgreementNeedUpdate(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "agreement_version"

    const-string v1, ""

    .line 24
    invoke-static {p0, v0, v1}, Lcom/ghomesdk/gameplus/utils/SharedPreferencesUtil;->getSharedPreferencesValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "\\."

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 29
    array-length v2, p1

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 31
    array-length v0, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 32
    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 33
    aget-object v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    aget-object v6, p0, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-ne v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34
    :cond_1
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-le p1, p0, :cond_2

    return v1

    :cond_2
    return v3
.end method

.method public static updateAgreement(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/ghomesdk/gameplus/config/Config;->agreement_newest_filename:Ljava/lang/String;

    new-instance v1, Lcom/ghomesdk/gameplus/impl/AgreementUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/ghomesdk/gameplus/impl/AgreementUtil$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p0, p0, v0, v1}, Lcom/ghomesdk/gameplus/impl/ServerApi;->updateAgreement(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lcom/ghomesdk/gameplus/callback/HttpCallback;)V

    return-void
.end method
