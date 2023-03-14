.class public Lcom/tencent/bugly/beta/UpgradeInfo;
.super Ljava/lang/Object;
.source "UpgradeInfo.java"


# instance fields
.field public apkMd5:Ljava/lang/String;

.field public apkUrl:Ljava/lang/String;

.field public fileSize:J

.field public id:Ljava/lang/String;

.field public newFeature:Ljava/lang/String;

.field public popInterval:J

.field public popTimes:I

.field public publishTime:J

.field public publishType:I

.field public title:Ljava/lang/String;

.field public upgradeType:I

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/tencent/bugly/beta/UpgradeInfo;->id:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tencent/bugly/beta/UpgradeInfo;->title:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/tencent/bugly/beta/UpgradeInfo;->newFeature:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Lcom/tencent/bugly/beta/UpgradeInfo;->publishTime:J

    const/4 v3, 0x0

    .line 8
    iput v3, p0, Lcom/tencent/bugly/beta/UpgradeInfo;->publishType:I

    const/4 v4, 0x1

    .line 9
    iput v4, p0, Lcom/tencent/bugly/beta/UpgradeInfo;->upgradeType:I

    .line 10
    iput v3, p0, Lcom/tencent/bugly/beta/UpgradeInfo;->popTimes:I

    .line 11
    iput-wide v1, p0, Lcom/tencent/bugly/beta/UpgradeInfo;->popInterval:J

    .line 13
    iput-object v0, p0, Lcom/tencent/bugly/beta/UpgradeInfo;->versionName:Ljava/lang/String;

    return-void
.end method
