.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;
.super Lcom/android/internal/telephony/data/DataSettingsManager;
.source "QtiDataSettingsManager.java"


# static fields
.field private static final EVENT_ACTIVE_PHONE_SWITCH:I = 0x64

.field private static final EVENT_INITIALIZE:I = 0xb

.field private static final EVENT_SUBSCRIPTIONS_CHANGED:I = 0x4


# instance fields
.field private mLogTag:Ljava/lang/String;

.field private mPhoneId:I

.field private mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

.field private mSubId:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dataNetworkController"    # Lcom/android/internal/telephony/data/DataNetworkController;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "callback"    # Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataSettingsManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDSMGR-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mLogTag:Ljava/lang/String;

    .line 64
    move-object v0, p2

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mSubId:I

    .line 66
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mPhoneId:I

    .line 67
    const-string v0, "Constructor ends"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method private onInit()V
    .locals 3

    .line 95
    const-string v0, "onInit..."

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->registerForActivePhoneSwitch(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 98
    return-void
.end method

.method private sendDataDuringCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 101
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "sendDataDuringCall SUB ID is invalid"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 103
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    if-nez v0, :cond_1

    .line 106
    const-string v0, "sendDataDuringCall mQtiDataNetworkController is null"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 107
    return-void

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDataDuringCall mPhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + mSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->log(Ljava/lang/String;)V

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 90
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 87
    :sswitch_0
    const-string v0, "EVENT_ACTIVE_PHONE_SWITCH"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->sendDataDuringCall(Ljava/lang/String;)V

    .line 88
    goto :goto_0

    .line 75
    :sswitch_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->handleMessage(Landroid/os/Message;)V

    .line 76
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->onInit()V

    .line 77
    goto :goto_0

    .line 79
    :sswitch_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->handleMessage(Landroid/os/Message;)V

    .line 80
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    .local v0, "subId":I
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mSubId:I

    if-eq v1, v0, :cond_0

    .line 82
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->mSubId:I

    .line 83
    const-string v1, "EVENT_SUBSCRIPTIONS_CHANGED"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataSettingsManager;->sendDataDuringCall(Ljava/lang/String;)V

    .line 92
    .end local v0    # "subId":I
    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0xb -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
