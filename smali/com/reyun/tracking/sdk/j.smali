.class final Lcom/reyun/tracking/sdk/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;ZLjava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/sdk/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/reyun/tracking/sdk/j;->b:Lorg/json/JSONObject;

    iput-boolean p3, p0, Lcom/reyun/tracking/sdk/j;->c:Z

    iput-object p4, p0, Lcom/reyun/tracking/sdk/j;->d:Ljava/lang/String;

    iput p5, p0, Lcom/reyun/tracking/sdk/j;->e:I

    iput-object p6, p0, Lcom/reyun/tracking/sdk/j;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/reyun/tracking/sdk/j;->g:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    :try_start_0
    iget-object v0, p0, Lcom/reyun/tracking/sdk/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/reyun/tracking/sdk/j;->b:Lorg/json/JSONObject;

    iget-boolean v2, p0, Lcom/reyun/tracking/sdk/j;->c:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/reyun/tracking/sdk/Tracking;->addRecordToDbase(Ljava/lang/String;Lorg/json/JSONObject;I)J

    move-result-wide v6

    iget-boolean v0, p0, Lcom/reyun/tracking/sdk/j;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v0

    iget-object v9, p0, Lcom/reyun/tracking/sdk/j;->d:Ljava/lang/String;

    iget-object v10, p0, Lcom/reyun/tracking/sdk/j;->b:Lorg/json/JSONObject;

    iget v11, p0, Lcom/reyun/tracking/sdk/j;->e:I

    new-instance v12, Lcom/reyun/tracking/utils/y;

    iget-object v4, p0, Lcom/reyun/tracking/sdk/j;->f:Ljava/lang/String;

    invoke-static {}, Lcom/reyun/tracking/sdk/Tracking;->access$000()Landroid/content/Context;

    move-result-object v5

    iget-object v8, p0, Lcom/reyun/tracking/sdk/j;->g:Ljava/util/Map;

    move-object v3, v12

    invoke-direct/range {v3 .. v8}, Lcom/reyun/tracking/utils/y;-><init>(Ljava/lang/String;Landroid/content/Context;JLjava/util/Map;)V

    sget-object v13, Lcom/reyun/tracking/a/j;->a:Lcom/reyun/tracking/a/j;

    move-object v8, v0

    invoke-static/range {v8 .. v13}, Lcom/reyun/tracking/utils/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;ILcom/reyun/tracking/utils/p;Lcom/reyun/tracking/a/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
