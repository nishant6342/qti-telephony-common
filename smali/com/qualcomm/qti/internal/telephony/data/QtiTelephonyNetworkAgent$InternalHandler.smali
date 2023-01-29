.class Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent$InternalHandler;
.super Landroid/os/Handler;
.source "QtiTelephonyNetworkAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 83
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent$InternalHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;

    .line 84
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent$InternalHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent$InternalHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;)Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent$InternalHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->-$$Nest$monActivePhoneSwitch(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
