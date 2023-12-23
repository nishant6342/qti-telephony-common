.class public Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
.super Landroid/os/Handler;
.source "QtiUiccCardProvisioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    }
.end annotation


# static fields
.field private static final ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

.field private static final DBG:Z = true

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x1

.field private static final EVENT_OEM_HOOK_SERVICE_READY:I = 0x3

.field private static final EVENT_RADIO_AVAILABLE:I = 0x5

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x7

.field private static final EVENT_SIM_REFRESH:I = 0x6

.field private static final EVENT_UNSOL_MANUAL_PROVISION_STATUS_CHANGED:I = 0x2

.field private static final EXTRA_NEW_PROVISION_STATE:Ljava/lang/String; = "newProvisionState"

.field private static final GENERIC_FAILURE:I = -0x1

.field private static final ICCID_MINIMUM_LEN:I = 0x13

.field private static final INVALID_INPUT:I = -0x2

.field private static final LOG_TAG:Ljava/lang/String; = "QtiUiccCardProvisioner"

.field private static final REQUEST_IN_PROGRESS:I = -0x3

.field private static final SUCCESS:I = 0x0

.field private static final VDBG:Z = false

.field private static mNumPhones:I

.field private static mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

.field private static sManualProvLock:Ljava/lang/Object;


# instance fields
.field private mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private final mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIsIccIdQueryPending:[Z

.field private mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

.field private mNeedSetDds:Z

.field private mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

.field private mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

.field private mSimFullIccId:[Ljava/lang/String;

.field private mSimIccId:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 195
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 80
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNeedSetDds:Z

    .line 196
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 198
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 199
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    sput v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Invoking constructor, no of phones = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 202
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 203
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    new-array v2, v1, [Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    .line 204
    new-array v2, v1, [Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    .line 205
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    .line 206
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    .line 207
    new-array v2, v1, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 208
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    .line 209
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v2, v1

    .line 211
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v3, v2, v1

    .line 212
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    new-instance v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;-><init>()V

    aput-object v3, v2, v1

    .line 213
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v3, v2, v1

    .line 214
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aput-boolean v0, v2, v1

    .line 215
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    new-instance v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    invoke-direct {v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;-><init>()V

    aput-object v3, v2, v1

    .line 217
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/4 v3, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 218
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/4 v3, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 219
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/4 v3, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "index":I
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 222
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 224
    invoke-static {p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 225
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForServiceReadyEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->registerForUnsol(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 228
    return-void
.end method

.method private broadcastManualProvisionStatusChanged(II)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "newProvisionState"    # I

    .line 613
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.ACTION_UICC_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 615
    const-string v1, "newProvisionState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 617
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 618
    return-void
.end method

.method private canProcessRequest(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .line 771
    const/4 v0, 0x0

    .line 773
    .local v0, "retVal":Z
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    const/4 v0, 0x1

    goto :goto_0

    .line 776
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request can\'t be processed, slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numPhones "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 778
    :goto_0
    return v0
.end method

.method private enforceModifyPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 765
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method private getCurrentProvisioningStatus(I)I
    .locals 6
    .param p1, "slotId"    # I

    .line 622
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    .line 624
    .local v1, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 625
    const-string v2, "getCurrentProvisioningStatus for eUICC slot"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 627
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_0

    .line 628
    monitor-exit v0

    const/4 v0, -0x2

    return v0

    .line 631
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    const-string v3, "telephony_subscription_service"

    .line 632
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 633
    .local v2, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v3

    .line 635
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 636
    monitor-exit v0

    return v5

    .line 640
    :cond_1
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 641
    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    move v4, v5

    .line 642
    .local v4, "provStatus":I
    monitor-exit v0

    return v4

    .line 644
    .end local v2    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v3    # "subId":I
    .end local v4    # "provStatus":I
    :cond_3
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v2

    monitor-exit v0

    return v2

    .line 645
    .end local v1    # "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFullIccIdFromUicc(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, "fullIccId":Ljava/lang/String;
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v1

    .line 531
    .local v1, "uiccPort":Lcom/android/internal/telephony/uicc/UiccPort;
    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 534
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " queryUiccProvisionInfo, uiccPort["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] object is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 536
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " queryUiccProvisionInfo, full iccId for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 537
    return-object v0
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2

    .line 189
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 190
    const-string v0, "QtiUiccCardProvisioner"

    const-string v1, "QtiUiccCardProvisioner.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0
.end method

.method private handleUnsolManualProvisionEvent(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 380
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 385
    .local v0, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 387
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 388
    .local v1, "rspId":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 390
    .local v2, "slotId":I
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x80404

    if-ne v1, v3, :cond_1

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Unsol: rspId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 393
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(IZ)V

    .line 394
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 395
    .local v3, "dataSubId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v4

    .line 396
    .local v4, "dataSlotId":I
    if-ne v2, v4, :cond_1

    .line 397
    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 398
    const-string v5, "Set dds after SSR"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->setDdsIfRequired()V

    .line 402
    .end local v3    # "dataSubId":I
    .end local v4    # "dataSlotId":I
    :cond_1
    return-void

    .line 381
    .end local v0    # "payload":Ljava/nio/ByteBuffer;
    .end local v1    # "rspId":I
    .end local v2    # "slotId":I
    :cond_2
    :goto_0
    const-string v0, "Null data received in handleUnsolManualProvisionEvent"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private isEuiccHasEmptyProfiles(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, "retVal":Z
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 823
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    .line 824
    .local v2, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 825
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v3

    .line 826
    .local v3, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    if-eqz v3, :cond_0

    .line 827
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v4

    .line 828
    .local v4, "eUiccSupported":Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->getNumApplications()I

    move-result v5

    .line 829
    .local v5, "numOfApps":I
    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    .line 830
    const-string v6, "eUICC don\'t have active profiles"

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 831
    const/4 v0, 0x1

    .line 835
    .end local v3    # "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    .end local v4    # "eUiccSupported":Z
    .end local v5    # "numOfApps":I
    :cond_0
    return v0
.end method

.method private isValidIccid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iccid"    # Ljava/lang/String;

    .line 520
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const-string v0, "89"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 521
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isValidSlotId(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 782
    const/4 v0, 0x0

    .line 784
    .local v0, "retVal":Z
    if-ltz p1, :cond_0

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge p1, v1, :cond_0

    .line 785
    const/4 v0, 0x1

    .line 787
    :cond_0
    return v0
.end method

.method private loadIccId(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .line 541
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 542
    .local v0, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_3

    .line 543
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    .line 544
    .local v1, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    if-nez v1, :cond_0

    .line 545
    return-void

    .line 547
    :cond_0
    const/4 v2, 0x0

    .line 548
    .local v2, "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getNumApplications()I

    move-result v3

    .line 549
    .local v3, "numApps":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 550
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    .line 551
    .local v5, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v6, v7, :cond_1

    .line 552
    move-object v2, v5

    .line 553
    goto :goto_1

    .line 549
    .end local v5    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 556
    .end local v4    # "i":I
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 557
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    .line 558
    .local v4, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-eqz v4, :cond_3

    .line 559
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, p1

    .line 560
    nop

    .line 561
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {p0, v6, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 560
    const/16 v6, 0x2fe2

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 565
    .end local v1    # "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    .end local v2    # "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v3    # "numApps":I
    .end local v4    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_3
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 850
    const-string v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 858
    const-string v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 854
    const-string v0, "QtiUiccCardProvisioner"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return-void
.end method

.method public static make(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 167
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    goto :goto_0

    .line 170
    :cond_0
    const-string v0, "QtiUiccCardProvisioner"

    const-string v1, "QtiUiccCardProvisioner.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;

    .line 158
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    goto :goto_0

    .line 161
    :cond_0
    const-string v0, "QtiUiccCardProvisioner"

    const-string v1, "QtiUiccCardProvisioner.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    return-object v0
.end method

.method private queryAllUiccProvisionInfo()V
    .locals 3

    .line 405
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " query  provision info, card state["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 409
    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(IZ)V

    .line 405
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    .end local v0    # "index":I
    :cond_1
    return-void
.end method

.method private queryUiccProvisionInfo(IZ)V
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "useSimIORequest"    # Z

    .line 423
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v0, v0, p1

    .line 429
    .local v0, "oldStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccProvisionPreference(I)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    move-result-object v1

    .line 430
    .local v1, "subStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getCurrentState()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 431
    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 432
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v2

    .line 433
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aput-object v1, v3, p1

    .line 434
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 439
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getFullIccIdFromUicc(I)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "fullIccId":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, "iccId":Ljava/lang/String;
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    .line 442
    .local v4, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v5, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v5

    .line 444
    .local v5, "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v6, v6, p1

    if-eqz v6, :cond_2

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 445
    :cond_2
    if-eqz v4, :cond_8

    .line 446
    sget-object v6, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v6

    .line 447
    .local v6, "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    if-eqz v5, :cond_7

    .line 448
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v7

    .line 449
    .local v7, "eUiccSupported":Z
    if-eqz v6, :cond_7

    .line 450
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccProfile;->getNumApplications()I

    move-result v8

    .line 451
    .local v8, "numOfApps":I
    if-nez v8, :cond_3

    if-eqz v7, :cond_3

    .line 452
    const-string v9, "Can\'t addsubinforecord as num_apps 0 and slot is Euicc"

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 455
    :cond_3
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidIccid(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 456
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v2, v9, p1

    .line 457
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;

    move-result-object v9

    .line 458
    invoke-virtual {v9, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->updateSubscription(I)V

    .line 459
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v9, p1

    goto/16 :goto_1

    .line 461
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " queryUiccProvisionInfo: useSimIORequest=  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 463
    if-eqz p2, :cond_5

    .line 464
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loadIccId(I)V

    goto :goto_1

    .line 466
    :cond_5
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v9, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidIccid(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 471
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OEM add subInfo record, iccId["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 473
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v2, v9, p1

    .line 474
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;

    move-result-object v9

    .line 475
    invoke-virtual {v9, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->updateSubscription(I)V

    .line 476
    iget-object v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v9, p1

    goto :goto_1

    .line 478
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " queryUiccProvisionInfo, ICCID["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 486
    .end local v6    # "uiccProfile":Lcom/android/internal/telephony/uicc/UiccProfile;
    .end local v7    # "eUiccSupported":Z
    .end local v8    # "numOfApps":I
    :cond_7
    :goto_1
    goto :goto_2

    .line 487
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " queryUiccProvisionInfo, uiccCard["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] object is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 490
    :cond_9
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " queryUiccProvisionInfo, iccId["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 493
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v6, v6, p1

    invoke-virtual {v0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->equals(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 494
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v6, v6, p1

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 495
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    const-string v7, "telephony_subscription_service"

    .line 496
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionManager;

    .line 497
    .local v6, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v7

    .line 503
    .local v7, "subId":I
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 504
    invoke-virtual {v6, v7}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 505
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->updateUserPreferences()V

    .line 508
    .end local v6    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v7    # "subId":I
    :cond_a
    if-eqz p2, :cond_b

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v6, v6, p1

    if-eqz v6, :cond_c

    .line 509
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " broadcasting ProvisionInfo, phoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 510
    nop

    .line 511
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v6

    .line 510
    invoke-direct {p0, p1, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    .line 512
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v7, v7, p1

    aput-object v7, v6, p1

    .line 515
    :cond_c
    return-void

    .line 424
    .end local v0    # "oldStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    .end local v1    # "subStatus":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;
    .end local v2    # "fullIccId":Ljava/lang/String;
    .end local v3    # "iccId":Ljava/lang/String;
    .end local v4    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v5    # "uiccSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    :cond_d
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem hook service is not ready yet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method private updateIccAvailability(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .line 568
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid phone Index!!! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 570
    return-void

    .line 572
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 573
    .local v0, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    .line 574
    .local v1, "newSlot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v1, :cond_6

    .line 575
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccAvailability, card state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v0, v2, p1

    .line 583
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    .line 584
    .local v2, "currentState":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v5, -0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v3, v3, p1

    if-eqz v3, :cond_1

    .line 587
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getFullIccIdFromUicc(I)Ljava/lang/String;

    move-result-object v4

    .line 586
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v5, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aget-boolean v3, v3, p1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 591
    invoke-direct {p0, p1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryUiccProvisionInfo(IZ)V

    goto :goto_0

    .line 592
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v4, :cond_3

    .line 593
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isStateUnknown()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v3, v3, p1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v3, v4, :cond_5

    .line 595
    :cond_4
    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v3

    .line 596
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 597
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 598
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setUserPreference(I)V

    .line 600
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 601
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, p1

    .line 602
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v5, v4, p1

    .line 603
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    .line 604
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v5, v7, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 603
    invoke-virtual {v4, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 605
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 607
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->updateUserPreferences()V

    goto :goto_0

    .line 605
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 610
    :cond_5
    :goto_0
    return-void

    .line 577
    .end local v2    # "currentState":I
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccAvailability, uicc card null, ignore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 578
    return-void
.end method


# virtual methods
.method public activateUiccCard(I)I
    .locals 6
    .param p1, "slotId"    # I

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " activateUiccCard: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem hook service is not ready yet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 682
    const/4 v0, -0x1

    return v0

    .line 685
    :cond_0
    const-string v0, "activateUiccCard"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 687
    const/4 v0, 0x0

    .line 689
    .local v0, "activateStatus":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 690
    const/4 v0, -0x2

    goto/16 :goto_1

    .line 691
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->canToggleUiccApplicationsEnablement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 692
    const-string v1, "activateUiccCard is not appropriate to use. For 1.5 HAL use enableUiccApplications"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 694
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 695
    :cond_2
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 696
    const-string v1, "activateUiccCard is not supported for Single SIM with 1.4 HAL"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 697
    const/4 v0, -0x1

    goto :goto_1

    .line 698
    :cond_3
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Uicc card in slot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] already activated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 700
    :cond_4
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 701
    const/4 v1, 0x0

    .line 703
    .local v1, "retVal":Z
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v4, v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v1

    .line 705
    if-nez v1, :cond_5

    .line 706
    const/4 v0, -0x1

    goto :goto_0

    .line 708
    :cond_5
    sget-object v4, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v4

    .line 709
    :try_start_0
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, p1

    invoke-virtual {v5, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 710
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " activation result["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 713
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 714
    .end local v1    # "retVal":Z
    goto :goto_1

    .line 710
    .restart local v1    # "retVal":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 715
    .end local v1    # "retVal":Z
    :cond_6
    const/4 v0, -0x3

    .line 718
    :goto_1
    return v0
.end method

.method public deactivateUiccCard(I)I
    .locals 5
    .param p1, "slotId"    # I

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " deactivateUiccCard: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem hook service is not ready yet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 726
    const/4 v0, -0x1

    return v0

    .line 729
    :cond_0
    const-string v0, "deactivateUiccCard"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, "deactivateState":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 733
    const/4 v0, -0x2

    goto/16 :goto_1

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p1

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->canToggleUiccApplicationsEnablement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 735
    const-string v1, "deactivateUiccCard is not appropriate to use. For 1.5 HAL use enableUiccApplications"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 737
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 738
    :cond_2
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 739
    const-string v1, "deactivateUiccCard is not supported for Single SIM with 1.4 HAL"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 740
    const/4 v0, -0x1

    goto :goto_1

    .line 741
    :cond_3
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v1

    if-nez v1, :cond_4

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Uicc card in slot["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] already in deactive state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 743
    :cond_4
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 744
    const/4 v1, 0x0

    .line 746
    .local v1, "retVal":Z
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v2, v3, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->setUiccProvisionPreference(II)Z

    move-result v1

    .line 748
    if-nez v1, :cond_5

    .line 749
    const/4 v0, -0x1

    goto :goto_0

    .line 751
    :cond_5
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v2

    .line 752
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v4, v4, p1

    invoke-virtual {v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->setCurrentState(I)V

    .line 753
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " deactivation result["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 756
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 757
    .end local v1    # "retVal":Z
    goto :goto_1

    .line 753
    .restart local v1    # "retVal":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 758
    .end local v1    # "retVal":Z
    :cond_6
    const/4 v0, -0x3

    .line 761
    :goto_1
    return v0
.end method

.method public dispose()V
    .locals 2

    .line 178
    const-string v0, " disposing... "

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 181
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 183
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unRegisterForServiceReadyEvent(Landroid/os/Handler;)V

    .line 184
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->unRegisterForUnsol(Landroid/os/Handler;)V

    .line 185
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    .line 186
    return-void
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 3
    .param p1, "slotId"    # I

    .line 649
    const/4 v0, -0x1

    .line 651
    .local v0, "currentStatus":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 655
    const/4 v0, 0x1

    goto :goto_0

    .line 657
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v0

    .line 660
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getCurrentUiccCardProvisioningStatus, state["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 662
    return v0
.end method

.method public getUiccCardProvisioningUserPreference(I)I
    .locals 3
    .param p1, "slotId"    # I

    .line 666
    const/4 v0, -0x1

    .line 668
    .local v0, "userPref":I
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->canProcessRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->sManualProvLock:Ljava/lang/Object;

    monitor-enter v1

    .line 670
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->getUserPreference()I

    move-result v2

    move v0, v2

    .line 671
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 674
    :cond_0
    :goto_0
    return v0
.end method

.method public getUiccFullIccId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 419
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getUiccIccId(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .line 415
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 248
    const/4 v0, -0x1

    .line 250
    .local v0, "phoneId":I
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "telephony_subscription_service"

    packed-switch v1, :pswitch_data_0

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: hit default case "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 274
    :pswitch_0
    const-string v1, " Event RADIO_NOT_AVAILABLE "

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNeedSetDds:Z

    .line 277
    goto/16 :goto_1

    .line 352
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 354
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_d

    .line 355
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SIM refresh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 357
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 362
    .local v2, "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    iget v3, v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 363
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 364
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v4, v3, v0

    .line 366
    .end local v2    # "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_0
    goto/16 :goto_1

    .line 367
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM refresh Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 252
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 253
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_d

    .line 254
    iget-object v3, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RADIO_AVAILABLE for phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 258
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 259
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 260
    .local v2, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v3

    .line 261
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-nez v4, :cond_4

    .line 264
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v4

    const/4 v5, -0x2

    if-ne v4, v5, :cond_4

    .line 266
    :cond_3
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->updateUserPreferences()V

    .line 269
    :cond_4
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v0

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 270
    .end local v2    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v3    # "subId":I
    goto/16 :goto_1

    .line 308
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 309
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    const/4 v3, 0x0

    .line 310
    .local v3, "iccId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 311
    .local v4, "fullIccId":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v1, :cond_6

    .line 312
    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 313
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 314
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    .line 315
    .local v6, "data":[B
    array-length v7, v6

    invoke-static {v6, v5, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object v4

    .line 316
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .end local v6    # "data":[B
    goto :goto_0

    .line 318
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in GET iccId["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 321
    :cond_6
    :goto_0
    if-ltz v0, :cond_d

    sget v6, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v0, v6, :cond_d

    .line 322
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mIsIccIdQueryPending:[Z

    aput-boolean v5, v6, v0

    .line 324
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM_IO add subInfo record, iccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    .line 326
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimFullIccId:[Ljava/lang/String;

    aput-object v4, v5, v0

    .line 327
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->updateSubscription(I)V

    .line 328
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aput-object v3, v5, v0

    .line 329
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isAllCardProvisionInfoReceived()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 330
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    .line 331
    invoke-virtual {v5, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 332
    .restart local v2    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v5

    .line 333
    .local v5, "subId":I
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 334
    invoke-virtual {v2, v5}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 335
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->updateUserPreferences()V

    .line 338
    .end local v2    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v5    # "subId":I
    :cond_7
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    if-eqz v2, :cond_d

    aget-object v2, v2, v0

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, v0

    .line 339
    invoke-virtual {v2, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;->equals(Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " broadcasting ProvisionInfo, phoneId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 341
    nop

    .line 342
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    .line 341
    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->broadcastManualProvisionStatusChanged(II)V

    .line 343
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mOldProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mProvisionStatus:[Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner$UiccProvisionStatus;

    aget-object v5, v5, v0

    aput-object v5, v2, v0

    goto :goto_1

    .line 346
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " EVENT_GET_ICCID_DONE, ICCID is empty, phoneId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logi(Ljava/lang/String;)V

    goto :goto_1

    .line 287
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "iccId":Ljava/lang/String;
    .end local v4    # "fullIccId":Ljava/lang/String;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 288
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_a

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 289
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 290
    .local v2, "isServiceReady":Z
    if-eqz v2, :cond_9

    .line 291
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->queryAllUiccProvisionInfo()V

    .line 293
    .end local v2    # "isServiceReady":Z
    :cond_9
    goto :goto_1

    .line 294
    :cond_a
    const-string v2, "Error: empty result, EVENT_OEM_HOOK_SERVICE_READY"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 296
    goto :goto_1

    .line 299
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 301
    .local v1, "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-eqz v1, :cond_b

    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_b

    .line 302
    iget-object v2, v1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->handleUnsolManualProvisionEvent(Landroid/os/Message;)V

    goto :goto_1

    .line 304
    :cond_b
    const-string v2, "Error: empty result, UNSOL_MANUAL_PROVISION_STATUS_CHANGED"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 306
    goto :goto_1

    .line 279
    .end local v1    # "asyncresult":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 280
    .local v1, "ar":Landroid/os/AsyncResult;
    if-eqz v1, :cond_c

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_c

    .line 281
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->updateIccAvailability(I)V

    goto :goto_1

    .line 283
    :cond_c
    const-string v2, "Error: Invalid card index EVENT_ICC_CHANGED "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->loge(Ljava/lang/String;)V

    .line 285
    nop

    .line 377
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :cond_d
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAllCardProvisionInfoReceived()Z
    .locals 5

    .line 797
    const/4 v0, 0x1

    .line 798
    .local v0, "received":Z
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v2, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNumPhones:I

    if-ge v1, v2, :cond_3

    .line 799
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->isEuiccHasEmptyProfiles(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 800
    const/4 v0, 0x1

    goto :goto_1

    .line 802
    :cond_0
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentProvisioningStatus(I)I

    move-result v2

    .line 803
    .local v2, "provPref":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mSimIccId:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 798
    .end local v2    # "provPref":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 806
    .restart local v2    # "provPref":I
    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllCardProvisionInfoReceived, prov pref["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 808
    const/4 v0, 0x0

    .line 809
    nop

    .line 813
    .end local v1    # "index":I
    .end local v2    # "provPref":I
    :cond_3
    return v0
.end method

.method public isAnyProvisionRequestInProgress()Z
    .locals 1

    .line 791
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mRequestInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public registerForManualProvisionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 232
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 233
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 235
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 236
    monitor-exit v1

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setDdsIfRequired()V
    .locals 4

    .line 839
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 840
    .local v0, "ddsSubId":I
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getPhoneId(Landroid/content/Context;I)I

    move-result v1

    .line 841
    .local v1, "ddsPhoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDdsIfRequired: ddsSub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ddsPhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " needSetDds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNeedSetDds:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->logd(Ljava/lang/String;)V

    .line 843
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNeedSetDds:Z

    if-eqz v2, :cond_0

    .line 844
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->onRadioCapChanged(I)V

    .line 845
    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNeedSetDds:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mNeedSetDds:Z

    .line 847
    :cond_0
    return-void
.end method

.method public unregisterForManualProvisionChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .line 240
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->mManualProvisionChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
