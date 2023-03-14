.class Lcom/greport/glog/RecordSaver;
.super Ljava/lang/Object;
.source "RecordSaver.java"


# static fields
.field private static final CUR_RECORD_FILE_FIRST_RECORD_TIMESTAMP:Ljava/lang/String; = "CUR_RECORD_FILE_FIRST_RECORD_TIMESTAMP"

.field private static final CUR_RECORD_FILE_NAME:Ljava/lang/String; = "CUR_RECORD_FILE_NAME_GLOG"

.field private static final CUR_RECORD_FILE_RECORD_COUNT:Ljava/lang/String; = "CUR_RECORD_FILE_RECORD_COUNT"

.field private static instance:Lcom/greport/glog/RecordSaver;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private appInfo:Lcom/greport/glog/model/AppInfo;

.field private context:Landroid/content/Context;

.field private curRecordFileFirstRecordTimeStamp:J

.field private curRecordFileName:Ljava/lang/String;

.field private curRecordFileRecordCount:I

.field private deviceInfo:Lcom/greport/glog/model/DeviceInfo;

.field private hasSchedule:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/greport/glog/RecordSaver;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 44
    iput-wide v0, p0, Lcom/greport/glog/RecordSaver;->curRecordFileFirstRecordTimeStamp:J

    const/4 v2, 0x0

    .line 46
    iput v2, p0, Lcom/greport/glog/RecordSaver;->curRecordFileRecordCount:I

    .line 48
    iput-boolean v2, p0, Lcom/greport/glog/RecordSaver;->hasSchedule:Z

    .line 54
    iput-object p1, p0, Lcom/greport/glog/RecordSaver;->context:Landroid/content/Context;

    .line 55
    new-instance v3, Lcom/greport/glog/model/DeviceInfo;

    invoke-direct {v3, p1}, Lcom/greport/glog/model/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/greport/glog/RecordSaver;->deviceInfo:Lcom/greport/glog/model/DeviceInfo;

    .line 59
    invoke-static {p1}, Lcom/greport/glog/util/SPUtils;->getGAgentSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "CUR_RECORD_FILE_NAME_GLOG"

    .line 60
    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "CUR_RECORD_FILE_RECORD_COUNT"

    const-string v6, "CUR_RECORD_FILE_FIRST_RECORD_TIMESTAMP"

    if-eqz v4, :cond_0

    .line 61
    invoke-interface {p1, v6, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/greport/glog/RecordSaver;->curRecordFileFirstRecordTimeStamp:J

    const-string v0, ""

    .line 62
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/greport/glog/RecordSaver;->curRecordFileName:Ljava/lang/String;

    .line 63
    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/greport/glog/RecordSaver;->curRecordFileRecordCount:I

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 66
    invoke-direct {p0}, Lcom/greport/glog/RecordSaver;->genNewFileName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/greport/glog/RecordSaver;->curRecordFileName:Ljava/lang/String;

    .line 67
    iget-object v4, p0, Lcom/greport/glog/RecordSaver;->curRecordFileName:Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {p1, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/greport/glog/RecordSaver;ILjava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/greport/glog/RecordSaver;->addRecord(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/greport/glog/RecordSaver;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/greport/glog/RecordSaver;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/greport/glog/RecordSaver;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/greport/glog/RecordSaver;->hasSchedule:Z

    return p1
.end method

.method static synthetic access$300(Lcom/greport/glog/RecordSaver;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/greport/glog/RecordSaver;->finishCurRecordFileAndCreateNewOne()V

    return-void
.end method

.method private addRecord(ILjava/lang/String;)V
    .locals 7

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLog"

    invoke-static {v1, v0}, Lcom/greport/glog/util/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/16 v1, 0x29a

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    const/16 v0, 0x29a

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    const-string v4, "\'"

    const-string v5, "\\\\x27"

    .line 135
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 137
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/greport/glog/RecordSaver;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/greport/glog/FileHelper;->getRecordDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/greport/glog/RecordSaver;->curRecordFileName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 150
    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v1, p0, Lcom/greport/glog/RecordSaver;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/greport/glog/FileHelper;->getRecordDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iget-object v5, p0, Lcom/greport/glog/RecordSaver;->curRecordFileName:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 159
    :goto_1
    invoke-static {p2, v4}, Lcom/greport/glog/FileHelper;->saveRecord(Ljava/lang/String;Ljava/io/File;)V

    const/4 p2, 0x0

    if-ne v0, v3, :cond_3

    .line 166
    invoke-direct {p0, p2}, Lcom/greport/glog/RecordSaver;->finishErrorRecordFile(Ljava/lang/String;)V

    return-void

    :cond_3
    if-ne v0, v2, :cond_4

    .line 171
    invoke-direct {p0, p2}, Lcom/greport/glog/RecordSaver;->finishAnrRecordFile(Ljava/lang/String;)V

    return-void

    :cond_4
    if-eq p1, v2, :cond_8

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8

    const/4 p2, 0x5

    if-eq p1, p2, :cond_8

    const/4 p2, 0x6

    if-ne p1, p2, :cond_5

    goto :goto_3

    .line 189
    :cond_5
    iget p1, p0, Lcom/greport/glog/RecordSaver;->curRecordFileRecordCount:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/greport/glog/RecordSaver;->curRecordFileRecordCount:I

    if-nez p1, :cond_6

    .line 190
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/greport/glog/RecordSaver;->curRecordFileFirstRecordTimeStamp:J

    .line 193
    :cond_6
    invoke-direct {p0}, Lcom/greport/glog/RecordSaver;->curRecordFileCanReport()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 198
    invoke-direct {p0}, Lcom/greport/glog/RecordSaver;->finishCurRecordFileAndCreateNewOne()V

    goto :goto_2

    .line 200
    :cond_7
    invoke-direct {p0}, Lcom/greport/glog/RecordSaver;->saveCurState()V

    .line 201
    invoke-direct {p0}, Lcom/greport/glog/RecordSaver;->startThreadToReport()V

    .line 204
    :goto_2
    iget-object p1, p0, Lcom/greport/glog/RecordSaver;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/greport/glog/UploadManager;->getInstance(Landroid/content/Context;)Lcom/greport/glog/UploadManager;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lcom/greport/glog/UploadManager;->uploadRecordsIfNeeded()V

    .line 206
    invoke-virtual {p1}, Lcom/greport/glog/UploadManager;->uploadErrorRecordsIfNeeded()V

    .line 207
    invoke-virtual {p1}, Lcom/greport/glog/UploadManager;->uploadAnrRecordsIfNeeded()V

    :cond_8
    :goto_3
    return-void
.end method

.method private addRecordAsync(ILjava/lang/String;)V
    .locals 1

    .line 90
    sget-boolean v0, Lcom/greport/glog/GLogConfig;->IS_CACHE:Z

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Lcom/greport/glog/RecordSaver$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/greport/glog/RecordSaver$1;-><init>(Lcom/greport/glog/RecordSaver;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/greport/glog/util/ExecutorUtil;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Lcom/greport/glog/RecordSaver$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/greport/glog/RecordSaver$2;-><init>(Lcom/greport/glog/RecordSaver;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/greport/glog/util/ExecutorUtil;->execute(Ljava/lang/Runnable;)V

    .line 107
    :goto_0
    sget-boolean v0, Lcom/greport/glog/GLogConfig;->IS_GPOP_TEST:Z

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Lcom/greport/glog/RecordSaver$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/greport/glog/RecordSaver$3;-><init>(Lcom/greport/glog/RecordSaver;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/greport/glog/util/ExecutorUtil;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private createDeviceInfoKv(ILjava/lang/String;JLjava/lang/String;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/greport/glog/Kv;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 409
    new-instance p2, Lcom/greport/glog/Kv;

    invoke-static {p3, p4}, Lcom/greport/glog/util/TimeHelper;->getISO8601Timestamp(J)Ljava/lang/String;

    move-result-object p5

    const-string p6, "timestamp"

    invoke-direct {p2, p6, p5}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance p2, Lcom/greport/glog/Kv;

    invoke-static {p3, p4}, Lcom/greport/glog/util/TimeHelper;->longToTimeString(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "event_time"

    invoke-direct {p2, p4, p3}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance p2, Lcom/greport/glog/Kv;

    const-string p3, "os_name"

    const-string p4, "Android"

    invoke-direct {p2, p3, p4}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance p2, Lcom/greport/glog/Kv;

    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string p4, "os_version"

    invoke-direct {p2, p4, p3}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance p2, Lcom/greport/glog/Kv;

    iget-object p3, p0, Lcom/greport/glog/RecordSaver;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/greport/glog/model/MiscInfo;->getCountryAndLanguage(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    aget-object p3, p3, p4

    const-string p4, "os_country"

    invoke-direct {p2, p4, p3}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance p2, Lcom/greport/glog/Kv;

    iget-object p3, p0, Lcom/greport/glog/RecordSaver;->context:Landroid/content/Context;

    invoke-static {p3}, Lcom/greport/glog/model/MiscInfo;->getTimeZone(Landroid/content/Context;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "os_timezone"

    invoke-direct {p2, p4, p3}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private createSystemKv(ILjava/lang/String;J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/greport/glog/Kv;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 403
    invoke-direct/range {v0 .. v7}, Lcom/greport/glog/RecordSaver;->createDeviceInfoKv(ILjava/lang/String;JLjava/lang/String;J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private curRecordFileCanReport()Z
    .locals 5

    .line 314
    iget v0, p0, Lcom/greport/glog/RecordSaver;->curRecordFileRecordCount:I

    sget v1, Lcom/greport/glog/GLogConfig;->MAX_REPORT_SIZE:I

    if-ge v0, v1, :cond_1

    iget-wide v0, p0, Lcom/greport/glog/RecordSaver;->curRecordFileFirstRecordTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 315
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/greport/glog/RecordSaver;->curRecordFileFirstRecordTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

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

.method private finishAnrRecordFile(Ljava/lang/String;)V
    .locals 4

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/greport/glog/RecordSaver;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/greport/glog/util/SPUtils;->getGAgentSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAN_REPORT_ANR_FILES"

    const-string v2, ""

    .line 274
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 278
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 282
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 283
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 285
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private finishCurRecordFileAndCreateNewOne()V
    .locals 5

    .line 290
    iget-object v0, p0, Lcom/greport/glog/RecordSaver;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/greport/glog/util/SPUtils;->getGAgentSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAN_REPORT_FILES"

    const-string v2, ""

    .line 291
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/greport/glog/RecordSaver;->curRecordFileName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 295
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/greport/glog/RecordSaver;->curRecordFileName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    .line 301
    iput v1, p0, Lcom/greport/glog/RecordSaver;->curRecordFileRecordCount:I

    const-wide/16 v2, -0x1

    .line 302
    iput-wide v2, p0, Lcom/greport/glog/RecordSaver;->curRecordFileFirstRecordTimeStamp:J

    .line 303
    invoke-direct {p0}, Lcom/greport/glog/RecordSaver;->genNewFileName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/greport/glog/RecordSaver;->curRecordFileName:Ljava/lang/String;

    const-string v4, "CUR_RECORD_FILE_FIRST_RECORD_TIMESTAMP"

    .line 305
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "CUR_RECORD_FILE_RECORD_COUNT"

    .line 306
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 307
    iget-object v1, p0, Lcom/greport/glog/RecordSaver;->curRecordFileName:Ljava/lang/String;

    const-string v2, "CUR_RECORD_FILE_NAME_GLOG"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private finishErrorRecordFile(Ljava/lang/String;)V
    .locals 4

    .line 252
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/greport/glog/RecordSaver;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/greport/glog/util/SPUtils;->getGAgentSP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CAN_REPORT_ERROR_FILES"

    const-string v2, ""

    .line 256
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 260
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 263
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 264
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private genNewFileName()Ljava/lang/String;
    .locals 1

    .line 241
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/greport/glog/RecordSaver;
    .locals 2

    .line 75
    sget-object v0, Lcom/greport/glog/RecordSaver;->instance:Lcom/greport/glog/RecordSaver;

    if-nez v0, :cond_1

    .line 76
    sget-object v0, Lcom/greport/glog/RecordSaver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/greport/glog/RecordSaver;->instance:Lcom/greport/glog/RecordSaver;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/greport/glog/RecordSaver;

    invoke-direct {v1, p0}, Lcom/greport/glog/RecordSaver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/greport/glog/RecordSaver;->instance:Lcom/greport/glog/RecordSaver;

    .line 79
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 82
    :cond_1
    :goto_0
    sget-object p0, Lcom/greport/glog/RecordSaver;->instance:Lcom/greport/glog/RecordSaver;

    return-object p0
.end method

.method private saveCurState()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/greport/glog/RecordSaver;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/greport/glog/util/SPUtils;->getEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 246
    iget-wide v1, p0, Lcom/greport/glog/RecordSaver;->curRecordFileFirstRecordTimeStamp:J

    const-string v3, "CUR_RECORD_FILE_FIRST_RECORD_TIMESTAMP"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 247
    iget v1, p0, Lcom/greport/glog/RecordSaver;->curRecordFileRecordCount:I

    const-string v2, "CUR_RECORD_FILE_RECORD_COUNT"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private startThreadToReport()V
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/greport/glog/RecordSaver;->hasSchedule:Z

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/greport/glog/RecordSaver$4;

    invoke-direct {v0, p0}, Lcom/greport/glog/RecordSaver$4;-><init>(Lcom/greport/glog/RecordSaver;)V

    .line 236
    invoke-virtual {v0}, Lcom/greport/glog/RecordSaver$4;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method save(ILjava/lang/String;JLjava/lang/String;)V
    .locals 9

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 367
    invoke-virtual/range {v0 .. v8}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method save(ILjava/lang/String;JLjava/lang/String;J)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    .line 371
    invoke-virtual/range {v0 .. v8}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method save(ILjava/lang/String;JLjava/lang/String;JLjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v6, -0x1

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v8, p8

    .line 383
    invoke-virtual/range {v0 .. v9}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;JLjava/util/Map;Z)V

    return-void
.end method

.method save(ILjava/lang/String;JLjava/lang/String;JLjava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 388
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "eventName: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", canGetDeviceIdInfo: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "RecordSaver"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object p3, p0, Lcom/greport/glog/RecordSaver;->appInfo:Lcom/greport/glog/model/AppInfo;

    invoke-virtual {p3}, Lcom/greport/glog/model/AppInfo;->toKvList()Ljava/util/List;

    move-result-object p3

    .line 390
    iget-object p4, p0, Lcom/greport/glog/RecordSaver;->deviceInfo:Lcom/greport/glog/model/DeviceInfo;

    invoke-virtual {p4, p9}, Lcom/greport/glog/model/DeviceInfo;->toKvList(Z)Ljava/util/List;

    move-result-object p4

    .line 391
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 392
    new-instance p6, Lcom/greport/glog/Kv;

    const-string p7, "event_name"

    invoke-direct {p6, p7, p2}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p8, :cond_1

    .line 394
    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/Map$Entry;

    .line 395
    new-instance p7, Lcom/greport/glog/Kv;

    invoke-interface {p6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/lang/String;

    invoke-interface {p6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p9

    if-nez p9, :cond_0

    const-string p6, ""

    goto :goto_1

    :cond_0
    invoke-interface {p6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p6

    :goto_1
    invoke-direct {p7, p8, p6}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p5, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 399
    :cond_1
    invoke-static {p3, p4, p5}, Lcom/greport/glog/util/ToString;->of(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/greport/glog/RecordSaver;->addRecordAsync(ILjava/lang/String;)V

    return-void
.end method

.method save(ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v8, p6

    .line 375
    invoke-virtual/range {v0 .. v8}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method save(ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const-wide/16 v6, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 379
    invoke-virtual/range {v0 .. v9}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;JLjava/util/Map;Z)V

    return-void
.end method

.method saveAppInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "AppInfo"

    .line 345
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/greport/glog/RecordSaver;->createSystemKv(ILjava/lang/String;J)Ljava/util/List;

    move-result-object p1

    .line 346
    iget-object p2, p0, Lcom/greport/glog/RecordSaver;->appInfo:Lcom/greport/glog/model/AppInfo;

    invoke-virtual {p2, p3, p4, p5}, Lcom/greport/glog/model/AppInfo;->setPhoneMd5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object p2, p0, Lcom/greport/glog/RecordSaver;->deviceInfo:Lcom/greport/glog/model/DeviceInfo;

    invoke-virtual {p2}, Lcom/greport/glog/model/DeviceInfo;->toKvList()Ljava/util/List;

    move-result-object p2

    .line 348
    iget-object p3, p0, Lcom/greport/glog/RecordSaver;->appInfo:Lcom/greport/glog/model/AppInfo;

    invoke-virtual {p3}, Lcom/greport/glog/model/AppInfo;->toKvList()Ljava/util/List;

    move-result-object p3

    .line 349
    invoke-static {p1, p2, p3}, Lcom/greport/glog/util/ToString;->of(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/greport/glog/RecordSaver;->addRecordAsync(ILjava/lang/String;)V

    return-void
.end method

.method saveDeviceIdServer(Ljava/lang/String;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/greport/glog/RecordSaver;->appInfo:Lcom/greport/glog/model/AppInfo;

    invoke-virtual {v0, p1}, Lcom/greport/glog/model/AppInfo;->setDeviceIdServer(Ljava/lang/String;)V

    return-void
.end method

.method saveError(Ljava/lang/String;J)V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "Error"

    .line 323
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/greport/glog/RecordSaver;->createSystemKv(ILjava/lang/String;J)Ljava/util/List;

    move-result-object p2

    .line 324
    new-instance p3, Lcom/greport/glog/Kv;

    const-string v1, "crashinfo"

    invoke-direct {p3, v1, p1}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance p3, Lcom/greport/glog/Kv;

    invoke-static {p1}, Lcom/greport/glog/util/MD5;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "crashmd5"

    invoke-direct {p3, v1, p1}, Lcom/greport/glog/Kv;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p2, p1, v1}, Lcom/greport/glog/util/ToString;->of(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/greport/glog/RecordSaver;->addRecordAsync(ILjava/lang/String;)V

    return-void
.end method

.method saveError(Ljava/lang/Throwable;J)V
    .locals 0

    .line 319
    invoke-static {p1}, Lcom/greport/glog/util/ToString;->of(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/greport/glog/RecordSaver;->saveError(Ljava/lang/String;J)V

    return-void
.end method

.method saveOaid(Ljava/lang/String;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/greport/glog/RecordSaver;->deviceInfo:Lcom/greport/glog/model/DeviceInfo;

    invoke-virtual {v0, p1}, Lcom/greport/glog/model/DeviceInfo;->setOaidKey(Ljava/lang/String;)V

    return-void
.end method

.method public setAppInfo(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/greport/glog/model/AppInfo;

    iget-object v1, p0, Lcom/greport/glog/RecordSaver;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/greport/glog/model/AppInfo;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/greport/glog/RecordSaver;->appInfo:Lcom/greport/glog/model/AppInfo;

    return-void
.end method
