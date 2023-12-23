.class Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;
.super Landroid/content/BroadcastReceiver;
.source "QtiDataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 212
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1
    .param p0, "network"    # Lcom/android/internal/telephony/data/DataNetwork;

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onReceive$1(ILcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1
    .param p0, "ipProtocol"    # I
    .param p1, "network"    # Lcom/android/internal/telephony/data/DataNetwork;

    .line 276
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v0

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.motorola.intent.action.DATA_STALL_DETECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x3a98

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$1100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v5, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2$$ExternalSyntheticLambda0;-><init>()V

    .line 219
    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    .line 220
    .local v1, "anyInternet":Z
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 221
    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$1200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isForceReRegisterOngoing()Z

    move-result v5

    .line 222
    .local v5, "isForceReRegisterOngoing":Z
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v6}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$misPhoneStateIdle(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Z

    move-result v6

    .line 224
    .local v6, "isPhoneStateIdle":Z
    const-string v7, "data_network_type"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 227
    .local v7, "dataNetworkType":I
    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v8, v7}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$misReRegisterNetworkType(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;I)Z

    move-result v8

    .line 228
    .local v8, "isReRegisterNetworkType":Z
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DATA_STALL_DETECTED received ongoning="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isPhoneStateIdle="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 229
    invoke-static {v11}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$misPhoneStateIdle(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " dataNetworkType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " isReRegisterNetworkType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " anyInternet="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 228
    invoke-static {v9, v10}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$1300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v9

    iget-object v10, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v10}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$1400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v10

    if-ne v9, v10, :cond_5

    if-nez v5, :cond_5

    if-eqz v8, :cond_5

    if-eqz v1, :cond_5

    if-eqz v6, :cond_5

    .line 240
    new-instance v9, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v10, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v10}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$1500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 241
    invoke-static {v11}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$1600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 242
    .local v9, "mMotExtTel":Lcom/motorola/android/telephony/MotoExtTelephonyManager;
    iget-object v10, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v10}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$1700(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->detachFromLte(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 243
    iget-object v10, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const-string v11, "ForceReRegisterOngoing"

    invoke-static {v10, v11}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$1800(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 244
    iget-object v10, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v10}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$1900(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    check-cast v10, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v10, v4}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->setForceReRegisterOngoing(Z)V

    .line 245
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const v10, 0x420cc

    invoke-virtual {v4, v10}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->removeMessages(I)V

    .line 246
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-virtual {v4, v10}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 247
    .local v4, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-virtual {v10, v4, v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 248
    .end local v4    # "msg":Landroid/os/Message;
    goto/16 :goto_1

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const-string v3, "Fail to detachFromLte"

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$2000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 253
    .end local v1    # "anyInternet":Z
    .end local v5    # "isForceReRegisterOngoing":Z
    .end local v6    # "isPhoneStateIdle":Z
    .end local v7    # "dataNetworkType":I
    .end local v8    # "isReRegisterNetworkType":Z
    .end local v9    # "mMotExtTel":Lcom/motorola/android/telephony/MotoExtTelephonyManager;
    :cond_1
    const-string v1, "com.motorola.intent.action.OVERRIDE_IP_PROTOCOL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 254
    const-string v1, "ip_protocol"

    const/4 v5, -0x1

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 256
    .local v1, "ipProtocol":I
    const-string v6, "sub_id"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 258
    .local v6, "subId":I
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OVERRIDE_IP_PROTOCOL received, ipProtocol="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " subId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$2100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 260
    if-eq v1, v5, :cond_4

    if-eq v6, v5, :cond_4

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 262
    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$2200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    if-eq v6, v5, :cond_2

    goto :goto_0

    .line 267
    :cond_2
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$2400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/data/DataConfigManager;->isOverrideIpProtocolEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 268
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const-string v3, "overrideIpProtocol is disabled"

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$2500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 269
    return-void

    .line 272
    :cond_3
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmQtiDataProfileManager(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    move-result-object v5

    invoke-virtual {v5, v1, v6}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->overrideIpProtocol(II)V

    .line 275
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v5}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$2600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v7, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2$$ExternalSyntheticLambda1;-><init>(I)V

    .line 276
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    .line 279
    .local v5, "isInternetReconnectNeeded":Z
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OVERRIDE_IP_PROTOCOL received, isInternetReconnectNeeded="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$2700(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 280
    if-eqz v5, :cond_6

    .line 281
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v7}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$2800(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v7, v4}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->setOverrideIpProtocolOngoing(Z)V

    .line 282
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const v7, 0x420cd

    invoke-virtual {v4, v7}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->removeMessages(I)V

    .line 283
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-virtual {v4, v7}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 284
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-virtual {v7, v4, v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 263
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "isInternetReconnectNeeded":Z
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const-string v3, "overrideIpProtocol invalid params"

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$2300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 264
    return-void

    .line 253
    .end local v1    # "ipProtocol":I
    .end local v6    # "subId":I
    :cond_5
    :goto_1
    nop

    .line 288
    :cond_6
    :goto_2
    return-void
.end method
