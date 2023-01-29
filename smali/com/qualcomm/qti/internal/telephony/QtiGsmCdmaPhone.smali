.class public Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
.super Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;
.source "QtiGsmCdmaPhone.java"


# static fields
.field private static final EVENT_ESSENTIAL_SIM_RECORDS_LOADED:I = 0x42

.field private static final EVENT_QUERY_VONR_ENABLED_DONE:I = 0x43

.field private static final EVENT_RESET_CARRIER_KEY_IMSI_ENCRYPTION:I = 0x41

.field private static final LOG_TAG:Ljava/lang/String; = "QtiGsmCdmaPhone"

.field private static final PROP_EVENT_START:I = 0x40


# instance fields
.field private imsiToken:I

.field private mCallback:Lcom/qti/extphone/IExtPhoneCallback;

.field private mClient:Lcom/qti/extphone/Client;

.field private mContext:Landroid/content/Context;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mIsInSecureMode:Z

.field private mLock:Ljava/lang/Object;

.field private final mPendingRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mQtiRadioConfigClient:Lcom/qti/extphone/Client;

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

.field private mServiceCallback:Lcom/qti/extphone/ServiceCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/IExtPhoneCallback;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/Client;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mClient:Lcom/qti/extphone/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPendingRequests:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/Client;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRadioConfigClient:Lcom/qti/extphone/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Lcom/qti/extphone/Client;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsInSecureMode(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsInSecureMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Lcom/qti/extphone/Client;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRadioConfigClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloge(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCheckForNetworkSelectionModeAutomatic(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;ILandroid/os/Message;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->onCheckForNetworkSelectionModeAutomatic(ILandroid/os/Message;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "phoneId"    # I
    .param p5, "precisePhoneType"    # I
    .param p6, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 99
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I
    .param p6, "precisePhoneType"    # I
    .param p7, "telephonyComponentFactory"    # Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 106
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->imsiToken:I

    .line 92
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsInSecureMode:Z

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPendingRequests:Ljava/util/HashMap;

    .line 118
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 145
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    .line 108
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 109
    const-string v0, "Constructor"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getQtiRilInterface()Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    .line 111
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x41

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 114
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 115
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 116
    return-void
.end method

.method private getQtiRilInterface()Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "getQtiRilInterface, unitTestMode = true"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    move-result-object v0

    .local v0, "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    goto :goto_0

    .line 253
    .end local v0    # "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    .line 255
    .restart local v0    # "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    :goto_0
    return-object v0
.end method

.method private handleEssentialRecordsLoaded()V
    .locals 7

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEssentialRecordsLoaded, mPhoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 289
    const-string v0, "LOADED"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->resolveSubscriptionCarrierId(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 293
    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 294
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    const-string v2, "ESSENTIAL_LOADED"

    invoke-virtual {v0, v1, v2}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isUsingNewDataStack()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->setEssentialRecordsLoaded(Z)V

    goto :goto_1

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v1, v4

    .line 302
    .local v5, "transport":I
    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 303
    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setEssentialRecordsLoaded(Z)V

    .line 301
    .end local v5    # "transport":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 307
    :cond_2
    :goto_1
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiGsmCdmaPhone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiGsmCdmaPhone"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void
.end method

.method private onCheckForNetworkSelectionModeAutomatic(ILandroid/os/Message;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "status"    # Lcom/qti/extphone/Status;
    .param p4, "modes"    # Lcom/qti/extphone/NetworkSelectionMode;

    .line 543
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p4, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 544
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x1

    .line 545
    .local v1, "doAutomatic":Z
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    .line 546
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getAccessMode()I

    move-result v2

    .line 547
    .local v2, "accessMode":I
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 549
    :try_start_0
    invoke-virtual {p4}, Lcom/qti/extphone/NetworkSelectionMode;->getIsManual()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p4}, Lcom/qti/extphone/NetworkSelectionMode;->getAccessMode()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v2, :cond_0

    .line 551
    const/4 v1, 0x0

    .line 555
    :cond_0
    goto :goto_0

    .line 553
    :catch_0
    move-exception v3

    .line 557
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 558
    :try_start_1
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 559
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    new-instance v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>()V

    .line 564
    .local v3, "nsm":Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    iput-object p2, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 565
    const-string v5, ""

    iput-object v5, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 566
    const-string v5, ""

    iput-object v5, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 567
    const-string v5, ""

    iput-object v5, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    .line 569
    if-eqz v1, :cond_2

    .line 570
    const/16 v4, 0x11

    invoke-virtual {p0, v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 571
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 572
    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 573
    :cond_2
    const-string v5, "QtiGsmCdmaPhone"

    const-string v6, "setNetworkSelectionModeAutomatic - already auto, ignoring"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v5, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v5, :cond_3

    .line 576
    iget-object v5, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    iput v4, v5, Landroid/os/Message;->arg1:I

    .line 579
    :cond_3
    iput-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 580
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    .line 583
    :goto_1
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    .line 584
    return-void

    .line 559
    .end local v3    # "nsm":Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 4
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v0

    .line 463
    .local v0, "isInEcbm":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptCall: mIsInSecureMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsInSecureMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isInEcbm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 465
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsInSecureMode:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const/16 v2, 0x9

    const-string v3, "Secure Mode"

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 466
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->acceptCall(I)V

    .line 471
    return-void
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Ljava/util/function/Consumer;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "dialArgs"    # Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/telephony/Phone;",
            ">;)",
            "Lcom/android/internal/telephony/Connection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 476
    .local p3, "chosenPhoneConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/internal/telephony/Phone;>;"
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v0

    .line 477
    .local v0, "isEmergency":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dial: mIsInSecureMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsInSecureMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEmergency = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 479
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsInSecureMode:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const/16 v2, 0x9

    const-string v3, "Secure Mode"

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 480
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Ljava/util/function/Consumer;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dispose()V
    .locals 1

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    .line 186
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->dispose()V

    .line 187
    return-void
.end method

.method public exitScbm()V
    .locals 1

    .line 416
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->exitScbm()V

    .line 417
    return-void
.end method

.method public getFullIccSerialNumber()Ljava/lang/String;
    .locals 3

    .line 276
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->getFullIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v1

    .line 280
    .local v1, "port":Lcom/android/internal/telephony/uicc/UiccPort;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 282
    .end local v1    # "port":Lcom/android/internal/telephony/uicc/UiccPort;
    :cond_1
    return-object v0
.end method

.method public getSmartTempDdsSwitchSupported()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSmartTempDdsSwitchSupported:Z

    return v0
.end method

.method public getTelephonyTempDdsSwitch()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mTelephonyTempDdsSwitch:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "QtiGsmCdmaPhone"

    sparse-switch v0, :sswitch_data_0

    .line 241
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 231
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 232
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 233
    goto/16 :goto_0

    .line 236
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 237
    .local v2, "enabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event EVENT_QUERY_VONR_ENABLED_DONE Received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    goto :goto_0

    .line 221
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "enabled":Z
    :sswitch_1
    const-string v0, "Event EVENT_ESSENTIAL_SIM_RECORDS_LOADED Received"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->handleEssentialRecordsLoaded()V

    .line 223
    goto :goto_0

    .line 216
    :sswitch_2
    const-string v0, "Event EVENT_RESET_CARRIER_KEY_IMSI_ENCRYPTION"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 217
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->resetCarrierKeysForImsiEncryption()V

    .line 218
    goto :goto_0

    .line 226
    :sswitch_3
    const-string v0, "Event EVENT_MODEM_RESET Received"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->handleModemReset()V

    .line 228
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 229
    goto :goto_0

    .line 204
    :sswitch_4
    const-string v0, "Event EVENT_NV_READY Received"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 207
    const-string v0, "notifyMessageWaitingChanged"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 209
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updateVoiceMail()V

    .line 212
    goto :goto_0

    .line 196
    :sswitch_5
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify call forward indication, phone id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->notifyCallForwardingIndicator()V

    .line 200
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 201
    nop

    .line 245
    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x17 -> :sswitch_4
        0x2d -> :sswitch_3
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z
    .locals 2
    .param p1, "ussdRequest"    # Ljava/lang/String;
    .param p2, "wrappedCallback"    # Landroid/os/ResultReceiver;

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUssdRequest: mIsInSecureMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsInSecureMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 502
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsInSecureMode:Z

    if-nez v0, :cond_0

    .line 503
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->handleUssdRequest(Ljava/lang/String;Landroid/os/ResultReceiver;)Z

    move-result v0

    return v0

    .line 505
    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->sendUssdResponse(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/ResultReceiver;)V

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public isExitScbmFeatureSupported()Z
    .locals 1

    .line 440
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isExitScbmFeatureSupported()Z

    move-result v0

    return v0
.end method

.method public isInScbm()Z
    .locals 1

    .line 412
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isInScbm()Z

    move-result v0

    return v0
.end method

.method public isInScbm(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 436
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isInScbm(I)Z

    move-result v0

    return v0
.end method

.method public isScbmTimerCanceledForEmergency()Z
    .locals 1

    .line 444
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isScbmTimerCanceledForEmergency()Z

    move-result v0

    return v0
.end method

.method public isUsingNewDataStack()Z
    .locals 1

    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method notifySubInfoAdded()V
    .locals 2

    .line 449
    const-string v0, "notifySubInfoAdded, query IMEI"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 451
    return-void
.end method

.method public onCarrierConfigLoadedForEssentialRecords()V
    .locals 5

    .line 310
    const-string v0, "onCarrierConfigLoadedForEssentialRecords"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isUsingNewDataStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->onCarrierConfigLoadedForEssentialRecords()V

    goto :goto_1

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 318
    .local v3, "transport":I
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 319
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onCarrierConfigLoadedForEssentialRecords()V

    .line 317
    .end local v3    # "transport":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 323
    :cond_2
    :goto_1
    return-void
.end method

.method protected registerForIccRecordEvents()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    .line 328
    .local v0, "qtiSst":Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 330
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 331
    const-string v2, "registerForEssentialRecordsLoaded"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 332
    const/16 v2, 0x42

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForEssentialRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 334
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->registerForIccRecordEvents()V

    .line 335
    return-void
.end method

.method public registerForScbmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 428
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->registerForScbmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 429
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 3
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;

    .line 261
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 262
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/CarrierInfoManager;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V

    .line 267
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->imsiToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->imsiToken:I

    .line 268
    invoke-virtual {v1, v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;)V

    .line 270
    :goto_0
    return-void
.end method

.method public setLocalCallHold(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 176
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const-string v0, "mQtiRilInterface is not ready yet"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->setLocalCallHold(IZ)Z

    move-result v0

    return v0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 5
    .param p1, "response"    # Landroid/os/Message;

    .line 516
    const-string v0, "setNetworkSelectionModeAutomatic, querying current mode"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isCagSnpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    const/4 v1, 0x0

    .line 522
    .local v1, "serial":I
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v2, v3, v4}, Lcom/qti/extphone/ExtTelephonyManager;->getNetworkSelectionMode(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v2

    .line 523
    .local v2, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v2}, Lcom/qti/extphone/Token;->get()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 526
    .end local v2    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 535
    .end local v1    # "serial":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 524
    .restart local v1    # "serial":I
    :catch_0
    move-exception v2

    .line 525
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getNetworkSelectionMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 527
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    :try_start_2
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 531
    :try_start_3
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 534
    goto :goto_1

    .line 532
    :catch_1
    move-exception v2

    .line 533
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 535
    .end local v1    # "serial":I
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 529
    .restart local v1    # "serial":I
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
    .end local p1    # "response":Landroid/os/Message;
    :try_start_6
    throw v3

    .line 535
    .end local v1    # "serial":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
    .restart local p1    # "response":Landroid/os/Message;
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 537
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 539
    :goto_3
    return-void
.end method

.method public setOnScbmExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 420
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->setOnScbmExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 421
    return-void
.end method

.method public setSmartTempDdsSwitchSupported(Z)V
    .locals 0
    .param p1, "smartDdsSwitch"    # Z

    .line 351
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSmartTempDdsSwitchSupported:Z

    .line 352
    return-void
.end method

.method public setTelephonyTempDdsSwitch(Z)V
    .locals 0
    .param p1, "telephonyDdsSwitch"    # Z

    .line 361
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mTelephonyTempDdsSwitch:Z

    .line 362
    return-void
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 2
    .param p1, "nsr"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "response"    # Landroid/os/Message;

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNetworkScan: mIsInSecureMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsInSecureMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 490
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsInSecureMode:Z

    if-nez v0, :cond_0

    .line 491
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    goto :goto_0

    .line 493
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x36

    .line 494
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    .line 493
    invoke-static {p2, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 495
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 497
    :goto_0
    return-void
.end method

.method protected unregisterForIccRecordEvents()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;

    .line 340
    .local v0, "qtiSst":Lcom/qualcomm/qti/internal/telephony/QtiServiceStateTracker;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 342
    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 343
    const-string v2, "unregisterForEssentialRecordsLoaded"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForEssentialRecordsLoaded(Landroid/os/Handler;)V

    .line 346
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/vendor/VendorGsmCdmaPhone;->unregisterForIccRecordEvents()V

    .line 347
    return-void
.end method

.method public unregisterForScbmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 432
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->unregisterForScbmTimerReset(Landroid/os/Handler;)V

    .line 433
    return-void
.end method

.method public unsetOnScbmExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 424
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->unsetOnScbmExitResponse(Landroid/os/Handler;)V

    .line 425
    return-void
.end method

.method protected updateVoNrSettings(Landroid/os/PersistableBundle;)V
    .locals 8
    .param p1, "config"    # Landroid/os/PersistableBundle;

    .line 371
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v0

    .line 374
    .local v0, "slot":Lcom/android/internal/telephony/uicc/UiccSlot;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    if-nez p1, :cond_1

    .line 379
    const-string v1, "didn\'t get the vonr_enabled_bool from the carrier config."

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 380
    return-void

    .line 383
    :cond_1
    nop

    .line 384
    const-string v1, "vonr_enabled_bool"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 386
    .local v1, "mIsVonrEnabledByCarrier":Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 387
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getSubId()I

    move-result v3

    .line 386
    const-string v4, "nr_advanced_calling_enabled"

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getSubscriptionProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "result":Ljava/lang/String;
    const/4 v3, -0x1

    .line 390
    .local v3, "setting":I
    if-eqz v2, :cond_2

    .line 391
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 394
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VoNR setting from telephony.db:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,vonr_enabled_bool:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 402
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    .line 403
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x43

    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V

    goto :goto_0

    .line 404
    :cond_3
    const/16 v4, 0x3d

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    .line 405
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v7, v6, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V

    goto :goto_0

    .line 406
    :cond_4
    if-nez v3, :cond_5

    .line 407
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v6, v7, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V

    .line 409
    :cond_5
    :goto_0
    return-void

    .line 375
    .end local v1    # "mIsVonrEnabledByCarrier":Z
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "setting":I
    :cond_6
    :goto_1
    return-void
.end method
