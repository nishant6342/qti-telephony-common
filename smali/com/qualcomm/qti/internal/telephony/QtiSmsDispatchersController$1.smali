.class Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiSmsDispatchersController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    .line 69
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "org.codeaurora.intent.action.RADIO_POWER_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 87
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    const-string v1, "onReceive: Unsupported action"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$mloge(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Ljava/lang/String;)V

    goto :goto_2

    .line 80
    :pswitch_0
    const-string v0, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, "slotId":I
    const-string v1, "state"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, "radioState":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-static {v2, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$mhandleRadioPowerStateChanged(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;II)V

    .line 85
    goto :goto_2

    .line 74
    .end local v0    # "slotId":I
    .end local v1    # "radioState":I
    :pswitch_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    const-string v1, "ACTION_CARRIER_CONFIG_CHANGED"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Ljava/lang/String;)V

    .line 75
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 77
    .local v0, "subId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;

    invoke-static {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->-$$Nest$mhandleCarrierConfigChanged(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;I)V

    .line 78
    nop

    .line 89
    .end local v0    # "subId":I
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5c51fd8a -> :sswitch_1
        -0x43dd7a3f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
