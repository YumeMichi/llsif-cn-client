.class public Lcom/greport/glog/GLogConfig;
.super Ljava/lang/Object;
.source "GLogConfig.java"


# static fields
.field static GAPP_ID:I = 0x0

.field public static final GPOP_LOG_FILE_NAME:Ljava/lang/String; = "GPOPGUIDLog.txt"

.field public static GPOP_UPLOAD_URL:Ljava/lang/String; = "http://192.168.1.12:8080/report/ge/app"

.field public static IS_CACHE:Z = true

.field public static IS_GPOP_TEST:Z = false

.field static final MAX_REPORT_INTERVAL:I = 0x493e0

.field static MAX_REPORT_SIZE:I = 0xa

.field static RAPP_ID:I = 0x0

.field public static final TAG:Ljava/lang/String; = "GLog"

.field static UPLOAD_ERROR_URL_PREFIX:Ljava/lang/String; = "http://192.168.1.12:8080/report/ge/app"

.field public static UPLOAD_URL:Ljava/lang/String; = "http://192.168.1.12:8080/report/ge/app"

.field static UPLOAD_URL_ANR:Ljava/lang/String; = "http://192.168.1.12:8080/report/ge/app"

.field public static final rsdk_version:Ljava/lang/String; = "1.0.1"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxReportSize()I
    .locals 1

    .line 33
    sget v0, Lcom/greport/glog/GLogConfig;->MAX_REPORT_SIZE:I

    return v0
.end method

.method public static setMaxReportSize(I)V
    .locals 0

    .line 37
    sput p0, Lcom/greport/glog/GLogConfig;->MAX_REPORT_SIZE:I

    return-void
.end method
