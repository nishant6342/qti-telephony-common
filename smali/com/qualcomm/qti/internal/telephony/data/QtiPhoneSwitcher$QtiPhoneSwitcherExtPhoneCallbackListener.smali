.class public Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;
.super Lcom/qti/extphone/ExtPhoneCallbackListener;
.source "QtiPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QtiPhoneSwitcherExtPhoneCallbackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 219
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    .line 220
    invoke-direct {p0, p2}, Lcom/qti/extphone/ExtPhoneCallbackListener;-><init>(Landroid/os/Looper;)V

    .line 221
    return-void
.end method


# virtual methods
.method public onDdsSwitchCriteriaChange(IZ)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "telephonyDdsSwitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: onDdsSwitchCriteriaChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$500(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 228
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 232
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_2

    .line 235
    if-eqz p2, :cond_1

    .line 236
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    .line 239
    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$misTelTempDdsSwitchSatisfiedWithDdsSubSituation(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 240
    .local v1, "isTelTempDdsEnabled":Z
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable telephony temp DDS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$600(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->setTelephonyTempDdsSwitch(Z)V

    .line 243
    .end local v1    # "isTelTempDdsEnabled":Z
    :cond_2
    return-void
.end method

.method public onDdsSwitchRecommendation(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "recommendedSlotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: onDdsSwitchRecommendation, recommendedSlotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$700(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 250
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$mgetPrimaryDataPhoneId(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 254
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$802(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;I)I

    .line 255
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$900(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    const-string v1, "Precise call state simulates"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$1000(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v0, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$1102(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;I)I

    .line 262
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    const/4 v1, 0x0

    const-string v2, "recommendation"

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    .line 263
    return-void
.end method

.method public onDualDataCapabilityChanged(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;Z)V
    .locals 3
    .param p1, "token"    # Lcom/qti/extphone/Token;
    .param p2, "status"    # Lcom/qti/extphone/Status;
    .param p3, "support"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualDataCapabilityChanged :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$1200(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 269
    if-eqz p3, :cond_0

    .line 270
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$msendDualDataUserPreference(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)V

    .line 272
    :cond_0
    return-void
.end method

.method public onDualDataRecommendation(Lcom/qti/extphone/DualDataRecommendation;)V
    .locals 3
    .param p1, "rec"    # Lcom/qti/extphone/DualDataRecommendation;

    .line 287
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: onDualDataRecommendation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$1400(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$mupdateAndNotify(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Lcom/qti/extphone/DualDataRecommendation;)V

    .line 289
    return-void
.end method

.method public setDualDataUserPreferenceResponse(Lcom/qti/extphone/Token;Lcom/qti/extphone/Status;)V
    .locals 3
    .param p1, "token"    # Lcom/qti/extphone/Token;
    .param p2, "status"    # Lcom/qti/extphone/Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDualDataUserPreferenceResponse: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->access$1300(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Lcom/qti/extphone/Status;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher$QtiPhoneSwitcherExtPhoneCallbackListener;->this$0:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->-$$Nest$fgetmDualDataUserPreference(Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;)I

    move-result v1

    const-string v2, "dual_data_preference"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    :cond_0
    return-void
.end method
