.class public Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;
.super Ljava/lang/Object;
.source "GetErrorCodeResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodeItem"
.end annotation


# instance fields
.field btntext:Ljava/lang/String;

.field code:Ljava/lang/String;

.field msg_from:Ljava/lang/String;

.field text:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBtntext()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->btntext:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->code:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getMsg_from()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->msg_from:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public setBtntext(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->btntext:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->code:Ljava/lang/String;

    return-void
.end method

.method public setMsg_from(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->msg_from:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->text:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/GetErrorCodeResponse$CodeItem;->type:Ljava/lang/String;

    return-void
.end method
