.class public Lcom/gsk/utils/YouYunPackageHelper;
.super Ljava/lang/Object;
.source "YouYunPackageHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field private static final ALIPAY_APP_NAME:Ljava/lang/String; = "\u652f\u4ed8\u5b9d\u5feb\u6377\u652f\u4ed8\u670d\u52a1"

.field private static final ALIPAY_PACKAGE_NAME:Ljava/lang/String; = "com.alipay.android.app"

.field private static final DETECT_FAILURE:I = 0x6

.field private static final DETECT_SUCCESS:I = 0x0

.field private static final DOWNLOAD_ABORT:I = 0x2

.field private static final DOWNLOAD_CONFIRM:I = 0x1

.field private static final DOWNLOAD_FAILURE:I = 0x4

.field private static final DOWNLOAD_SUCCESS:I = 0x3

.field private static final INSTALL_RETRIEVED_APK:I = 0x5

.field private static final NETWORK_ERROR:I = 0x7

.field private static final TAG:Ljava/lang/String; = "YouYunPackageHelper"

.field private static final TITLE:Ljava/lang/String; = "\u6e29\u99a8\u63d0\u793a"

.field private static final YOUNIPAY_PACKAGE_NAME:Ljava/lang/String; = "com.snda.youni"

.field private static mCustomDialog:Z

.field private static mLayoutId:I

.field private static mMessageId:I

.field private static mNegativeButtonId:I

.field private static mPositiveButtonId:I

.field private static mStyleId:I

.field private static mTitleId:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/gsk/utils/YouYunPackageHelper;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/gsk/utils/YouYunPackageHelper;->mProgress:Landroid/app/ProgressDialog;

    .line 55
    iput-object p1, p0, Lcom/gsk/utils/YouYunPackageHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIIII)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/gsk/utils/YouYunPackageHelper;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/gsk/utils/YouYunPackageHelper;->mProgress:Landroid/app/ProgressDialog;

    .line 60
    iput-object p1, p0, Lcom/gsk/utils/YouYunPackageHelper;->mContext:Landroid/content/Context;

    .line 61
    invoke-static/range {p2 .. p7}, Lcom/gsk/utils/YouYunPackageHelper;->customDialog(IIIIII)V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 164
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 167
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x1000

    .line 168
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 169
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 170
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 171
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 176
    sget-object p1, Lcom/gsk/utils/YouYunPackageHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v0
.end method

.method private static chmod(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "]["

    .line 292
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 294
    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 296
    sget-object v2, Lcom/gsk/utils/YouYunPackageHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 298
    sget-object p1, Lcom/gsk/utils/YouYunPackageHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static createTempFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    :try_start_0
    const-string v0, "youyun-service-"

    const-string v1, ".apk"

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-static {v0, v1, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 192
    sget-object v0, Lcom/gsk/utils/YouYunPackageHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static customDialog(IIIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 81
    sput-boolean v0, Lcom/gsk/utils/YouYunPackageHelper;->mCustomDialog:Z

    .line 82
    sput p0, Lcom/gsk/utils/YouYunPackageHelper;->mStyleId:I

    .line 83
    sput p1, Lcom/gsk/utils/YouYunPackageHelper;->mLayoutId:I

    .line 84
    sput p2, Lcom/gsk/utils/YouYunPackageHelper;->mTitleId:I

    .line 85
    sput p3, Lcom/gsk/utils/YouYunPackageHelper;->mMessageId:I

    .line 86
    sput p4, Lcom/gsk/utils/YouYunPackageHelper;->mPositiveButtonId:I

    .line 87
    sput p5, Lcom/gsk/utils/YouYunPackageHelper;->mNegativeButtonId:I

    return-void
.end method

.method private static getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 259
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getApkVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 274
    invoke-static {p0, p1}, Lcom/gsk/utils/YouYunPackageHelper;->getApkInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 276
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPackageVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 147
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object p0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAliayPackageExist(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.alipay.android.app"

    .line 101
    invoke-static {p0, v0}, Lcom/gsk/utils/YouYunPackageHelper;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    .line 127
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 128
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isYouniPackageExist(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.snda.youni"

    .line 111
    invoke-static {p0, v0}, Lcom/gsk/utils/YouYunPackageHelper;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private retrieveApkFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 212
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 213
    :try_start_1
    invoke-static {p1}, Lcom/gsk/utils/YouYunPackageHelper;->createTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 215
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v2, 0x400

    .line 216
    :try_start_2
    new-array v2, v2, [B

    .line 218
    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 219
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object p1, v0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz v0, :cond_2

    .line 228
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 230
    :try_start_4
    sget-object v1, Lcom/gsk/utils/YouYunPackageHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 233
    :goto_2
    throw p1

    :cond_2
    :goto_3
    if-eqz p2, :cond_7

    .line 237
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_f

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p2

    .line 239
    :try_start_6
    sget-object v0, Lcom/gsk/utils/YouYunPackageHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_f

    .line 242
    :goto_4
    throw p1

    :catchall_2
    move-exception p1

    move-object v1, v0

    goto :goto_9

    :catch_3
    move-exception p1

    move-object v1, v0

    goto :goto_5

    :catchall_3
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    goto :goto_9

    :catch_4
    move-exception p1

    move-object p2, v0

    move-object v1, p2

    .line 224
    :goto_5
    :try_start_7
    sget-object v2, Lcom/gsk/utils/YouYunPackageHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v1, :cond_3

    .line 228
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception p1

    goto :goto_6

    :catch_5
    move-exception p1

    .line 230
    :try_start_9
    sget-object v1, Lcom/gsk/utils/YouYunPackageHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_7

    .line 233
    :goto_6
    throw p1

    :cond_3
    :goto_7
    if-eqz p2, :cond_6

    .line 237
    :try_start_a
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception p1

    goto :goto_8

    :catch_6
    move-exception p1

    .line 239
    :try_start_b
    sget-object p2, Lcom/gsk/utils/YouYunPackageHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_e

    .line 242
    :goto_8
    throw p1

    :catchall_6
    move-exception p1

    :goto_9
    if-eqz v1, :cond_4

    .line 228
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception p1

    goto :goto_a

    :catch_7
    move-exception v0

    .line 230
    :try_start_d
    sget-object v1, Lcom/gsk/utils/YouYunPackageHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_b

    .line 233
    :goto_a
    throw p1

    :cond_4
    :goto_b
    if-eqz p2, :cond_5

    .line 237
    :try_start_e
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_d

    :catchall_8
    move-exception p1

    goto :goto_c

    :catch_8
    move-exception p2

    .line 239
    :try_start_f
    sget-object v0, Lcom/gsk/utils/YouYunPackageHelper;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_d

    .line 242
    :goto_c
    throw p1

    .line 244
    :cond_5
    :goto_d
    throw p1

    :cond_6
    :goto_e
    move-object p1, v0

    :cond_7
    :goto_f
    return-object p1
.end method
