.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;
.super Lcom/qti/extphone/ExtPhoneCallbackListener;
.source "QtiDataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PhoneExtPhoneEventObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 996
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 997
    invoke-direct {p0, p2}, Lcom/qti/extphone/ExtPhoneCallbackListener;-><init>(Landroid/os/Looper;)V

    .line 998
    return-void
.end method


# virtual methods
.method public getQtiRadioCapabilityResponse(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;I)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "status"    # Lcom/qti/extphone/Status;
    .param p4, "raf"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1003
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$3300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmEnhancedRadioCapability(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;->updateEnhancedRadioCapability(I)V

    .line 1008
    return-void

    .line 1004
    :cond_1
    :goto_0
    return-void
.end method

.method public getSecureModeStatusResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 3
    .param p1, "token"    # Lcom/qti/extphone/Token;
    .param p2, "status"    # Lcom/qti/extphone/Status;
    .param p3, "enableStatus"    # Z

    .line 1075
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: getSecureModeStatusResponse enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$4400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v0, p3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fputmIsInSecureMode(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Z)V

    .line 1077
    return-void
.end method

.method public onDataDeactivateDelayTime(IJ)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "delayTimeMilliSecs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1029
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: onDataDeactivateDelayTime  SlotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delayTimeMilliSecs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$3800(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$3900(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 1034
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    return-void

    .line 1036
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v2, p2, p3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fputmCiwlanTimer(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;J)V

    .line 1041
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fgetmCiwlanTimer(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    .line 1043
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const v1, 0x420c9

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->removeMessages(I)V

    .line 1044
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendMessage(Landroid/os/Message;)Z

    .line 1046
    :cond_2
    return-void
.end method

.method public onDdsSwitchCapabilityChange(ILcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "token"    # Lcom/qti/extphone/Token;
    .param p3, "status"    # Lcom/qti/extphone/Status;
    .param p4, "smartDdsSupport"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: onDdsSwitchCapabilityChange support: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SlotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$3400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 1016
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    return-void

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$3500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$3600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/Phone;->setSmartTempDdsSwitchSupported(Z)V

    .line 1021
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$3700(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v2, "DDS_SWITCH_CAPABILITY_CHANGED"

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V

    .line 1024
    :cond_1
    return-void
.end method

.method public onEpdgOverCellularDataSupported(IZ)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "support"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: onEpdgOverCellularDataSupported SlotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$4000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$4100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v0, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fputmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Z)V

    .line 1057
    if-eqz p2, :cond_1

    .line 1058
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$msendCrossSimCallingEnabled(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)V

    .line 1060
    :cond_1
    return-void
.end method

.method public onSecureModeStatusChange(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: onSecureModeStatusChange enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$4200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 1065
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->-$$Nest$fputmIsInSecureMode(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Z)V

    .line 1066
    if-nez p1, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const-string v1, "Reevaluating unsatisfied network requests due to Secure Mode exit"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->access$4300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->SECURE_MODE_STATE_CHANGED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendMessage(Landroid/os/Message;)Z

    .line 1071
    :cond_0
    return-void
.end method
