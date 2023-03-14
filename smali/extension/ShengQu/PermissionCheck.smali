.class public Lextension/ShengQu/PermissionCheck;
.super Ljava/lang/Object;
.source "PermissionCheck.java"


# static fields
.field public static appPermissionsList:[Ljava/lang/String; = null

.field public static final basePermission:I = 0x471c06f


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lextension/ShengQu/PermissionCheck;->appPermissionsList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RequestAppPermissions(Landroid/content/Context;)V
    .locals 2

    .line 64
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 65
    invoke-static {p0}, Lextension/ShengQu/PermissionCheck;->lacksPermissions(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 67
    sget-object p0, Lextension/ShengQu/PermissionCheck;->appPermissionsList:[Ljava/lang/String;

    const v1, 0x471c06f

    invoke-static {v0, p0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p0, "Permissions"

    const-string v0, "appPermissionsList: \u6743\u9650\u5df2\u7ecf\u83b7\u5f97"

    .line 71
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static Start(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-static {p0}, Lextension/ShengQu/PermissionCheck;->lacksPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p0}, Lextension/ShengQu/PermissionCheck;->RequestAppPermissions(Landroid/content/Context;)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object p0

    invoke-virtual {p0}, Lextension/ShengQu/GHomeExtension;->InitGHome()V

    :goto_0
    return-void
.end method

.method private static lacksPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 58
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lacksPermissions(Landroid/content/Context;)Z
    .locals 5

    .line 49
    sget-object v0, Lextension/ShengQu/PermissionCheck;->appPermissionsList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 50
    invoke-static {p0, v4}, Lextension/ShengQu/PermissionCheck;->lacksPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 1

    .line 77
    invoke-static {}, Lcom/ghome/sdk/GHome;->getInstance()Lcom/ghome/sdk/GHome;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ghome/sdk/GHome;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    const p0, 0x471c06f

    if-eq p1, p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 86
    :goto_0
    array-length p1, p2

    if-ge p0, p1, :cond_1

    .line 87
    aget p1, p3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-static {}, Lextension/ShengQu/GHomeExtension;->getInstance()Lextension/ShengQu/GHomeExtension;

    move-result-object p0

    invoke-virtual {p0}, Lextension/ShengQu/GHomeExtension;->InitGHome()V

    return-void
.end method
