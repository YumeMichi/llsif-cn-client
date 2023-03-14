.class public Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;
.super Ljava/lang/Object;
.source "DYApiImpl.java"

# interfaces
.implements Lcom/shengqu/daoyu/opensdk/openapi/DYAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DYApiImpl"


# instance fields
.field public context:Landroid/content/Context;

.field public detached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->detached:Z

    .line 3
    iput-object p1, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    return-void
.end method

.method private getDaoYuVersionCode(Landroid/content/Context;)I
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p1, "content://com.sdo.sdaccountkey.openapi.provider/app_info"

    const/4 v1, 0x1

    .line 2
    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "daoyu_version_code"

    const/4 v1, 0x0

    aput-object v6, v2, v1

    const/4 v7, -0x1

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 7
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_2
    :goto_1
    return v7

    :catch_0
    move-exception p1

    .line 8
    sget-object v0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDaoYuVersionCode fail , ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private insertReqInfo(Landroid/content/Context;Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.sdo.sdaccountkey.openapi.provider/req_info"

    .line 2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget-object v2, p2, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;->reqId:Ljava/lang/String;

    const-string v3, "open_api_req_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v2, p2, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;->timestamp:Ljava/lang/String;

    const-string v3, "open_api_req_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v2, p2, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;->clientId:Ljava/lang/String;

    const-string v3, "open_api_req_client_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p2, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;->appId:Ljava/lang/String;

    const-string v2, "open_api_req_app_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object p2, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertReqInfo fail , ex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isHandleActivityExist()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dyapi.DYEntryActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/a/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public detach()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->detached:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    return-void
.end method

.method public handleIntent(Landroid/content/Intent;Lcom/shengqu/daoyu/opensdk/openapi/DYAPIEventHandler;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->detached:Z

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, La/a/a/a/b/b;->a()La/a/a/a/b/b;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, La/a/a/a/b/b;->b:Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;->createByBundle(Landroid/os/Bundle;)Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2, p1}, Lcom/shengqu/daoyu/opensdk/openapi/DYAPIEventHandler;->onResp(Lcom/shengqu/daoyu/opensdk/model/OpenApiResp;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_2
    sget-object p1, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    const-string p2, "handleIntent fail, DYApiImpl has been detached"

    invoke-static {p1, p2}, La/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public installDaoYu()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->detached:Z

    if-nez v0, :cond_0

    const-string v0, "https://daoyu.sdo.com"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installDaoYu fail , ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    const-string v1, "installDaoYu fail, DYApiImpl has been detached"

    invoke-static {v0, v1}, La/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDYAppAppInstalled()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->detached:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sdo.sdaccountkey"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    .line 7
    :cond_3
    sget-object v0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    const-string v1, "isDYAppAppInstalled fail, DYApiImpl has been detached"

    invoke-static {v0, v1}, La/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public openGameAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 46
    invoke-virtual {p0, p1, p2, v0}, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->openGameAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public openGameAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 45
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->openGameAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public openGameAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const-string v0, "openAuth fail , ex = "

    .line 1
    iget-boolean v1, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->detached:Z

    if-nez v1, :cond_c

    .line 2
    invoke-static {}, La/a/a/a/b/b;->a()La/a/a/a/b/b;

    move-result-object v1

    .line 3
    iget-object v1, v1, La/a/a/a/b/b;->b:Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return v3

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->isHandleActivityExist()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    sget-object v1, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    const-string v4, "need create DYEntryActivity"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->isDYAppAppInstalled()Z

    move-result v1

    const/4 v4, -0x4

    if-nez v1, :cond_3

    .line 7
    sget-object p1, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    const-string p2, "openGameAuth fail,daoyu not installed "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, La/a/a/a/b/b;->a()La/a/a/a/b/b;

    move-result-object p1

    iget-object p2, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    const-string p3, "\u53e8\u9c7c\u672a\u5b89\u88c5"

    invoke-virtual {p1, p2, v3, v4, p3}, La/a/a/a/b/b;->a(Landroid/content/Context;ZILjava/lang/String;)V

    return v3

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->getDaoYuVersionCode(Landroid/content/Context;)I

    move-result v1

    const/4 v5, -0x1

    const-string v6, "\u53e8\u9c7c\u7248\u672c\u8fc7\u4f4e"

    if-eq v1, v5, :cond_4

    const/16 v5, 0x23a

    if-ge v1, v5, :cond_4

    .line 10
    sget-object p1, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    const-string p2, "openGameAuth fail,daoyu version too low"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, La/a/a/a/b/b;->a()La/a/a/a/b/b;

    move-result-object p1

    iget-object p2, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    invoke-virtual {p1, p2, v3, v4, v6}, La/a/a/a/b/b;->a(Landroid/content/Context;ZILjava/lang/String;)V

    return v3

    :cond_4
    const/4 v1, -0x6

    if-eqz p1, :cond_b

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto/16 :goto_4

    .line 13
    :cond_5
    iget-object v5, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    .line 14
    sget-object v7, La/a/a/a/a/a;->a:Ljava/lang/String;

    if-nez v7, :cond_8

    const/4 v7, 0x0

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    const-string v8, "daoyu_open_sdk_sp"

    .line 15
    invoke-virtual {v5, v8, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    const-string v8, "config_client_id"

    .line 16
    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 17
    :goto_1
    sput-object v7, La/a/a/a/a/a;->a:Ljava/lang/String;

    .line 18
    :cond_8
    sget-object v5, La/a/a/a/a/a;->a:Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    goto/16 :goto_3

    .line 20
    :cond_9
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.sdo.sdaccountkey.ACTION.GET_DAOYU_OPENID"

    .line 21
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "android.intent.category.DEFAULT"

    .line 22
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    new-instance v7, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;

    iget-object v8, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, v7, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;->appId:Ljava/lang/String;

    .line 25
    iput-object v5, v7, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;->clientId:Ljava/lang/String;

    .line 26
    iput-object p2, v7, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;->scope:Ljava/lang/String;

    .line 27
    iput-object p3, v7, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;->scene:Ljava/lang/String;

    .line 28
    iput-object p4, v7, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;->ext:Ljava/lang/String;

    .line 29
    iget-object p1, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    invoke-direct {p0, p1, v7}, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->insertReqInfo(Landroid/content/Context;Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;)V

    .line 30
    invoke-virtual {v7}, Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 31
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    :try_start_0
    invoke-static {}, La/a/a/a/b/b;->a()La/a/a/a/b/b;

    move-result-object p1

    .line 33
    iput-object v7, p1, La/a/a/a/b/b;->b:Lcom/shengqu/daoyu/opensdk/model/OpenApiReq;

    .line 34
    iget-object p1, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 35
    sget-object p2, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, La/a/a/a/b/b;->a()La/a/a/a/b/b;

    move-result-object p2

    iget-object p3, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u83b7\u53d6\u8ba4\u8bc1\u4fe1\u606f\u5931\u8d25("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p4, -0x5

    invoke-virtual {p2, p3, v2, p4, p1}, La/a/a/a/b/b;->a(Landroid/content/Context;ZILjava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 37
    sget-object p2, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {}, La/a/a/a/b/b;->a()La/a/a/a/b/b;

    move-result-object p1

    iget-object p2, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    invoke-virtual {p1, p2, v2, v4, v6}, La/a/a/a/b/b;->a(Landroid/content/Context;ZILjava/lang/String;)V

    :goto_2
    return v3

    .line 39
    :cond_a
    :goto_3
    invoke-static {}, La/a/a/a/b/b;->a()La/a/a/a/b/b;

    move-result-object p1

    iget-object p2, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    const-string p3, "ClientId \u7f3a\u5931"

    invoke-virtual {p1, p2, v3, v1, p3}, La/a/a/a/b/b;->a(Landroid/content/Context;ZILjava/lang/String;)V

    .line 40
    sget-object p1, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    const-string p2, "openGameAuth fail,clientId is empty!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 41
    :cond_b
    :goto_4
    sget-object p1, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    const-string p2, "openGameAuth fail,gameAppId is empty!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, La/a/a/a/b/b;->a()La/a/a/a/b/b;

    move-result-object p1

    iget-object p2, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    const-string p3, "AppId \u7f3a\u5931"

    invoke-virtual {p1, p2, v3, v1, p3}, La/a/a/a/b/b;->a(Landroid/content/Context;ZILjava/lang/String;)V

    return v3

    .line 43
    :cond_c
    sget-object p1, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    const-string p2, "openGameAuth fail, DYApiImpl has been detached"

    invoke-static {p1, p2}, La/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "openAuth fail, DYApiImpl has been detached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerDYAPI(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->detached:Z

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    if-eqz v0, :cond_6

    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl$a;

    invoke-direct {v1, v0}, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl$a;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, v0, Landroid/app/Service;

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl$a;

    invoke-direct {v1, v0}, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl$a;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl$a;

    iget-object v1, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl$a;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object v1, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 12
    :cond_2
    sget-object v0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    .line 13
    sget-boolean v1, La/a/a/a/c/a;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "can not registerActivityLifecycleCallbacks"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->context:Landroid/content/Context;

    .line 16
    sput-object p1, La/a/a/a/a/a;->a:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    const-string v2, "daoyu_open_sdk_sp"

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "config_client_id"

    .line 19
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void

    .line 21
    :cond_6
    sget-object p1, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    const-string v0, "registerDYAPI fail,context is null"

    invoke-static {p1, v0}, La/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "registerDYAPI fail, context is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_7
    sget-object p1, Lcom/shengqu/daoyu/opensdk/openapi/DYApiImpl;->TAG:Ljava/lang/String;

    const-string v0, "registerDYAPI fail, DYApiImpl has been detached"

    invoke-static {p1, v0}, La/a/a/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
