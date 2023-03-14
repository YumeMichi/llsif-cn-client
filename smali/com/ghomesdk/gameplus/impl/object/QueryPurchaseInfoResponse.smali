.class public Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;
.super Ljava/lang/Object;
.source "QueryPurchaseInfoResponse.java"


# instance fields
.field contentId:Ljava/lang/String;

.field contentName:Ljava/lang/String;

.field contentNum:I

.field contentType:Ljava/lang/String;

.field currency:Ljava/lang/String;

.field currencyAmount:Ljava/lang/String;

.field isSuccess:Ljava/lang/String;

.field needReport:I

.field paymentChannel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "false"

    .line 19
    iput-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->isSuccess:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->contentName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentNum()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->contentNum:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyAmount()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->currencyAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedReport()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->needReport:I

    return v0
.end method

.method public getPaymentChannel()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->paymentChannel:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->isSuccess:Ljava/lang/String;

    return-object v0
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->contentId:Ljava/lang/String;

    return-void
.end method

.method public setContentName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->contentName:Ljava/lang/String;

    return-void
.end method

.method public setContentNum(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->contentNum:I

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->currency:Ljava/lang/String;

    return-void
.end method

.method public setCurrencyAmount(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->currencyAmount:Ljava/lang/String;

    return-void
.end method

.method public setNeedReport(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->needReport:I

    return-void
.end method

.method public setPaymentChannel(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->paymentChannel:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->isSuccess:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryPurchaseInfoResponse{, contentType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->contentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->contentId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentNum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->contentNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", paymentChannel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->paymentChannel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", currency=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->currency:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isSuccess="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->isSuccess:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currencyAmount=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ghomesdk/gameplus/impl/object/QueryPurchaseInfoResponse;->currencyAmount:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
