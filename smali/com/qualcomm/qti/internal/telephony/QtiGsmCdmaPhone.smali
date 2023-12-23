.class public Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
.super Lcom/android/internal/telephony/GsmCdmaPhone;
.source "QtiGsmCdmaPhone.java"


# static fields
.field private static final EVENT_IMEI_TYPE_CHANGED:I = 0x48

.field private static final EVENT_QUERY_VONR_ENABLED_DONE:I = 0x47

.field private static final EVENT_RESET_CARRIER_KEY_IMSI_ENCRYPTION:I = 0x45

.field private static final LOG_TAG:Ljava/lang/String; = "QtiGsmCdmaPhone"

.field private static final PROP_EVENT_START:I = 0x44


# instance fields
.field private imsiToken:I

.field private mClient:Lcom/qti/extphone/Client;

.field private mContext:Landroid/content/Context;

.field private mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mForceReRegisterOngoing:Z

.field private mIsInSecureMode:Z

.field private mLastDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

.field private mLastTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private mLock:Ljava/lang/Object;

.field private mOverrideIpProtocolOngoing:Z

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

.field private mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

.field private mQueryImeiInfoOnInit:Z

.field private mServiceCallback:Lcom/qti/extphone/ServiceCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
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

.method static bridge synthetic -$$Nest$fgetmExtPhoneCallbackListener(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Lcom/qti/extphone/ExtPhoneCallbackListener;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

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

.method static bridge synthetic -$$Nest$fgetmQueryImeiInfoOnInit(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQueryImeiInfoOnInit:Z

    return p0
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

.method static bridge synthetic -$$Nest$fputmQueryImeiInfoOnInit(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQueryImeiInfoOnInit:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializePrimaryImei(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->initializePrimaryImei()V

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

    .line 110
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 112
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

    .line 117
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;)V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->imsiToken:I

    .line 100
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mIsInSecureMode:Z

    .line 101
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLock:Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPendingRequests:Ljava/util/HashMap;

    .line 105
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQueryImeiInfoOnInit:Z

    .line 129
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 160
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    .line 661
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mForceReRegisterOngoing:Z

    .line 663
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLastDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 664
    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLastTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 770
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mOverrideIpProtocolOngoing:Z

    .line 119
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    .line 120
    const-string v0, "Constructor"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getQtiRilInterface()Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    .line 122
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x45

    invoke-interface {v0, p0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForCarrierInfoForImsiEncryption(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 125
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 126
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 127
    return-void
.end method

.method private getQtiRilInterface()Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const-string v0, "getQtiRilInterface, unitTestMode = true"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/SimulatedQtiRilInterface;

    move-result-object v0

    .local v0, "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    goto :goto_0

    .line 332
    .end local v0    # "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiRilInterface;

    move-result-object v0

    .line 334
    .restart local v0    # "qtiRilInterface":Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;
    :goto_0
    return-object v0
.end method

.method private initializePrimaryImei()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;

    move-result-object v0

    .line 317
    .local v0, "imeiInfo":[Lcom/qti/extphone/QtiImeiInfo;
    if-eqz v0, :cond_0

    .line 319
    const/16 v1, 0x48

    invoke-virtual {p0, v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 321
    :cond_0
    const-string v1, "initializePrimaryImei: Invalid IMEI Info"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 790
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

    .line 791
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 794
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

    .line 795
    return-void
.end method

.method private onCheckForNetworkSelectionModeAutomatic(ILandroid/os/Message;Lcom/qti/extphone/Status;Lcom/qti/extphone/NetworkSelectionMode;)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "response"    # Landroid/os/Message;
    .param p3, "status"    # Lcom/qti/extphone/Status;
    .param p4, "modes"    # Lcom/qti/extphone/NetworkSelectionMode;

    .line 617
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p4, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 618
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v1, 0x1

    .line 619
    .local v1, "doAutomatic":Z
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    .line 620
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getAccessMode()I

    move-result v2

    .line 621
    .local v2, "accessMode":I
    invoke-virtual {p3}, Lcom/qti/extphone/Status;->get()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 623
    :try_start_0
    invoke-virtual {p4}, Lcom/qti/extphone/NetworkSelectionMode;->getIsManual()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p4}, Lcom/qti/extphone/NetworkSelectionMode;->getAccessMode()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v2, :cond_0

    .line 625
    const/4 v1, 0x0

    .line 629
    :cond_0
    goto :goto_0

    .line 627
    :catch_0
    move-exception v3

    .line 631
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 632
    :try_start_1
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 633
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    new-instance v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>()V

    .line 638
    .local v3, "nsm":Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
    iput-object p2, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 639
    const-string v5, ""

    iput-object v5, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 640
    const-string v5, ""

    iput-object v5, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 641
    const-string v5, ""

    iput-object v5, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->operatorAlphaShort:Ljava/lang/String;

    .line 643
    if-eqz v1, :cond_2

    .line 644
    const/16 v4, 0x11

    invoke-virtual {p0, v4, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 645
    .local v4, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 646
    .end local v4    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 647
    :cond_2
    const-string v5, "QtiGsmCdmaPhone"

    const-string v6, "setNetworkSelectionModeAutomatic - already auto, ignoring"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v5, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v5, :cond_3

    .line 650
    iget-object v5, v3, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;->message:Landroid/os/Message;

    iput v4, v5, Landroid/os/Message;->arg1:I

    .line 653
    :cond_3
    iput-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 654
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    .line 657
    :goto_1
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updateSavedNetworkOperator(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V

    .line 658
    return-void

    .line 633
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
.method public dispose()V
    .locals 1

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    .line 208
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->dispose()V

    .line 209
    return-void
.end method

.method public exitScbm()V
    .locals 1

    .line 486
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->exitScbm()V

    .line 487
    return-void
.end method

.method public getFullIccSerialNumber()Ljava/lang/String;
    .locals 3

    .line 355
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getFullIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "iccId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v1

    .line 359
    .local v1, "port":Lcom/android/internal/telephony/uicc/UiccPort;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 361
    .end local v1    # "port":Lcom/android/internal/telephony/uicc/UiccPort;
    :cond_1
    return-object v0
.end method

.method public getSmartTempDdsSwitchSupported()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSmartTempDdsSwitchSupported:Z

    return v0
.end method

.method public getTelephonyTempDdsSwitch()Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mTelephonyTempDdsSwitch:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 213
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

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "QtiGsmCdmaPhone"

    sparse-switch v0, :sswitch_data_0

    .line 308
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 265
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Lcom/qti/extphone/QtiImeiInfo;

    .line 266
    .local v0, "imeiInfo":[Lcom/qti/extphone/QtiImeiInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 267
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/qti/extphone/QtiImeiInfo;->getSlotId()I

    move-result v2

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    if-ne v2, v3, :cond_1

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImeiTypeChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/qti/extphone/QtiImeiInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 269
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/qti/extphone/QtiImeiInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/qti/extphone/QtiImeiInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mImei:Ljava/lang/String;

    .line 271
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/qti/extphone/QtiImeiInfo;->getImeiType()I

    move-result v2

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mImeiType:I

    goto :goto_1

    .line 273
    :cond_0
    const-string v2, "onImeiTypeChanged: IMEI is empty. Skip.."

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 275
    goto :goto_1

    .line 266
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "i":I
    :cond_2
    :goto_1
    goto/16 :goto_2

    .line 255
    .end local v0    # "imeiInfo":[Lcom/qti/extphone/QtiImeiInfo;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 256
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_7

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 257
    goto/16 :goto_2

    .line 260
    :cond_3
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 261
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

    .line 262
    goto/16 :goto_2

    .line 238
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "enabled":Z
    :sswitch_2
    const-string v0, "Event EVENT_RESET_CARRIER_KEY_IMSI_ENCRYPTION"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 239
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->resetCarrierKeysForImsiEncryption()V

    .line 240
    goto/16 :goto_2

    .line 285
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 286
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 287
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_5

    .line 291
    const-string v1, "EVENT_GET_DEVICE_IMEI_DONE: Not supported, use primary IMEI handler"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mClient:Lcom/qti/extphone/Client;

    if-eqz v1, :cond_4

    .line 296
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->initializePrimaryImei()V

    goto :goto_2

    .line 298
    :cond_4
    const-string v1, "ExtService is not bound yet. Wait for it to get primary IMEI"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 299
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQueryImeiInfoOnInit:Z

    goto :goto_2

    .line 302
    :cond_5
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 304
    goto :goto_2

    .line 250
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    const-string v0, "Event EVENT_MODEM_RESET Received"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->handleModemReset()V

    .line 252
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 253
    goto :goto_2

    .line 226
    :sswitch_5
    const-string v0, "Event EVENT_NV_READY Received"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    .line 229
    const-string v0, "notifyMessageWaitingChanged"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 231
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->updateVoiceMail()V

    .line 234
    goto :goto_2

    .line 218
    :sswitch_6
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
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

    .line 220
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->notifyCallForwardingIndicator()V

    .line 222
    :cond_6
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 223
    nop

    .line 312
    :cond_7
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_6
        0x17 -> :sswitch_5
        0x2d -> :sswitch_4
        0x43 -> :sswitch_3
        0x45 -> :sswitch_2
        0x47 -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method public isExitScbmFeatureSupported()Z
    .locals 1

    .line 510
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isExitScbmFeatureSupported()Z

    move-result v0

    return v0
.end method

.method public isForceReRegisterOngoing()Z
    .locals 1

    .line 697
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mForceReRegisterOngoing:Z

    return v0
.end method

.method public isInScbm()Z
    .locals 1

    .line 482
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isInScbm()Z

    move-result v0

    return v0
.end method

.method public isInScbm(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 506
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isInScbm(I)Z

    move-result v0

    return v0
.end method

.method public isOverrideIpProtocolOngoing()Z
    .locals 1

    .line 773
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mOverrideIpProtocolOngoing:Z

    return v0
.end method

.method public isScbmTimerCanceledForEmergency()Z
    .locals 1

    .line 514
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->isScbmTimerCanceledForEmergency()Z

    move-result v0

    return v0
.end method

.method public isUsingNewDataStack()Z
    .locals 1

    .line 527
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    .line 760
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mForceReRegisterOngoing:Z

    if-eqz v0, :cond_0

    .line 761
    const-string v0, "ForceReRegisterOnGoing omit to notifyDataActivity"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 762
    return-void

    .line 765
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDataActivity()V

    .line 766
    return-void
.end method

.method public notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .line 716
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mForceReRegisterOngoing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mOverrideIpProtocolOngoing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnection(Lcom/android/internal/telephony/Phone;Landroid/telephony/PreciseDataConnectionState;)V

    .line 725
    return-void

    .line 717
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceReRegisterOnGoing | mOverrideIpProtocolOngoing omit to notifyDataConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 720
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLastDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 721
    return-void
.end method

.method public notifyDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 2
    .param p1, "telephonyDisplayInfo"    # Landroid/telephony/TelephonyDisplayInfo;

    .line 729
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mForceReRegisterOngoing:Z

    if-eqz v0, :cond_0

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceReRegisterOnGoing omit to notifyDisplayInfoChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 732
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLastTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 733
    return-void

    .line 736
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    .line 737
    return-void
.end method

.method public notifyLastPhoneState()V
    .locals 3

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastDataConnectionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLastDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLastDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->notifyDataConnection(Landroid/telephony/PreciseDataConnectionState;)V

    .line 670
    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLastDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 673
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLastTelephonyDisplayInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLastTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLastTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    if-eqz v0, :cond_1

    .line 675
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->notifyDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    .line 676
    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLastTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 679
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 680
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->notifySignalStrength()V

    .line 681
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->notifyDataActivity()V

    .line 682
    return-void
.end method

.method public notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .line 741
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mForceReRegisterOngoing:Z

    if-eqz v0, :cond_0

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceReRegisterOnGoing omit to notifyServiceStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 743
    return-void

    .line 746
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 747
    return-void
.end method

.method public notifySignalStrength()V
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mForceReRegisterOngoing:Z

    if-eqz v0, :cond_0

    .line 752
    const-string v0, "ForceReRegisterOnGoing omit to notifySignalStrength"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 753
    return-void

    .line 755
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifySignalStrength()V

    .line 756
    return-void
.end method

.method notifySubInfoAdded()V
    .locals 2

    .line 519
    const-string v0, "notifySubInfoAdded, query IMEI"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 521
    return-void
.end method

.method public registerForScbmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 498
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->registerForScbmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 499
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 3
    .param p1, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;

    .line 340
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 341
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/CarrierInfoManager;->setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V

    .line 346
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->imsiToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->imsiToken:I

    .line 347
    invoke-virtual {v1, v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;)V

    .line 349
    :goto_0
    return-void
.end method

.method public setForceReRegisterOngoing(Z)V
    .locals 2
    .param p1, "isOngoing"    # Z

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForceReRegisterOngoing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 702
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mForceReRegisterOngoing:Z

    .line 703
    if-nez p1, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->removeReRegisterTimeoutMsg()V

    .line 708
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->notifyLastPhoneState()V

    .line 710
    :cond_0
    return-void
.end method

.method public setLocalCallHold(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 198
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    invoke-interface {v0}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->isServiceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-string v0, "mQtiRilInterface is not ready yet"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    return v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mQtiRilInterface:Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/BaseRilInterface;->setLocalCallHold(IZ)Z

    move-result v0

    return v0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 6
    .param p1, "response"    # Landroid/os/Message;

    .line 589
    const-string v0, "setNetworkSelectionModeAutomatic, querying current mode"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 590
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isCagSnpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    const/4 v1, 0x0

    .line 594
    .local v1, "serial":I
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 596
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPhoneId:I

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v3, v4, v5}, Lcom/qti/extphone/ExtTelephonyManager;->getNetworkSelectionMode(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v3

    .line 598
    .local v3, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v3}, Lcom/qti/extphone/Token;->get()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    .line 601
    .end local v3    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 603
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 599
    :catch_0
    move-exception v3

    .line 600
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception getNetworkSelectionMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 602
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 605
    :try_start_3
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 608
    goto :goto_1

    .line 606
    :catch_1
    move-exception v2

    .line 607
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

    .line 609
    .end local v1    # "serial":I
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 603
    .restart local v1    # "serial":I
    :goto_2
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
    .end local p1    # "response":Landroid/os/Message;
    :try_start_6
    throw v3

    .line 609
    .end local v1    # "serial":I
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;
    .restart local p1    # "response":Landroid/os/Message;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 611
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 613
    :goto_3
    return-void
.end method

.method public setOnScbmExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 490
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->setOnScbmExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 491
    return-void
.end method

.method public setOverrideIpProtocolOngoing(Z)V
    .locals 2
    .param p1, "isOngoing"    # Z

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOverrideIpProtocolOngoing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 778
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mOverrideIpProtocolOngoing:Z

    .line 779
    if-nez p1, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->removeOverrideIpProtocolTimeoutMsg()V

    .line 784
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->notifyLastPhoneState()V

    .line 786
    :cond_0
    return-void
.end method

.method public setRadioPower(ZZZZ)V
    .locals 2
    .param p1, "power"    # Z
    .param p2, "forEmergencyCall"    # Z
    .param p3, "isSelectedPhoneForEmergencyCall"    # Z
    .param p4, "forceApply"    # Z

    .line 687
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mForceReRegisterOngoing:Z

    if-eqz v0, :cond_0

    .line 689
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->setForceReRegisterOngoing(Z)V

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset mForceReRegisterOngoing when setRadioPower:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 693
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setRadioPower(ZZZZ)V

    .line 694
    return-void
.end method

.method public setSmartTempDdsSwitchSupported(Z)V
    .locals 0
    .param p1, "smartDdsSwitch"    # Z

    .line 417
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mSmartTempDdsSwitchSupported:Z

    .line 418
    return-void
.end method

.method public setTelephonyTempDdsSwitch(Z)V
    .locals 0
    .param p1, "telephonyDdsSwitch"    # Z

    .line 427
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->mTelephonyTempDdsSwitch:Z

    .line 428
    return-void
.end method

.method public unregisterForScbmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 502
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->unregisterForScbmTimerReset(Landroid/os/Handler;)V

    .line 503
    return-void
.end method

.method public unsetOnScbmExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 494
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->getInstance()Lcom/qualcomm/qti/internal/telephony/ScbmHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/ScbmHandler;->unsetOnScbmExitResponse(Landroid/os/Handler;)V

    .line 495
    return-void
.end method
