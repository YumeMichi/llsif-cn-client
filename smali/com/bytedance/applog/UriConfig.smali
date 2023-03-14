.class public Lcom/bytedance/applog/UriConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/applog/UriConfig$b;
    }
.end annotation


# static fields
.field public static final PATH_AB:Ljava/lang/String; = "/service/2/abtest_config/"

.field public static final PATH_ACTIVE:Ljava/lang/String; = "/service/2/app_alert_check/"

.field public static final PATH_CONFIG:Ljava/lang/String; = "/service/2/log_settings/"

.field public static final PATH_REGISTER:Ljava/lang/String; = "/service/2/device_register/"

.field public static final PATH_SEND:Ljava/lang/String; = "/service/2/app_log/"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/applog/UriConfig$b;Lcom/bytedance/applog/UriConfig$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->a:Ljava/lang/String;

    .line 4
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$b;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->b:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$b;->c:[Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->c:[Ljava/lang/String;

    .line 8
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$b;->d:[Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->d:[Ljava/lang/String;

    .line 10
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$b;->e:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->e:Ljava/lang/String;

    .line 12
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$b;->f:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->f:Ljava/lang/String;

    .line 14
    iget-object p2, p1, Lcom/bytedance/applog/UriConfig$b;->g:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/bytedance/applog/UriConfig;->g:Ljava/lang/String;

    .line 16
    iget-object p1, p1, Lcom/bytedance/applog/UriConfig$b;->h:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/bytedance/applog/UriConfig;->h:Ljava/lang/String;

    return-void
.end method

.method public static createByDomain(Ljava/lang/String;[Ljava/lang/String;)Lcom/bytedance/applog/UriConfig;
    .locals 6

    new-instance v0, Lcom/bytedance/applog/UriConfig$b;

    invoke-direct {v0}, Lcom/bytedance/applog/UriConfig$b;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/service/2/device_register/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1
    iput-object v1, v0, Lcom/bytedance/applog/UriConfig$b;->a:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/service/2/app_alert_check/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Lcom/bytedance/applog/UriConfig$b;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/service/2/app_log/"

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 4
    array-length v4, p1

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    array-length v4, p1

    add-int/2addr v4, v3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    :goto_0
    array-length v1, v4

    if-ge v3, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v3, -0x1

    aget-object v5, p1, v5

    invoke-static {v1, v5, v2}, Lcom/bytedance/applog/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iput-object v4, v0, Lcom/bytedance/applog/UriConfig$b;->c:[Ljava/lang/String;

    goto :goto_2

    .line 6
    :cond_2
    :goto_1
    new-array p1, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 7
    iput-object p1, v0, Lcom/bytedance/applog/UriConfig$b;->c:[Ljava/lang/String;

    .line 8
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/service/2/log_settings/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    iput-object p1, v0, Lcom/bytedance/applog/UriConfig$b;->e:Ljava/lang/String;

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/service/2/abtest_config/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    iput-object p0, v0, Lcom/bytedance/applog/UriConfig$b;->f:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig$b;->a()Lcom/bytedance/applog/UriConfig;

    move-result-object p0

    return-object p0
.end method

.method public static createUriConfig(I)Lcom/bytedance/applog/UriConfig;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/applog/util/UriConstants;->createUriConfig(I)Lcom/bytedance/applog/UriConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAbUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMonitorUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getRealUris()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSendUris()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->c:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/UriConfig;->e:Ljava/lang/String;

    return-object v0
.end method
