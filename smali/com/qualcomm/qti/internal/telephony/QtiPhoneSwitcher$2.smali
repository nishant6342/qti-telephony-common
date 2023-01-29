.class Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;
.super Lcom/qti/extphone/ExtPhoneCallbackBase;
.source "QtiPhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    .line 107
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-direct {p0}, Lcom/qti/extphone/ExtPhoneCallbackBase;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onDdsSwitchCriteriaChange$0$com-qualcomm-qti-internal-telephony-QtiPhoneSwitcher$2(IZ)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "telephonyDdsSwitch"    # Z

    .line 118
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 119
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_4

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, "isTelTempDdsEnabled":Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 124
    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataAllowedInVoiceCall()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    move v1, v2

    goto :goto_2

    .line 127
    :cond_1
    if-eqz p2, :cond_2

    .line 128
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataAllowedInVoiceCall()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    move v1, v2

    .line 130
    :goto_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    .line 131
    invoke-static {v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-$$Nest$misTelTempDdsSwitchSatisfiedWithDdsSubSituation(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    move v1, v3

    .line 132
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

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

    invoke-static {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$1000(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->setTelephonyTempDdsSwitch(Z)V

    .line 135
    .end local v1    # "isTelTempDdsEnabled":Z
    :cond_4
    return-void
.end method

.method synthetic lambda$onDdsSwitchRecommendation$1$com-qualcomm-qti-internal-telephony-QtiPhoneSwitcher$2(I)V
    .locals 3
    .param p1, "recommendedSlotId"    # I

    .line 147
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->-$$Nest$mgetPrimaryDataPhoneId(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$602(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)I

    .line 149
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$700(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;)Lcom/android/internal/telephony/data/PhoneSwitcher$EmergencyOverrideRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const-string v1, "Precise call state simulates"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$800(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    invoke-static {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$902(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;I)I

    .line 156
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    const/4 v1, 0x0

    const-string v2, "recommendation"

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->onEvaluate(ZLjava/lang/String;)Z

    .line 157
    return-void
.end method

.method public onDdsSwitchCriteriaChange(IZ)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "telephonyDdsSwitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

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

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$400(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 114
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2$$ExternalSyntheticLambda0;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;IZ)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->post(Ljava/lang/Runnable;)Z

    .line 136
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

    .line 141
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExtPhoneCallback: onDdsSwitchRecommendation, recommendedSlotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->access$500(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;Ljava/lang/String;)V

    .line 143
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;->this$0:Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2$$ExternalSyntheticLambda1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher$2;I)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneSwitcher;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method
