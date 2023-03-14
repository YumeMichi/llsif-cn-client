.class Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;
.super Ljava/lang/Object;
.source "GLGetRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->doRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;J)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    iput-wide p2, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 10

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8fde\u63a5\u5931\u8d25"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OkHttpGLGetRequest"

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "okhttp request return fail uri: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->access$100(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->val$startTime:J

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/ghomesdk/gameplus/utils/network/HttpUtil;->reportTimeCostNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    .line 100
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->onFailureOnUI(Ljava/util/Map;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->close()V

    move-object v5, p1

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 112
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP GET:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Response string:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OkHttpGLGetRequest"

    invoke-static {v1, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_7

    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string p1, "{"

    .line 121
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "}"

    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 123
    invoke-static {v5}, Lcom/ghomesdk/gameplus/utils/JsonUtils;->bindDataToModel(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_2

    .line 126
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->access$100(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;)Ljava/lang/String;

    move-result-object v2

    iget-wide v7, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->val$startTime:J

    const/4 v10, -0x4

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, "response data map is null."

    const-string v9, ""

    invoke-static/range {v1 .. v10}, Lcom/ghomesdk/gameplus/utils/network/HttpUtil;->reportTimeCostNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    .line 128
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->onFailureOnUI(Ljava/util/Map;)V

    goto/16 :goto_2

    :cond_2
    const-string v0, "code"

    .line 131
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "nextAction"

    .line 132
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    iget-object v2, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-static {v2}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->access$100(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "message"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    iget-wide v8, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->val$startTime:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string v4, ""

    move-object v6, v0

    invoke-static/range {v2 .. v11}, Lcom/ghomesdk/gameplus/utils/network/HttpUtil;->reportTimeCostNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    const-string v2, "0"

    .line 137
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-virtual {v0, p1}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->onFailureOnUI(Ljava/util/Map;)V

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 139
    invoke-static {v0, v1}, Lcom/ghomesdk/gameplus/utils/StringUtils;->str2Int(Ljava/lang/String;I)I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-virtual {v1, v0, p1}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->onSuccessOnUI(ILjava/util/Map;)V

    goto :goto_2

    :cond_5
    const-string p1, "response data is not json format."

    .line 146
    invoke-static {v1, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->onFailureOnUI(Ljava/util/Map;)V

    .line 150
    :goto_2
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 151
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    :cond_6
    return-void

    .line 116
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->access$100(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;)Ljava/lang/String;

    move-result-object v2

    iget-wide v7, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->val$startTime:J

    const/4 v10, -0x2

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, "response is null."

    const-string v9, ""

    invoke-static/range {v1 .. v10}, Lcom/ghomesdk/gameplus/utils/network/HttpUtil;->reportTimeCostNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    .line 117
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/utils/network/GLGetRequest;->onFailureOnUI(Ljava/util/Map;)V

    return-void
.end method
