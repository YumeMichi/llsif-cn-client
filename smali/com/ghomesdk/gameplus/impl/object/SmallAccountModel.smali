.class public Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;
.super Ljava/lang/Object;
.source "SmallAccountModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;,
        Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;
    }
.end annotation


# instance fields
.field extendAccs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;",
            ">;"
        }
    .end annotation
.end field

.field masterAcc:Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;

.field result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtendAccs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->extendAccs:Ljava/util/List;

    return-object v0
.end method

.method public getMasterAcc()Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->masterAcc:Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->result:I

    return v0
.end method

.method public setExtendAccs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$ExtendAccs;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->extendAccs:Ljava/util/List;

    return-void
.end method

.method public setMasterAcc(Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->masterAcc:Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel$MasterAcc;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/SmallAccountModel;->result:I

    return-void
.end method
