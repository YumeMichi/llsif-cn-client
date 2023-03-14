.class public Lcom/ghomesdk/gameplus/impl/object/CheckTokenResponse;
.super Ljava/lang/Object;
.source "CheckTokenResponse.java"


# instance fields
.field login_status:I

.field status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogin_status()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/CheckTokenResponse;->login_status:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/CheckTokenResponse;->status:I

    return v0
.end method

.method public setLogin_status(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/CheckTokenResponse;->login_status:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/CheckTokenResponse;->status:I

    return-void
.end method
