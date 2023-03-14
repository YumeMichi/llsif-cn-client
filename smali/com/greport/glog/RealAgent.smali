.class Lcom/greport/glog/RealAgent;
.super Ljava/lang/Object;
.source "RealAgent.java"

# interfaces
.implements Lcom/greport/glog/CrashListener;


# static fields
.field private static showReport:Z


# instance fields
.field private ctx:Landroid/content/Context;

.field private durationManager:Lcom/greport/glog/DurationManager;

.field private isInitialized:Z

.field private recordSaver:Lcom/greport/glog/RecordSaver;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    return-void
.end method

.method static setShowReport(Z)V
    .locals 0

    .line 35
    sput-boolean p0, Lcom/greport/glog/RealAgent;->showReport:Z

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1

    .line 68
    sget-boolean v0, Lcom/greport/glog/RealAgent;->showReport:Z

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->ctx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/greport/glog/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private toMapString(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 81
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ","

    goto :goto_0

    :cond_1
    const-string p1, "}"

    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method getCtx()Landroid/content/Context;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/greport/glog/RealAgent;->ctx:Landroid/content/Context;

    .line 40
    iget-object p1, p0, Lcom/greport/glog/RealAgent;->ctx:Landroid/content/Context;

    invoke-static {p1}, Lcom/greport/glog/RecordSaver;->getInstance(Landroid/content/Context;)Lcom/greport/glog/RecordSaver;

    move-result-object p1

    iput-object p1, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    .line 41
    iget-object p1, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    invoke-virtual {p1, p2}, Lcom/greport/glog/RecordSaver;->setAppInfo(Ljava/util/Map;)V

    .line 42
    invoke-static {}, Lcom/greport/glog/DurationManager;->getInstance()Lcom/greport/glog/DurationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    return-void
.end method

.method public onAppCrash(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method onCreate(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/greport/glog/RealAgent;->onCreate(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method onCreate(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null activity in onCreate"

    .line 110
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez v0, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 114
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    const-string v1, "onCreate"

    invoke-virtual {v0, p1, v1}, Lcom/greport/glog/DurationManager;->startContext(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/16 v3, 0xd

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const-string v4, "onCreate"

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method onCreate(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/greport/glog/RealAgent;->onCreate(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V

    return-void
.end method

.method onCreate(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null fragment in onCreate"

    .line 129
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez v0, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 133
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    const-string v1, "onCreate"

    invoke-virtual {v0, p1, v1}, Lcom/greport/glog/DurationManager;->startContext(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/16 v3, 0xd

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const-string v4, "onCreate"

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method onDestroy(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/greport/glog/RealAgent;->onDestroy(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method onDestroy(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null activity in onDestroy"

    .line 148
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_0
    iget-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez v0, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 152
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    const-string v1, "onCreate"

    invoke-virtual {v0, p1, v1}, Lcom/greport/glog/DurationManager;->endContext(Ljava/lang/Object;Ljava/lang/String;)J

    .line 158
    iget-object v2, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/16 v3, 0xc

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const-string v4, "onDestroy"

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method onDestroy(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, p1, v0}, Lcom/greport/glog/RealAgent;->onDestroy(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V

    return-void
.end method

.method onDestroy(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null fragment in onDestroy"

    .line 167
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez v0, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 171
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    const-string v1, "onCreate"

    invoke-virtual {v0, p1, v1}, Lcom/greport/glog/DurationManager;->endContext(Ljava/lang/Object;Ljava/lang/String;)J

    .line 177
    iget-object v2, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/16 v3, 0xc

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const-string v4, "onDestroy"

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null context in onEvent"

    .line 302
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 306
    :cond_0
    iget-boolean p1, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez p1, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 307
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 312
    :cond_1
    sget-boolean p1, Lcom/greport/glog/RealAgent;->showReport:Z

    if-eqz p1, :cond_2

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "event:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/greport/glog/RealAgent;->showToast(Ljava/lang/String;)V

    .line 316
    :cond_2
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/16 v1, 0xb

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/greport/glog/RealAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 332
    invoke-virtual/range {v0 .. v5}, Lcom/greport/glog/RealAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null context in onEvent"

    .line 337
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 341
    :cond_0
    iget-boolean p1, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez p1, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 342
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 347
    :cond_1
    sget-boolean p1, Lcom/greport/glog/RealAgent;->showReport:Z

    if-eqz p1, :cond_2

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "event:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; tag:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; data:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Lcom/greport/glog/RealAgent;->toMapString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/greport/glog/RealAgent;->showToast(Ljava/lang/String;)V

    .line 351
    :cond_2
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/greport/glog/util/TimeHelper;->getISO8601Timestamp(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "timestamp"

    invoke-interface {p4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/greport/glog/util/TimeHelper;->longToTimeString(J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "event_time"

    invoke-interface {p4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v1, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/16 v2, 0xb

    const-wide/16 v4, 0x0

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/greport/glog/RealAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 328
    invoke-virtual/range {v0 .. v5}, Lcom/greport/glog/RealAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method onEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null context in onEventEnd"

    .line 378
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 382
    :cond_0
    iget-boolean p1, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez p1, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 383
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 388
    :cond_1
    sget-boolean p1, Lcom/greport/glog/RealAgent;->showReport:Z

    if-eqz p1, :cond_2

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endEvent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/greport/glog/RealAgent;->showToast(Ljava/lang/String;)V

    .line 392
    :cond_2
    iget-object p1, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    invoke-virtual {p1, p2}, Lcom/greport/glog/DurationManager;->endEvent(Ljava/lang/String;)J

    move-result-wide v6

    .line 393
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/16 v1, 0xa

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null context in onEventEnd"

    .line 418
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 422
    :cond_0
    iget-boolean p1, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez p1, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 423
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 428
    :cond_1
    sget-boolean p1, Lcom/greport/glog/RealAgent;->showReport:Z

    if-eqz p1, :cond_2

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endEvent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; tag:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/greport/glog/RealAgent;->showToast(Ljava/lang/String;)V

    .line 432
    :cond_2
    iget-object p1, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    invoke-virtual {p1, p2, p3}, Lcom/greport/glog/DurationManager;->endEvent(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 433
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/16 v1, 0xa

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method onEventStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null context in onEventBegin"

    .line 358
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 362
    :cond_0
    iget-boolean p1, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez p1, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 363
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 368
    :cond_1
    sget-boolean p1, Lcom/greport/glog/RealAgent;->showReport:Z

    if-eqz p1, :cond_2

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startEvent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/greport/glog/RealAgent;->showToast(Ljava/lang/String;)V

    .line 372
    :cond_2
    iget-object p1, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    invoke-virtual {p1, p2}, Lcom/greport/glog/DurationManager;->startEvent(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/16 v1, 0x9

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method onEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null context in onEventBegin"

    .line 398
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 402
    :cond_0
    iget-boolean p1, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez p1, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 403
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 408
    :cond_1
    sget-boolean p1, Lcom/greport/glog/RealAgent;->showReport:Z

    if-eqz p1, :cond_2

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startEvent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; tag:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/greport/glog/RealAgent;->showToast(Ljava/lang/String;)V

    .line 412
    :cond_2
    iget-object p1, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    invoke-virtual {p1, p2, p3}, Lcom/greport/glog/DurationManager;->startEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/16 v1, 0x9

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null context in onKVEventEnd"

    .line 458
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 462
    :cond_0
    iget-boolean p1, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez p1, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 463
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 468
    :cond_1
    sget-boolean p1, Lcom/greport/glog/RealAgent;->showReport:Z

    if-eqz p1, :cond_2

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endEvent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; tag:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/greport/glog/RealAgent;->showToast(Ljava/lang/String;)V

    .line 472
    :cond_2
    iget-object p1, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    invoke-virtual {p1, p2, p3}, Lcom/greport/glog/DurationManager;->endEvent(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 473
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/16 v1, 0xa

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method onKVEventStart(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null context in onKVEventBegin"

    .line 438
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 442
    :cond_0
    iget-boolean p1, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez p1, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 443
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 448
    :cond_1
    sget-boolean p1, Lcom/greport/glog/RealAgent;->showReport:Z

    if-eqz p1, :cond_2

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startEvent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; tag:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; data:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/greport/glog/RealAgent;->toMapString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/greport/glog/RealAgent;->showToast(Ljava/lang/String;)V

    .line 452
    :cond_2
    iget-object p1, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    invoke-virtual {p1, p2, p4}, Lcom/greport/glog/DurationManager;->startEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/16 v1, 0x9

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    move-object v2, p2

    move-object v5, p4

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method onPageEnd(Ljava/lang/String;)V
    .locals 10

    .line 283
    sget-boolean v0, Lcom/greport/glog/RealAgent;->showReport:Z

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/greport/glog/RealAgent;->showToast(Ljava/lang/String;)V

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez v0, :cond_1

    const-string p1, "GLogRealAgent"

    const-string v0, "init first!"

    .line 288
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    invoke-virtual {v0, p1}, Lcom/greport/glog/DurationManager;->endPage(Ljava/lang/String;)J

    move-result-wide v7

    .line 292
    new-instance v9, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v9, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "page_id"

    .line 293
    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "page_name"

    .line 294
    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "active_id"

    const-string v1, "close"

    .line 295
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v1, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/16 v2, 0x8

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v9}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method onPageStart(Ljava/lang/String;)V
    .locals 8

    .line 263
    sget-boolean v0, Lcom/greport/glog/RealAgent;->showReport:Z

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pageStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/greport/glog/RealAgent;->showToast(Ljava/lang/String;)V

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez v0, :cond_1

    const-string p1, "GLogRealAgent"

    const-string v0, "init first!"

    .line 268
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    invoke-virtual {v0, p1}, Lcom/greport/glog/DurationManager;->startPage(Ljava/lang/String;)V

    .line 273
    new-instance v7, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "page_id"

    .line 274
    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "page_name"

    .line 275
    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "active_id"

    const-string v1, "show"

    .line 276
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "request_id"

    const-string v1, ""

    .line 277
    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v1, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/4 v2, 0x7

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method onPause(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0, p1, v0}, Lcom/greport/glog/RealAgent;->onPause(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method onPause(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null activity in onPause"

    .line 228
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_0
    iget-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez v0, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 233
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    const-string v1, "onResume"

    invoke-virtual {v0, p1, v1}, Lcom/greport/glog/DurationManager;->endContext(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v8

    .line 239
    iget-object v2, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/4 v3, 0x6

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const-string v4, "onPause"

    move-object v10, p2

    invoke-virtual/range {v2 .. v10}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method onPause(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/greport/glog/RealAgent;->onPause(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V

    return-void
.end method

.method onPause(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null fragment in onPause"

    .line 248
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez v0, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 253
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    const-string v1, "onResume"

    invoke-virtual {v0, p1, v1}, Lcom/greport/glog/DurationManager;->endContext(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v8

    .line 259
    iget-object v2, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/4 v3, 0x6

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const-string v4, "onPause"

    move-object v10, p2

    invoke-virtual/range {v2 .. v10}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method onResume(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/greport/glog/RealAgent;->onResume(Landroid/app/Activity;Ljava/util/Map;)V

    return-void
.end method

.method onResume(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null activity in onResume"

    .line 186
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 190
    :cond_0
    iget-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez v0, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 191
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    const-string v1, "onResume"

    invoke-virtual {v0, p1, v1}, Lcom/greport/glog/DurationManager;->startContext(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/4 v3, 0x5

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const-string v4, "onResume"

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method onResume(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, p1, v0}, Lcom/greport/glog/RealAgent;->onResume(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V

    return-void
.end method

.method onResume(Landroid/support/v4/app/Fragment;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "GLog"

    const-string p2, "unexpected null fragment in onResume"

    .line 207
    invoke-static {p1, p2}, Lcom/greport/glog/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez v0, :cond_1

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 212
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->durationManager:Lcom/greport/glog/DurationManager;

    const-string v1, "onResume"

    invoke-virtual {v0, p1, v1}, Lcom/greport/glog/DurationManager;->startContext(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    const/4 v3, 0x5

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v7, 0x0

    const-string v4, "onResume"

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/greport/glog/RecordSaver;->save(ILjava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method reportAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 498
    iget-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 499
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/greport/glog/RecordSaver;->saveAppInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method reportError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 477
    iget-boolean p1, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez p1, :cond_0

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 478
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 483
    :cond_0
    iget-object p1, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/greport/glog/RecordSaver;->saveError(Ljava/lang/String;J)V

    return-void
.end method

.method reportError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    .line 487
    iget-boolean p1, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez p1, :cond_0

    const-string p1, "GLogRealAgent"

    const-string p2, "init first!"

    .line 488
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 493
    :cond_0
    iget-object p1, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/greport/glog/RecordSaver;->saveError(Ljava/lang/Throwable;J)V

    return-void
.end method

.method setAppInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    invoke-virtual {v0, p1}, Lcom/greport/glog/RecordSaver;->setAppInfo(Ljava/util/Map;)V

    return-void
.end method

.method setDeviceIdServer(Ljava/lang/String;)V
    .locals 1

    .line 506
    iget-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "GLogRealAgent"

    const-string v0, "init first!"

    .line 507
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    invoke-virtual {v0, p1}, Lcom/greport/glog/RecordSaver;->saveDeviceIdServer(Ljava/lang/String;)V

    return-void
.end method

.method setOaidKey(Ljava/lang/String;)V
    .locals 1

    .line 514
    iget-boolean v0, p0, Lcom/greport/glog/RealAgent;->isInitialized:Z

    if-nez v0, :cond_0

    const-string p1, "GLogRealAgent"

    const-string v0, "init first!"

    .line 515
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/greport/glog/RealAgent;->recordSaver:Lcom/greport/glog/RecordSaver;

    invoke-virtual {v0, p1}, Lcom/greport/glog/RecordSaver;->saveOaid(Ljava/lang/String;)V

    return-void
.end method
