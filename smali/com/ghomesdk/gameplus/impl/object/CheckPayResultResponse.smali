.class public Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;
.super Ljava/lang/Object;
.source "CheckPayResultResponse.java"


# instance fields
.field deviceid:Ljava/lang/String;

.field logid:Ljava/lang/String;

.field message:Ljava/lang/String;

.field productid:Ljava/lang/String;

.field result:I

.field status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceid()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getLogid()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->logid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getProductid()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->productid:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->result:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->status:I

    return v0
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->deviceid:Ljava/lang/String;

    return-void
.end method

.method public setLogid(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->logid:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setProductid(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->productid:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->result:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/CheckPayResultResponse;->status:I

    return-void
.end method
