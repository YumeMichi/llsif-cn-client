.class public Lcom/ghomesdk/gameplus/impl/object/ModifyExtendAccResponse;
.super Ljava/lang/Object;
.source "ModifyExtendAccResponse.java"


# instance fields
.field accdesc:Ljava/lang/String;

.field accname:Ljava/lang/String;

.field appid:I

.field extendMid:Ljava/lang/String;

.field parentMId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccdesc()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ModifyExtendAccResponse;->accdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getAccname()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ModifyExtendAccResponse;->accname:Ljava/lang/String;

    return-object v0
.end method

.method public getAppid()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/ModifyExtendAccResponse;->appid:I

    return v0
.end method

.method public getExtendMid()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ModifyExtendAccResponse;->extendMid:Ljava/lang/String;

    return-object v0
.end method

.method public getParentMId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ModifyExtendAccResponse;->parentMId:Ljava/lang/String;

    return-object v0
.end method

.method public setAccdesc(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ModifyExtendAccResponse;->accdesc:Ljava/lang/String;

    return-void
.end method

.method public setAccname(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ModifyExtendAccResponse;->accname:Ljava/lang/String;

    return-void
.end method

.method public setAppid(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/ModifyExtendAccResponse;->appid:I

    return-void
.end method

.method public setExtendMid(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ModifyExtendAccResponse;->extendMid:Ljava/lang/String;

    return-void
.end method

.method public setParentMId(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ModifyExtendAccResponse;->parentMId:Ljava/lang/String;

    return-void
.end method
