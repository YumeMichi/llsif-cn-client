.class public Lcom/gbase/gameplus/upgrade/UtilityBase;
.super Ljava/lang/Object;
.source "UtilityBase.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getSdcardWriteAuthority()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getSDCardInfo()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 17
    :try_start_0
    new-instance v0, Lde/mindpipe/android/logging/log4j/LogConfigurator;

    invoke-direct {v0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;-><init>()V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gbase/gameplus/upgrade/CommonUtility;->getStoreageDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "apkupdate.info"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setFileName(Ljava/lang/String;)V

    .line 19
    sget-object v1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setRootLevel(Lorg/apache/log4j/Level;)V

    const-string v1, "org.apache"

    .line 20
    sget-object v4, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1, v4}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)V

    const-string v1, "%d %-5p [%c{2}]-[%L] %m%n"

    .line 21
    invoke-virtual {v0, v1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setFilePattern(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v2, v3}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setMaxFileSize(J)V

    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setImmediateFlush(Z)V

    .line 24
    invoke-virtual {v0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->configure()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
