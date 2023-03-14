.class public Lcom/ghomesdk/gameplus/impl/object/ThirdAccountID;
.super Ljava/lang/Object;
.source "ThirdAccountID.java"


# instance fields
.field private identity:Ljava/lang/String;

.field private needReport:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdentity()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdAccountID;->identity:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedReport()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdAccountID;->needReport:I

    return v0
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdAccountID;->identity:Ljava/lang/String;

    return-void
.end method

.method public setNeedReport(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdAccountID;->needReport:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThirdAccountID{identity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/ThirdAccountID;->identity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
