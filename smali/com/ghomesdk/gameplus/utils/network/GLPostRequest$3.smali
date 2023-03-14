.class Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;
.super Ljava/lang/Object;
.source "GLPostRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->doRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;J)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    iput-wide p2, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 10

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "okhttp request return fail uri: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OkHttpGLPostRequest"

    invoke-static {v0, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$100(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$200(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->val$startTime:J

    const-string v3, ""

    const-string v4, ""

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/ghomesdk/gameplus/utils/network/HttpUtil;->reportTimeCostNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    .line 107
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->onFailureOnUI(Ljava/util/Map;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    move-object v4, p1

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 116
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP POST:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {v1}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Response string:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OkHttpGLPostRequest"

    invoke-static {v1, p1}, Lcom/ghomesdk/gameplus/utils/log/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    const-string p1, "{"

    .line 118
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "}"

    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 120
    invoke-static {v4}, Lcom/ghomesdk/gameplus/utils/JsonUtils;->bindDataToModel(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->onFailureOnUI(Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_1
    const-string v0, "code"

    .line 124
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    const-string v1, ""

    const-string v2, "message"

    if-eqz v11, :cond_2

    const-string v3, "0"

    .line 125
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {v0}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$100(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {v5}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$200(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    iget-wide v7, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->val$startTime:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, v3

    move-object v3, v5

    move-object v5, v11

    invoke-static/range {v1 .. v10}, Lcom/ghomesdk/gameplus/utils/network/HttpUtil;->reportTimeCostNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    const/4 p2, 0x0

    .line 130
    invoke-static {v11, p2}, Lcom/ghomesdk/gameplus/utils/StringUtils;->str2Int(Ljava/lang/String;I)I

    move-result p2

    .line 131
    iget-object v0, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-virtual {v0, p2, p1}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->onSuccessOnUI(ILjava/util/Map;)V

    goto :goto_1

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-virtual {v3, p1}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->onFailureOnUI(Ljava/util/Map;)V

    .line 135
    iget-object v3, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {v3}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$100(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {v5}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {v6}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$200(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-wide v7, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->val$startTime:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v6

    move-object v5, v0

    move-object v6, p1

    invoke-static/range {v1 .. v10}, Lcom/ghomesdk/gameplus/utils/network/HttpUtil;->reportTimeCostNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_1

    :cond_3
    const-string p1, "response data is not json format."

    .line 139
    invoke-static {p1}, Lcom/ghomesdk/gameplus/log/LogDebugger;->exception(Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-virtual {p1, v0}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->onFailureOnUI(Ljava/util/Map;)V

    .line 142
    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$100(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$000(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->this$0:Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;

    invoke-static {p1}, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;->access$200(Lcom/ghomesdk/gameplus/utils/network/GLPostRequest;)Ljava/lang/String;

    move-result-object v2

    iget-wide v6, p0, Lcom/ghomesdk/gameplus/utils/network/GLPostRequest$3;->val$startTime:J

    const/4 v9, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, "response data is not json format."

    const-string v8, ""

    invoke-static/range {v0 .. v9}, Lcom/ghomesdk/gameplus/utils/network/HttpUtil;->reportTimeCostNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    :goto_1
    return-void
.end method
