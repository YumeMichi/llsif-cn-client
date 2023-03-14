.class public Lcom/bytedance/applog/a0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile a:Lcom/bytedance/applog/s1;

.field public static b:Lcom/bytedance/applog/t0;

.field public static c:Lcom/bytedance/applog/x;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public static final d:Ljava/lang/Object;

.field public static e:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/applog/a0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/applog/x;)Lcom/bytedance/applog/s1;
    .locals 8

    sget-object v0, Lcom/bytedance/applog/a0;->a:Lcom/bytedance/applog/s1;

    if-nez v0, :cond_3

    const-class v0, Lcom/bytedance/applog/a0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/applog/a0;->a:Lcom/bytedance/applog/s1;

    if-nez v1, :cond_2

    if-eqz p0, :cond_1

    sput-object p1, Lcom/bytedance/applog/a0;->c:Lcom/bytedance/applog/x;

    invoke-static {p0}, Lcom/bytedance/applog/a0;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/bytedance/applog/a0;->b(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string v1, "com.bytedance.applog.manager.newuser.DeviceParamsProvider"

    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/bytedance/applog/t0;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/bytedance/applog/x;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    sget-object v3, Lcom/bytedance/applog/a0;->b:Lcom/bytedance/applog/t0;

    aput-object v3, v2, v6

    aput-object p1, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/applog/s1;

    sput-object v1, Lcom/bytedance/applog/a0;->a:Lcom/bytedance/applog/s1;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "DeviceRegisterParameterFactory create new user device param provider success"

    const/4 v2, 0x0

    .line 1
    :try_start_2
    invoke-static {v1, v2}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v2, "DeviceRegisterParameterFactoryclass com.bytedance.applog.manager.newuser.DeviceParamsProvider not fount"

    .line 3
    :try_start_4
    invoke-static {v2, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/applog/a0;->a:Lcom/bytedance/applog/s1;

    if-nez v1, :cond_2

    new-instance v1, Lcom/bytedance/applog/l1;

    sget-object v2, Lcom/bytedance/applog/a0;->b:Lcom/bytedance/applog/t0;

    invoke-direct {v1, p0, p1, v2}, Lcom/bytedance/applog/l1;-><init>(Landroid/content/Context;Lcom/bytedance/applog/x;Lcom/bytedance/applog/t0;)V

    sput-object v1, Lcom/bytedance/applog/a0;->a:Lcom/bytedance/applog/s1;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_3
    :goto_2
    sget-object p0, Lcom/bytedance/applog/a0;->a:Lcom/bytedance/applog/s1;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Z)Ljava/lang/CharSequence;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/applog/m1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/bytedance/applog/a0;->b:Lcom/bytedance/applog/t0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/applog/t0;

    invoke-direct {v0, p0}, Lcom/bytedance/applog/t0;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/applog/a0;->b:Lcom/bytedance/applog/t0;

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Lcom/bytedance/applog/a0;->c:Lcom/bytedance/applog/x;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/bytedance/applog/x;->b:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_test"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceRegisterParameterFactory#saveNewUserModeToAccount open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p0}, Lcom/bytedance/applog/a0;->a(Landroid/content/Context;)V

    :try_start_0
    sget-object p0, Lcom/bytedance/applog/a0;->b:Lcom/bytedance/applog/t0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "new_user"

    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/applog/t0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/bytedance/applog/a0;->a()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/bytedance/applog/a0;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/applog/a0;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/bytedance/applog/a0;->d(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/applog/a0;->c(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    if-eq v2, v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {p0, v2}, Lcom/bytedance/applog/a0;->b(Landroid/content/Context;Z)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/applog/a0;->c(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/bytedance/applog/a0;->e:Ljava/lang/Boolean;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceRegisterParameterFactory#isNewUserMode() returned: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/bytedance/applog/a0;->e:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    :cond_2
    sget-object p0, Lcom/bytedance/applog/a0;->e:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "DeviceRegisterParameterFactory#isNewUserModeAccount"

    .line 1
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-static {p0}, Lcom/bytedance/applog/a0;->a(Landroid/content/Context;)V

    :try_start_0
    sget-object p0, Lcom/bytedance/applog/a0;->b:Lcom/bytedance/applog/t0;

    const-string v2, "new_user"

    invoke-virtual {p0, v2}, Lcom/bytedance/applog/t0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    invoke-static {v1, p0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/bytedance/applog/a0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/applog/a0;->b(Landroid/content/Context;Z)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceRegisterParameterFactory#saveNewUserModeToClipboard open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_0
    const-string v0, "clipboard"

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const-string v2, ""

    :try_start_1
    invoke-static {p0, p1}, Lcom/bytedance/applog/a0;->a(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p0, "DeviceRegisterParameterFactory#saveNewUserModeToClipboard success"

    .line 8
    :try_start_2
    invoke-static {p0, v1}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "DeviceRegisterParameterFactory#saveNewUserModeToClipboard failed"

    .line 10
    invoke-static {v0, p0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/applog/a0;->d:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/bytedance/applog/a0;->e:Ljava/lang/Boolean;

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "DeviceRegisterParameterFactory#isNewUserModeClipboard"

    .line 1
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_0
    const-string v1, "clipboard"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceRegisterParameterFactory#isNewUserModeClipboard clipboard text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x1

    .line 4
    invoke-static {p0, v3}, Lcom/bytedance/applog/a0;->a(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, v2}, Lcom/bytedance/applog/a0;->a(Landroid/content/Context;Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "DeviceRegisterParameterFactory#isNewUserModeClipboard failed"

    .line 5
    invoke-static {v1, p0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object p0, v0

    .line 6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceRegisterParameterFactory#isNewUserModeClipboard result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Lcom/bytedance/applog/x1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method
