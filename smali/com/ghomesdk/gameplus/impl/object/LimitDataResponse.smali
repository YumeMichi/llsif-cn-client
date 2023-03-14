.class public Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;
.super Ljava/lang/Object;
.source "LimitDataResponse.java"


# instance fields
.field isLimit:I

.field limitMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsLimit()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;->isLimit:I

    return v0
.end method

.method public getLimitMsg()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;->limitMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setIsLimit(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;->isLimit:I

    return-void
.end method

.method public setLimitMsg(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/LimitDataResponse;->limitMsg:Ljava/lang/String;

    return-void
.end method
