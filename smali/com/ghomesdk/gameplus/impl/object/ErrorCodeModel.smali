.class public Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;
.super Ljava/lang/Object;
.source "ErrorCodeModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MSG_FROM_CODELIST:I = 0x1

.field public static final MSG_FROM_RETURN:I = 0x2


# instance fields
.field private btntext:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private msg_from:I

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->code:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->text:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->msg_from:I

    .line 31
    iput p2, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->type:I

    .line 32
    iput-object p4, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->title:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->btntext:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->code:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->msg_from:I

    .line 16
    invoke-static {p3}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->msg_from:I

    .line 19
    :cond_0
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->type:I

    .line 20
    invoke-static {p2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->type:I

    .line 23
    :cond_1
    iput-object p4, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->title:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->btntext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBtntext()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->btntext:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg_from()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->msg_from:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->type:I

    return v0
.end method

.method public setBtntext(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->btntext:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->code:Ljava/lang/String;

    return-void
.end method

.method public setMsg_from(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->msg_from:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->text:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/ErrorCodeModel;->type:I

    return-void
.end method
