.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;
.super Lcom/android/internal/telephony/data/DataConfigManager;
.source "QtiDataConfigManager.java"


# static fields
.field private static final EVENT_CARRIER_CONFIG_LOADED_ON_ESSENTIAL_RECORDS:I = 0x65


# instance fields
.field protected mApnsWithSameGID:[Ljava/lang/String;

.field protected mIsApnFilteringRequired:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataConfigManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V

    .line 48
    const-string v0, "QtiDataConfigManager: constructor"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->log(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getApnsWithSameGID()[Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mApnsWithSameGID:[Ljava/lang/String;

    return-object v0
.end method

.method public getPdpRejectCauseSamePdnNotAllowed()Ljava/lang/String;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x104028e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpRejectCauseServiceNotSubscribed()Ljava/lang/String;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x104028f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpRejectCauseUserAuthentication()Ljava/lang/String;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x1040290

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpRejectDialogTitle()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x104028d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpRejectRetryDelay()J
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x10e00bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDCM handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->log(Ljava/lang/String;)V

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 60
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataConfigManager;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 56
    :pswitch_0
    const-string v0, "EVENT_CARRIER_CONFIG_LOADED_ON_ESSENTIAL_RECORDS"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->log(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->updateCarrierConfig()V

    .line 58
    nop

    .line 62
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public isApnFilteringWithRadioCapabilityRequired()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mIsApnFilteringRequired:Z

    return v0
.end method

.method public isPdpRejectConfigEnabled()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mResources:Landroid/content/res/Resources;

    const v1, 0x1110187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onCarrierConfigLoadedForEssentialRecords()V
    .locals 1

    .line 65
    const-string v0, "QtiDCM onCarrierConfigLoadedForEssentialRecords"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->log(Ljava/lang/String;)V

    .line 66
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->sendEmptyMessage(I)Z

    .line 67
    return-void
.end method

.method protected updateOtherConfigs()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "multi_apn_array_for_same_gid"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mApnsWithSameGID:[Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mCarrierConfig:Landroid/os/PersistableBundle;

    const-string v1, "require_apn_filtering_with_radio_capability_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->mIsApnFilteringRequired:Z

    .line 77
    return-void
.end method
