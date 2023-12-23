.class public Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory$QtiInternalHandler;
.super Landroid/os/Handler;
.source "QtiTelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QtiInternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 48
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory$QtiInternalHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;

    .line 49
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory$QtiInternalHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;

    const-string v1, "EVENT_DUAL_DATA_RECOMMENDATION"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;Ljava/lang/String;)V

    .line 58
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 59
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory$QtiInternalHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_DUAL_DATA_RECOMMENDATION, Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 63
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory$QtiInternalHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/qti/extphone/DualDataRecommendation;

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->-$$Nest$monDualDataRecommendation(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;Lcom/qti/extphone/DualDataRecommendation;)V

    .line 69
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
