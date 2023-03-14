.class public Lde/mindpipe/android/logging/log4j/LogConfigurator;
.super Ljava/lang/Object;
.source "LogConfigurator.java"


# instance fields
.field private fileName:Ljava/lang/String;

.field private filePattern:Ljava/lang/String;

.field private immediateFlush:Z

.field private internalDebugging:Z

.field private logCatPattern:Ljava/lang/String;

.field private maxBackupSize:I

.field private maxFileSize:J

.field private resetConfiguration:Z

.field private rootLevel:Lorg/apache/log4j/Level;

.field private useFileAppender:Z

.field private useLogCatAppender:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    iput-object v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->rootLevel:Lorg/apache/log4j/Level;

    const-string v0, "%d - [%p::%c::%C] - %m%n"

    .line 36
    iput-object v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->filePattern:Ljava/lang/String;

    const-string v0, "%m%n"

    .line 37
    iput-object v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->logCatPattern:Ljava/lang/String;

    const-string v0, "android-log4j.log"

    .line 38
    iput-object v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->fileName:Ljava/lang/String;

    const/4 v0, 0x5

    .line 39
    iput v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->maxBackupSize:I

    const-wide/32 v0, 0x80000

    .line 40
    iput-wide v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->maxFileSize:J

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->immediateFlush:Z

    .line 42
    iput-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->useLogCatAppender:Z

    .line 43
    iput-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->useFileAppender:Z

    .line 44
    iput-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->resetConfiguration:Z

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->internalDebugging:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    iput-object v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->rootLevel:Lorg/apache/log4j/Level;

    const-string v0, "%d - [%p::%c::%C] - %m%n"

    .line 36
    iput-object v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->filePattern:Ljava/lang/String;

    const-string v0, "%m%n"

    .line 37
    iput-object v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->logCatPattern:Ljava/lang/String;

    const-string v0, "android-log4j.log"

    .line 38
    iput-object v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->fileName:Ljava/lang/String;

    const/4 v0, 0x5

    .line 39
    iput v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->maxBackupSize:I

    const-wide/32 v0, 0x80000

    .line 40
    iput-wide v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->maxFileSize:J

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->immediateFlush:Z

    .line 42
    iput-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->useLogCatAppender:Z

    .line 43
    iput-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->useFileAppender:Z

    .line 44
    iput-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->resetConfiguration:Z

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->internalDebugging:Z

    .line 54
    invoke-virtual {p0, p1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setFileName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Lorg/apache/log4j/Level;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p6, p5}, Lde/mindpipe/android/logging/log4j/LogConfigurator;-><init>(Ljava/lang/String;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p2}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setMaxBackupSize(I)V

    .line 88
    invoke-virtual {p0, p3, p4}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setMaxFileSize(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Level;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p2}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setRootLevel(Lorg/apache/log4j/Level;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Level;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p2}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setRootLevel(Lorg/apache/log4j/Level;)V

    .line 74
    invoke-virtual {p0, p3}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setFilePattern(Ljava/lang/String;)V

    return-void
.end method

.method private configureFileAppender()V
    .locals 5

    .line 122
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 124
    new-instance v1, Lorg/apache/log4j/PatternLayout;

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->getFilePattern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    .line 127
    :try_start_0
    new-instance v2, Lorg/apache/log4j/RollingFileAppender;

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/apache/log4j/RollingFileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->getMaxBackupSize()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/apache/log4j/RollingFileAppender;->setMaxBackupIndex(I)V

    .line 133
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->getMaxFileSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/log4j/RollingFileAppender;->setMaximumFileSize(J)V

    .line 134
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->isImmediateFlush()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/apache/log4j/RollingFileAppender;->setImmediateFlush(Z)V

    .line 136
    invoke-virtual {v0, v2}, Lorg/apache/log4j/Logger;->addAppender(Lorg/apache/log4j/Appender;)V

    return-void

    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception configuring log system"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private configureLogCatAppender()V
    .locals 3

    .line 140
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 141
    new-instance v1, Lorg/apache/log4j/PatternLayout;

    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->getLogCatPattern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v2, Lde/mindpipe/android/logging/log4j/LogCatAppender;

    invoke-direct {v2, v1}, Lde/mindpipe/android/logging/log4j/LogCatAppender;-><init>(Lorg/apache/log4j/Layout;)V

    .line 144
    invoke-virtual {v0, v2}, Lorg/apache/log4j/Logger;->addAppender(Lorg/apache/log4j/Appender;)V

    return-void
.end method


# virtual methods
.method public configure()V
    .locals 2

    .line 92
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->isResetConfiguration()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/log4j/spi/LoggerRepository;->resetConfiguration()V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->isInternalDebugging()Z

    move-result v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    .line 100
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->isUseFileAppender()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-direct {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->configureFileAppender()V

    .line 104
    :cond_1
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->isUseLogCatAppender()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-direct {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->configureLogCatAppender()V

    .line 108
    :cond_2
    invoke-virtual {p0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->getRootLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePattern()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->filePattern:Ljava/lang/String;

    return-object v0
.end method

.method public getLogCatPattern()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->logCatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxBackupSize()I
    .locals 1

    .line 200
    iget v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->maxBackupSize:I

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .line 216
    iget-wide v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->maxFileSize:J

    return-wide v0
.end method

.method public getRootLevel()Lorg/apache/log4j/Level;
    .locals 1

    .line 152
    iget-object v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->rootLevel:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public isImmediateFlush()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->immediateFlush:Z

    return v0
.end method

.method public isInternalDebugging()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->internalDebugging:Z

    return v0
.end method

.method public isResetConfiguration()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->resetConfiguration:Z

    return v0
.end method

.method public isUseFileAppender()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->useFileAppender:Z

    return v0
.end method

.method public isUseLogCatAppender()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->useLogCatAppender:Z

    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFilePattern(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->filePattern:Ljava/lang/String;

    return-void
.end method

.method public setImmediateFlush(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->immediateFlush:Z

    return-void
.end method

.method public setInternalDebugging(Z)V
    .locals 0

    .line 279
    iput-boolean p1, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->internalDebugging:Z

    return-void
.end method

.method public setLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)V
    .locals 0

    .line 118
    invoke-static {p1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    return-void
.end method

.method public setLogCatPattern(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->logCatPattern:Ljava/lang/String;

    return-void
.end method

.method public setMaxBackupSize(I)V
    .locals 0

    .line 208
    iput p1, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->maxBackupSize:I

    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 0

    .line 224
    iput-wide p1, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->maxFileSize:J

    return-void
.end method

.method public setResetConfiguration(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->resetConfiguration:Z

    return-void
.end method

.method public setRootLevel(Lorg/apache/log4j/Level;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->rootLevel:Lorg/apache/log4j/Level;

    return-void
.end method

.method public setUseFileAppender(Z)V
    .locals 0

    .line 247
    iput-boolean p1, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->useFileAppender:Z

    return-void
.end method

.method public setUseLogCatAppender(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lde/mindpipe/android/logging/log4j/LogConfigurator;->useLogCatAppender:Z

    return-void
.end method
