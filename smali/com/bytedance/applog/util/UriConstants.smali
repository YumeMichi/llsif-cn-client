.class public Lcom/bytedance/applog/util/UriConstants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT:I

.field public static final REGION_DEFAULT:I

.field public static final a:Lcom/bytedance/applog/UriConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/bytedance/applog/UriConfig$b;

    invoke-direct {v0}, Lcom/bytedance/applog/UriConfig$b;-><init>()V

    const-string v1, "https://log.snssdk.com/service/2/device_register/"

    .line 1
    iput-object v1, v0, Lcom/bytedance/applog/UriConfig$b;->a:Ljava/lang/String;

    const-string v1, "https://ichannel.snssdk.com/service/2/app_alert_check/"

    .line 2
    iput-object v1, v0, Lcom/bytedance/applog/UriConfig$b;->b:Ljava/lang/String;

    const/4 v1, 0x2

    .line 3
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "https://log.snssdk.com/service/2/app_log/"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "https://applog.snssdk.com/service/2/app_log/"

    aput-object v5, v2, v4

    .line 4
    iput-object v2, v0, Lcom/bytedance/applog/UriConfig$b;->c:[Ljava/lang/String;

    .line 5
    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "https://rtlog.snssdk.com/service/2/app_log/"

    aput-object v5, v2, v3

    const-string v5, "https://rtapplog.snssdk.com/service/2/app_log/"

    aput-object v5, v2, v4

    .line 6
    iput-object v2, v0, Lcom/bytedance/applog/UriConfig$b;->d:[Ljava/lang/String;

    const-string v2, "https://log.snssdk.com/service/2/log_settings/"

    .line 7
    iput-object v2, v0, Lcom/bytedance/applog/UriConfig$b;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig$b;->a()Lcom/bytedance/applog/UriConfig;

    new-instance v0, Lcom/bytedance/applog/UriConfig$b;

    invoke-direct {v0}, Lcom/bytedance/applog/UriConfig$b;-><init>()V

    const-string v2, "https://toblog.ctobsnssdk.com/service/2/device_register/"

    .line 9
    iput-object v2, v0, Lcom/bytedance/applog/UriConfig$b;->a:Ljava/lang/String;

    const-string v2, "https://toblog.ctobsnssdk.com/service/2/app_alert_check/"

    .line 10
    iput-object v2, v0, Lcom/bytedance/applog/UriConfig$b;->b:Ljava/lang/String;

    .line 11
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "https://toblog.ctobsnssdk.com/service/2/app_log/"

    aput-object v2, v1, v3

    const-string v2, "https://tobapplog.ctobsnssdk.com/service/2/app_log/"

    aput-object v2, v1, v4

    .line 12
    iput-object v1, v0, Lcom/bytedance/applog/UriConfig$b;->c:[Ljava/lang/String;

    const-string v1, "https://toblog.ctobsnssdk.com/service/2/log_settings/"

    .line 13
    iput-object v1, v0, Lcom/bytedance/applog/UriConfig$b;->e:Ljava/lang/String;

    const-string v1, "https://toblog.ctobsnssdk.com/service/2/abtest_config/"

    .line 14
    iput-object v1, v0, Lcom/bytedance/applog/UriConfig$b;->f:Ljava/lang/String;

    const-string v1, "https://success.ctobsnssdk.com/service/2/app_log/"

    .line 15
    iput-object v1, v0, Lcom/bytedance/applog/UriConfig$b;->h:Ljava/lang/String;

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/applog/UriConfig$b;->a()Lcom/bytedance/applog/UriConfig;

    move-result-object v0

    sput-object v0, Lcom/bytedance/applog/util/UriConstants;->a:Lcom/bytedance/applog/UriConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createUriConfig(I)Lcom/bytedance/applog/UriConfig;
    .locals 0

    sget-object p0, Lcom/bytedance/applog/util/UriConstants;->a:Lcom/bytedance/applog/UriConfig;

    return-object p0
.end method
