.class public Lklb/android/GameEngine/RClassReference;
.super Ljava/lang/Object;
.source "RClassReference.java"


# static fields
.field private static app_name:I

.field private static app_name_string:Ljava/lang/String;

.field private static backtrace_token_string:Ljava/lang/String;

.field private static backtrace_url_string:Ljava/lang/String;

.field private static ic_launcher:I

.field private static indicator:I

.field private static klb_extensions_string:Ljava/lang/String;

.field private static notificationChannelId:Ljava/lang/String;

.field private static notificationChannelName:Ljava/lang/String;

.field private static sAdUnitID:Ljava/lang/String;

.field private static server_client_id_string:Ljava/lang/String;

.field private static stringMap:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lklb/android/GameEngine/RClassReference;->stringMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fetchString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 112
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    .line 113
    sget-object v0, Lklb/android/GameEngine/RClassReference;->stringMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 122
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 117
    :catch_1
    sget-object p0, Lklb/android/GameEngine/RClassReference;->stringMap:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public static getAdUnitID()Ljava/lang/String;
    .locals 1

    .line 137
    sget-object v0, Lklb/android/GameEngine/RClassReference;->sAdUnitID:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppName()I
    .locals 1

    .line 146
    sget v0, Lklb/android/GameEngine/RClassReference;->app_name:I

    return v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 205
    sget v0, Lklb/android/GameEngine/RClassReference;->app_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppNameString()Ljava/lang/String;
    .locals 1

    .line 155
    sget-object v0, Lklb/android/GameEngine/RClassReference;->app_name_string:Ljava/lang/String;

    return-object v0
.end method

.method public static getBacktraceTokenString()Ljava/lang/String;
    .locals 1

    .line 158
    sget-object v0, Lklb/android/GameEngine/RClassReference;->backtrace_token_string:Ljava/lang/String;

    return-object v0
.end method

.method public static getBacktraceURLString()Ljava/lang/String;
    .locals 1

    .line 159
    sget-object v0, Lklb/android/GameEngine/RClassReference;->backtrace_url_string:Ljava/lang/String;

    return-object v0
.end method

.method public static getICLauncher()I
    .locals 1

    .line 195
    sget v0, Lklb/android/GameEngine/RClassReference;->ic_launcher:I

    return v0
.end method

.method public static getIndicator()I
    .locals 1

    .line 186
    sget v0, Lklb/android/GameEngine/RClassReference;->indicator:I

    return v0
.end method

.method public static getKlbExtensionsString()Ljava/lang/String;
    .locals 1

    .line 168
    sget-object v0, Lklb/android/GameEngine/RClassReference;->klb_extensions_string:Ljava/lang/String;

    return-object v0
.end method

.method public static getNotificationChannelId()Ljava/lang/String;
    .locals 1

    .line 132
    sget-object v0, Lklb/android/GameEngine/RClassReference;->notificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public static getNotificationChannelName()Ljava/lang/String;
    .locals 1

    .line 129
    sget-object v0, Lklb/android/GameEngine/RClassReference;->notificationChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public static getServerClientId()Ljava/lang/String;
    .locals 1

    .line 161
    sget-object v0, Lklb/android/GameEngine/RClassReference;->server_client_id_string:Ljava/lang/String;

    return-object v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 176
    sget-object v0, Lklb/android/GameEngine/RClassReference;->stringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    .line 46
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".R$string"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "app_name"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lklb/android/GameEngine/RClassReference;->app_name:I

    .line 49
    sget v1, Lklb/android/GameEngine/RClassReference;->app_name:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lklb/android/GameEngine/RClassReference;->app_name_string:Ljava/lang/String;

    .line 50
    sput-object v2, Lklb/android/GameEngine/RClassReference;->backtrace_token_string:Ljava/lang/String;

    .line 51
    sput-object v2, Lklb/android/GameEngine/RClassReference;->backtrace_url_string:Ljava/lang/String;

    .line 52
    sput-object v2, Lklb/android/GameEngine/RClassReference;->klb_extensions_string:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "klb_extensions"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 56
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lklb/android/GameEngine/RClassReference;->klb_extensions_string:Ljava/lang/String;

    const-string v1, "notification_channel_name"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 61
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lklb/android/GameEngine/RClassReference;->notificationChannelName:Ljava/lang/String;

    const-string v1, "notification_channel_id"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 65
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lklb/android/GameEngine/RClassReference;->notificationChannelId:Ljava/lang/String;

    const-string v1, "Ad_Unit_ID"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 71
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lklb/android/GameEngine/RClassReference;->sAdUnitID:Ljava/lang/String;

    const-string v1, "server_client_id"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 76
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lklb/android/GameEngine/RClassReference;->server_client_id_string:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :try_start_2
    const-string v1, "install_dialog_message"

    .line 82
    invoke-static {p0, v0, v1}, Lklb/android/GameEngine/RClassReference;->fetchString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Z

    const-string v1, "install_dialog_title"

    .line 83
    invoke-static {p0, v0, v1}, Lklb/android/GameEngine/RClassReference;->fetchString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Z

    const-string v1, "bootup_stopped"

    .line 84
    invoke-static {p0, v0, v1}, Lklb/android/GameEngine/RClassReference;->fetchString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Z

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".R$layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "indicator"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lklb/android/GameEngine/RClassReference;->indicator:I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".R$drawable"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "app_icon"

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 94
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    sput p0, Lklb/android/GameEngine/RClassReference;->ic_launcher:I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
