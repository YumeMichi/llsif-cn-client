.class public Lcom/ghomesdk/gameplus/login/model/LoginIconModel;
.super Ljava/lang/Object;
.source "LoginIconModel.java"


# instance fields
.field private loginIconBtText:Ljava/lang/String;

.field private loginIconName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;->loginIconBtText:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;->loginIconName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLoginIconBtText()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;->loginIconBtText:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginIconName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/ghomesdk/gameplus/login/model/LoginIconModel;->loginIconName:Ljava/lang/String;

    return-object v0
.end method
