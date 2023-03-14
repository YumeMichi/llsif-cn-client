.class public Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;
.super Ljava/lang/Object;
.source "ThirdInitialize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;
    }
.end annotation


# instance fields
.field private dataTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private eventTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private needReport:I

.field private reportSdkConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->eventTypes:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->dataTypes:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->reportSdkConfig:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDataTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->dataTypes:Ljava/util/List;

    return-object v0
.end method

.method public getEventTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->eventTypes:Ljava/util/List;

    return-object v0
.end method

.method public getNeedReport()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->needReport:I

    return v0
.end method

.method public getReportSdkConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->reportSdkConfig:Ljava/util/List;

    return-object v0
.end method

.method public setDataTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->dataTypes:Ljava/util/List;

    return-void
.end method

.method public setEventTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->eventTypes:Ljava/util/List;

    return-void
.end method

.method public setNeedReport(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->needReport:I

    return-void
.end method

.method public setReportSdkConfig(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize$ThirdConfig;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->reportSdkConfig:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThirdInitialize{needReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->needReport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->eventTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->dataTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reportSdkConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdInitialize;->reportSdkConfig:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
