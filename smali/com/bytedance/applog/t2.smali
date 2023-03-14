.class public final Lcom/bytedance/applog/t2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/q2;


# static fields
.field public static final b:Ljava/lang/String;

.field public static final c:Lcom/bytedance/applog/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/applog/c2<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/bytedance/dr/VivoIdentifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "cGVyc2lzdC5zeXMuaWRlbnRpZmllcmlkLnN1cHBvcnRlZA=="

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, ""

    .line 2
    :goto_0
    sput-object v1, Lcom/bytedance/applog/t2;->b:Ljava/lang/String;

    new-instance v0, Lcom/bytedance/applog/t2$a;

    invoke-direct {v0}, Lcom/bytedance/applog/t2$a;-><init>()V

    sput-object v0, Lcom/bytedance/applog/t2;->c:Lcom/bytedance/applog/c2;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    :try_start_0
    sget-object v0, Lcom/bun/miitmdid/core/JLibrary;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/bun/miitmdid/core/JLibrary;->InitEntry(Landroid/content/Context;)Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :catchall_0
    :cond_0
    :try_start_1
    new-instance v0, Lcom/bytedance/dr/VivoIdentifier;

    invoke-direct {v0}, Lcom/bytedance/dr/VivoIdentifier;-><init>()V

    iput-object v0, p0, Lcom/bytedance/applog/t2;->a:Lcom/bytedance/dr/VivoIdentifier;

    iget-object v0, p0, Lcom/bytedance/applog/t2;->a:Lcom/bytedance/dr/VivoIdentifier;

    invoke-virtual {v0, p1}, Lcom/bytedance/dr/VivoIdentifier;->preloadOaid(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "OaidVivo"

    .line 3
    invoke-static {v1, p1, v0}, Lcom/bytedance/applog/h2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Lcom/bytedance/applog/t2;->c:Lcom/bytedance/applog/c2;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/applog/c2;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bytedance/applog/q2$a;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/t2;->a:Lcom/bytedance/dr/VivoIdentifier;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/dr/VivoIdentifier;->getOaid(Landroid/content/Context;)Lcom/bytedance/applog/q2$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object p1, Lcom/bytedance/applog/t2;->c:Lcom/bytedance/applog/c2;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/bytedance/applog/c2;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
