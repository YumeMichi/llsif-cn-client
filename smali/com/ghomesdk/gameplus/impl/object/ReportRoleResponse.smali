.class public Lcom/ghomesdk/gameplus/impl/object/ReportRoleResponse;
.super Ljava/lang/Object;
.source "ReportRoleResponse.java"


# instance fields
.field message:Ljava/lang/String;

.field result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/ghomesdk/gameplus/impl/object/ReportRoleResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/ghomesdk/gameplus/impl/object/ReportRoleResponse;->result:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/ghomesdk/gameplus/impl/object/ReportRoleResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/ghomesdk/gameplus/impl/object/ReportRoleResponse;->result:I

    return-void
.end method
