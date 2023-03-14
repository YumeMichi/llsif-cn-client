.class public Lcom/geetest/sdk/GT3ConfigBean;
.super Ljava/lang/Object;
.source "GT3ConfigBean.java"


# instance fields
.field private GTViewWithParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private api1Json:Lorg/json/JSONObject;

.field private canceledOnTouchOutside:Z

.field private corners:I

.field private debug:Z

.field private dialogOffsetY:I

.field private gt3ServiceNode:Lcom/geetest/sdk/utils/GT3ServiceNode;

.field private lang:Ljava/lang/String;

.field private listener:Lcom/geetest/sdk/GT3Listener;

.field private loadImageView:Lcom/geetest/sdk/GT3LoadImageView;

.field private pattern:I

.field private timeout:I

.field private unCanceledOnTouchKeyCodeBack:Z

.field private userInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private webviewTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 4
    iput v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->timeout:I

    .line 6
    iput v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->webviewTimeout:I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->debug:Z

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->pattern:I

    return-void
.end method


# virtual methods
.method public getApi1Json()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->api1Json:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getCorners()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->corners:I

    return v0
.end method

.method public getDialogOffsetY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->dialogOffsetY:I

    return v0
.end method

.method public getGTViewWithParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->GTViewWithParams:Ljava/util/Map;

    return-object v0
.end method

.method public getGt3ServiceNode()Lcom/geetest/sdk/utils/GT3ServiceNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->gt3ServiceNode:Lcom/geetest/sdk/utils/GT3ServiceNode;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lcom/geetest/sdk/GT3Listener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->listener:Lcom/geetest/sdk/GT3Listener;

    return-object v0
.end method

.method public getLoadImageView()Lcom/geetest/sdk/GT3LoadImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->loadImageView:Lcom/geetest/sdk/GT3LoadImageView;

    return-object v0
.end method

.method public getPattern()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->pattern:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->timeout:I

    return v0
.end method

.method public getUserInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->userInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getWebviewTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->webviewTimeout:I

    return v0
.end method

.method public isCanceledOnTouchOutside()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->canceledOnTouchOutside:Z

    return v0
.end method

.method public isUnCanceledOnTouchKeyCodeBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/geetest/sdk/GT3ConfigBean;->unCanceledOnTouchKeyCodeBack:Z

    return v0
.end method

.method public setApi1Json(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->api1Json:Lorg/json/JSONObject;

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->canceledOnTouchOutside:Z

    return-void
.end method

.method public setCorners(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->corners:I

    return-void
.end method

.method public setDialogOffsetY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->dialogOffsetY:I

    return-void
.end method

.method public setGTViewWithParams(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->GTViewWithParams:Ljava/util/Map;

    return-void
.end method

.method public setGt3ServiceNode(Lcom/geetest/sdk/utils/GT3ServiceNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->gt3ServiceNode:Lcom/geetest/sdk/utils/GT3ServiceNode;

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->lang:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/geetest/sdk/GT3Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->listener:Lcom/geetest/sdk/GT3Listener;

    return-void
.end method

.method public setLoadImageView(Lcom/geetest/sdk/GT3LoadImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->loadImageView:Lcom/geetest/sdk/GT3LoadImageView;

    return-void
.end method

.method public setPattern(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->pattern:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->timeout:I

    return-void
.end method

.method public setUnCanceledOnTouchKeyCodeBack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->unCanceledOnTouchKeyCodeBack:Z

    return-void
.end method

.method public setUserInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->userInfo:Ljava/util/Map;

    return-void
.end method

.method public setWebviewTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/geetest/sdk/GT3ConfigBean;->webviewTimeout:I

    return-void
.end method
