.class Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;
.super Lcom/qti/extphone/ExtPhoneCallbackBase;
.source "QtiDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 186
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-direct {p0}, Lcom/qti/extphone/ExtPhoneCallbackBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataDeactivateDelayTime(IJ)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "delayTimeMilliSecs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->access$800(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

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

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->access$900(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_1

    return-void

    .line 217
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_2

    return-void

    .line 219
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v2, p2, p3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fputmCiwlanTimer(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;J)V

    .line 222
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fgetmCiwlanTimer(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    const v1, 0x420cb

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->removeMessages(I)V

    .line 225
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->sendMessage(Landroid/os/Message;)Z

    .line 227
    :cond_3
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

    .line 190
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

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

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 193
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->access$400(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 198
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/Phone;->setSmartTempDdsSwitchSupported(Z)V

    .line 199
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->access$500(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->access$600(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataAllowedInVoiceCall()Z

    move-result v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 201
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->access$700(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 200
    invoke-static {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$msendDataDuringVoiceCallInfo(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;ZI)V

    .line 204
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

    .line 232
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->access$1000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: onDataDeactivateDelayTime  SlotId: "

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

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->access$1100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_1

    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0, p2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$fputmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Z)V

    .line 241
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->access$1200(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->-$$Nest$msendCrossSimCallingEnabled(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)V

    .line 245
    :cond_2
    return-void
.end method
