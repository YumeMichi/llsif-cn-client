.class public Lcom/bytedance/applog/y;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final k:[Ljava/lang/String;


# instance fields
.field public a:Z

.field public final b:Landroid/content/Context;

.field public final c:Lcom/bytedance/applog/x;

.field public d:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/applog/t;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/content/SharedPreferences;

.field public g:Lcom/bytedance/applog/s1;

.field public h:I

.field public i:Z

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "channel"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "app_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/applog/y;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/x;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/applog/y;->h:I

    iput-boolean v0, p0, Lcom/bytedance/applog/y;->j:Z

    iput-object p1, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    .line 1
    iget-object p1, p2, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    .line 2
    iput-object p1, p0, Lcom/bytedance/applog/y;->f:Landroid/content/SharedPreferences;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    .line 3
    sget-object p2, Lcom/bytedance/applog/g2;->b:Lcom/bytedance/applog/c2;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Lcom/bytedance/applog/c2;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/applog/p2;

    invoke-virtual {p1}, Lcom/bytedance/applog/p2;->a()V

    .line 4
    iget-object p1, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-static {p1, p2}, Lcom/bytedance/applog/a0;->a(Landroid/content/Context;Lcom/bytedance/applog/x;)Lcom/bytedance/applog/s1;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "unknown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    xor-int/lit8 p0, v1, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lorg/json/JSONObject;
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/applog/y;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v1, "custom"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 5
    iget-object v0, v0, Lcom/bytedance/applog/x;->c:Landroid/content/SharedPreferences;

    const-string v3, "header_custom_info"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v1, "ab_sdk_version"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean p1, Lcom/bytedance/applog/x1;->b:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addExposedVid ready added "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/bytedance/applog/y;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-virtual {v0}, Lcom/bytedance/applog/x;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    .line 7
    iget-object v0, v0, Lcom/bytedance/applog/x;->e:Landroid/content/SharedPreferences;

    const-string v1, "bav_ab_config"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    .line 9
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isAbEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/applog/y;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/bytedance/applog/y;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/bytedance/applog/h1;->a()Lcom/bytedance/applog/h1;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/bytedance/applog/y;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/applog/h1;->onAbVidsChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/applog/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Lcom/bytedance/applog/y1;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string v1, "U SHALL NOT PASS!"

    .line 24
    invoke-static {v1, p1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lcom/bytedance/applog/y;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "custom"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    .line 26
    iget-object v0, v0, Lcom/bytedance/applog/x;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v1, "header_custom_info"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/bytedance/applog/t;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-virtual {v0}, Lcom/bytedance/applog/x;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/bytedance/applog/t;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needSyncFromSub "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    .line 28
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2, v1}, Lcom/bytedance/applog/y1;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v2, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "U SHALL NOT PASS!"

    .line 29
    invoke-static {v2, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :goto_0
    monitor-exit p0

    const/4 v1, 0x1

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    const/4 v1, 0x0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHeader, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move-object/from16 v5, p5

    move-object/from16 v3, p6

    const-string v4, ""

    const-string v6, "device_id"

    const-string v8, "register_time"

    const-string v10, "ssid"

    const-string v11, "install_id"

    const-string v12, "bd_did"

    const-string v13, "version_code"

    sget-boolean v14, Lcom/bytedance/applog/x1;->b:Z

    const-string v15, "saveRegisterInfo, "

    move-object/from16 v16, v10

    const-string v10, ", "

    if-eqz v14, :cond_0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    invoke-static {v10, v14}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    const-string v14, "new_user"

    invoke-virtual {v0, v14, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    if-lez v14, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    iput-boolean v14, v1, Lcom/bytedance/applog/y;->i:Z

    invoke-static/range {p2 .. p2}, Lcom/bytedance/applog/y;->f(Ljava/lang/String;)Z

    move-result v14

    invoke-static/range {p3 .. p3}, Lcom/bytedance/applog/y;->f(Ljava/lang/String;)Z

    move-result v17

    invoke-static/range {p5 .. p5}, Lcom/bytedance/applog/y;->f(Ljava/lang/String;)Z

    move-result v18

    invoke-static/range {p6 .. p6}, Lcom/bytedance/applog/y;->f(Ljava/lang/String;)Z

    move-result v19

    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/bytedance/applog/y;->f(Ljava/lang/String;)Z

    move-result v3

    iget-object v15, v1, Lcom/bytedance/applog/y;->f:Landroid/content/SharedPreferences;

    invoke-interface {v15, v13, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 11
    iget-object v10, v1, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const/4 v9, 0x0

    .line 12
    invoke-virtual {v10, v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    iget-object v9, v1, Lcom/bytedance/applog/y;->f:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    if-eq v15, v10, :cond_2

    invoke-interface {v9, v13, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_2
    if-nez v14, :cond_3

    if-eqz v18, :cond_4

    if-eqz v19, :cond_4

    :cond_3
    if-eqz v17, :cond_4

    move/from16 p6, v3

    move-object v10, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v9, v8, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move/from16 p6, v3

    move-object v10, v4

    if-nez v14, :cond_6

    if-eqz v18, :cond_5

    if-nez v19, :cond_6

    :cond_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "response"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tt_fetch_did_error"

    invoke-static {v0, v3}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 13
    :cond_6
    :goto_2
    iget-object v0, v1, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    check-cast v0, Lcom/bytedance/applog/l1;

    :try_start_1
    invoke-virtual {v0}, Lcom/bytedance/applog/l1;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/bytedance/applog/y;->f:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v12, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-boolean v3, Lcom/bytedance/applog/x1;->b:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "od="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ck="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 15
    invoke-static {v3, v4}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    if-eqz v14, :cond_a

    .line 16
    iget-object v3, v1, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v4, v3}, Lcom/bytedance/applog/y1;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v4, v1, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    .line 17
    iget-object v3, v1, Lcom/bytedance/applog/y;->g:Lcom/bytedance/applog/s1;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    check-cast v3, Lcom/bytedance/applog/l1;

    :try_start_2
    invoke-virtual {v3, v2}, Lcom/bytedance/applog/l1;->a(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v15, 0x1

    goto :goto_4

    :cond_9
    move v15, v3

    goto :goto_4

    :cond_a
    const/4 v15, 0x0

    :goto_4
    if-eqz v18, :cond_b

    invoke-virtual {v1, v12, v5}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9, v12, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v15, 0x1

    .line 19
    :cond_b
    iget-object v0, v1, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    move-object v2, v10

    .line 20
    invoke-virtual {v0, v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v17, :cond_c

    invoke-virtual {v1, v11, v7}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v15, 0x1

    .line 21
    :cond_c
    iget-object v0, v1, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    move-object/from16 v3, v16

    .line 22
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p6, :cond_d

    move-object/from16 v10, p4

    const/4 v11, 0x0

    :try_start_3
    invoke-virtual {v1, v3, v10}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v9, v3, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    move-object/from16 v10, p4

    const/4 v11, 0x0

    :cond_e
    move v3, v15

    :goto_5
    invoke-static {}, Lcom/bytedance/applog/h1;->a()Lcom/bytedance/applog/h1;

    move-result-object v2

    move-object v4, v8

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    move-object v8, v0

    move-object v0, v9

    move-object/from16 v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/bytedance/applog/h1;->onRemoteIdGet(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v11, 0x0

    :goto_6
    const-string v2, "U SHALL NOT PASS!"

    .line 23
    invoke-static {v2, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    if-nez v14, :cond_f

    if-eqz v18, :cond_10

    if-eqz v19, :cond_10

    :cond_f
    if-eqz v17, :cond_10

    const/4 v11, 0x1

    :cond_10
    return v11
.end method

.method public final b(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/bytedance/applog/y;->a:Z

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized b(Lorg/json/JSONObject;)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "null abconfig"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v1, "ab_sdk_version"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/bytedance/applog/y;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    :try_start_1
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "vid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "U SHALL NOT PASS!"

    .line 5
    invoke-static {v5, v4}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-virtual {p1}, Lcom/bytedance/applog/x;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/applog/y;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v1}, Lcom/bytedance/applog/y;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/applog/y;->d(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1, p1}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public c()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v1, ""

    const-string v2, "device_id"

    .line 2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v3, "install_id"

    .line 4
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v4, "bd_did"

    .line 6
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/bytedance/applog/y;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/bytedance/applog/y;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {v2}, Lcom/bytedance/applog/y;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/applog/y;->f:Landroid/content/SharedPreferences;

    const-string v1, "version_code"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const/4 v3, -0x1

    .line 8
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_2
    return v3
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/applog/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1, v0}, Lcom/bytedance/applog/y1;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/bytedance/applog/y;->a(Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/applog/y;->a:Z

    const-string v1, "user_unique_id"

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, v0, Lcom/bytedance/applog/x;->c:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 4
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v1, "device_id"

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ab_sdk_version"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    .line 7
    iget-object v1, v1, Lcom/bytedance/applog/x;->c:Landroid/content/SharedPreferences;

    invoke-static {v1, v0, p1}, Lcom/bytedance/applog/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e()I
    .locals 5

    iget-boolean v0, p0, Lcom/bytedance/applog/y;->a:Z

    const-string v1, "version_code"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/applog/y;->g()Z

    iget-boolean v0, p0, Lcom/bytedance/applog/y;->a:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-virtual {v0}, Lcom/bytedance/applog/x;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/applog/y;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v2, "ab_sdk_version"

    .line 6
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/applog/y;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/bytedance/applog/y;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-virtual {v0, p1}, Lcom/bytedance/applog/x;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bytedance/applog/y;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/applog/y;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/bytedance/applog/y;->a:Z

    const-string v1, "app_version"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/applog/y;->g()Z

    iget-boolean v0, p0, Lcom/bytedance/applog/y;->a:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public g()Z
    .locals 13

    iget-object v0, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/u;

    iget-object v3, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/applog/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/w;

    iget-object v3, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/applog/w;-><init>(Landroid/content/Context;Lcom/bytedance/applog/x;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/b0;

    iget-object v3, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/applog/b0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/c0;

    iget-object v3, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/applog/c0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/i0;

    iget-object v3, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-direct {v2, v3, v4, p0}, Lcom/bytedance/applog/i0;-><init>(Landroid/content/Context;Lcom/bytedance/applog/x;Lcom/bytedance/applog/y;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/d0;

    iget-object v3, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/applog/d0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/g0;

    iget-object v3, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/applog/g0;-><init>(Landroid/content/Context;Lcom/bytedance/applog/x;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/h0;

    invoke-direct {v2}, Lcom/bytedance/applog/h0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/j0;

    iget-object v3, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-direct {v2, v3, p0}, Lcom/bytedance/applog/j0;-><init>(Lcom/bytedance/applog/x;Lcom/bytedance/applog/y;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/k0;

    iget-object v3, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/applog/k0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/l0;

    iget-object v3, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/applog/l0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/z;

    iget-object v3, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/bytedance/applog/z;-><init>(Landroid/content/Context;Lcom/bytedance/applog/y;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/e0;

    iget-object v3, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/applog/e0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/f0;

    iget-object v3, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-direct {v2, v3, v4}, Lcom/bytedance/applog/f0;-><init>(Landroid/content/Context;Lcom/bytedance/applog/x;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/v;

    iget-object v3, p0, Lcom/bytedance/applog/y;->c:Lcom/bytedance/applog/x;

    invoke-direct {v2, v3}, Lcom/bytedance/applog/v;-><init>(Lcom/bytedance/applog/x;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    new-instance v2, Lcom/bytedance/applog/r;

    iget-object v3, p0, Lcom/bytedance/applog/y;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/bytedance/applog/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1
    iget-object v0, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v0}, Lcom/bytedance/applog/y1;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/applog/y;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v8, 0xa

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/applog/t;

    iget-boolean v9, v7, Lcom/bytedance/applog/t;->a:Z

    if-eqz v9, :cond_1

    iget-boolean v9, v7, Lcom/bytedance/applog/t;->c:Z

    if-nez v9, :cond_1

    invoke-virtual {p0, v7}, Lcom/bytedance/applog/y;->a(Lcom/bytedance/applog/t;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_1
    :try_start_1
    invoke-virtual {v7, v1}, Lcom/bytedance/applog/t;->a(Lorg/json/JSONObject;)Z

    move-result v9

    iput-boolean v9, v7, Lcom/bytedance/applog/t;->a:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    iget-boolean v10, v7, Lcom/bytedance/applog/t;->b:Z

    if-nez v10, :cond_2

    add-int/lit8 v5, v5, 0x1

    const-string v10, "loadHeader, "

    invoke-static {v10}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/bytedance/applog/y;->h:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3
    invoke-static {v10, v9}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-boolean v9, v7, Lcom/bytedance/applog/t;->a:Z

    if-nez v9, :cond_2

    iget v9, p0, Lcom/bytedance/applog/y;->h:I

    if-le v9, v8, :cond_2

    iput-boolean v3, v7, Lcom/bytedance/applog/t;->a:Z

    goto :goto_1

    :catch_1
    move-exception v8

    const-string v9, "U SHALL NOT PASS!"

    .line 5
    invoke-static {v9, v8}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_2
    :goto_1
    iget-boolean v8, v7, Lcom/bytedance/applog/t;->a:Z

    if-nez v8, :cond_3

    iget-boolean v8, v7, Lcom/bytedance/applog/t;->b:Z

    if-nez v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    :cond_3
    iget-boolean v8, v7, Lcom/bytedance/applog/t;->a:Z

    if-nez v8, :cond_5

    iget-boolean v7, v7, Lcom/bytedance/applog/t;->b:Z

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, 0x1

    :goto_3
    and-int/2addr v4, v7

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    if-eqz v4, :cond_8

    sget-object v7, Lcom/bytedance/applog/y;->k:[Ljava/lang/String;

    array-length v9, v7

    :goto_4
    if-ge v2, v9, :cond_8

    aget-object v10, v7, v2

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/lit8 v12, v11, 0x1

    and-int/2addr v4, v12

    if-eqz v11, :cond_7

    const-string v11, "loadHeader, "

    invoke-static {v11}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/bytedance/applog/y;->a:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 7
    invoke-static {v10, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 8
    :cond_8
    iget-object v2, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p0, v7, v9}, Lcom/bytedance/applog/y;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    iput-boolean v4, p0, Lcom/bytedance/applog/y;->a:Z

    sget-boolean v1, Lcom/bytedance/applog/x1;->b:Z

    if-eqz v1, :cond_a

    const-string v1, "loadHeader, "

    invoke-static {v1}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/applog/y;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/applog/y;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    const-string v1, "loadHeader, "

    invoke-static {v1}, Lcom/bytedance/applog/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/applog/y;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/applog/y;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    if-lez v5, :cond_b

    if-ne v5, v6, :cond_b

    .line 10
    iget v0, p0, Lcom/bytedance/applog/y;->h:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/bytedance/applog/y;->h:I

    invoke-virtual {p0}, Lcom/bytedance/applog/y;->c()I

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/bytedance/applog/y;->h:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/bytedance/applog/y;->h:I

    :cond_b
    iget-boolean v0, p0, Lcom/bytedance/applog/y;->a:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/bytedance/applog/h1;->a()Lcom/bytedance/applog/h1;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDid()Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v3, "install_id"

    const-string v4, ""

    .line 12
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/bytedance/applog/y;->d:Lorg/json/JSONObject;

    const-string v4, "ssid"

    const-string v5, ""

    .line 14
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/applog/h1;->onIdLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-boolean v0, p0, Lcom/bytedance/applog/y;->a:Z

    return v0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/y;->j:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
