.class public Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
.super Ljava/lang/Object;
.source "QtiPhoneUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QtiPhoneUtils"

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;


# instance fields
.field private mClient:Lcom/qti/extphone/Client;

.field private mContext:Landroid/content/Context;

.field protected mExtPhoneCallback:Lcom/qti/extphone/IExtPhoneCallback;

.field private mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

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

.field private mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Lcom/qti/extphone/Client;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingRequests(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiCarrierInfoResponse(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;Lcom/qti/extphone/Client;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    .line 103
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 118
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtPhoneCallback:Lcom/qti/extphone/IExtPhoneCallback;

    .line 94
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {p1}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 96
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 97
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    .locals 3

    .line 85
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    if-eqz v1, :cond_0

    .line 89
    monitor-exit v0

    return-object v1

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "QtiPhoneUtils was not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .line 467
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 469
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v2, v1

    if-ge p2, v2, :cond_0

    aget-object v2, v1, p2

    if-eqz v2, :cond_0

    .line 472
    :try_start_0
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 473
    :catch_0
    move-exception v2

    .line 478
    .end local v1    # "valArray":[Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    .line 80
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    return-object v0

    .line 80
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .line 429
    const-string v0, ""

    .line 430
    .local v0, "data":Ljava/lang/String;
    const/4 v1, 0x0

    .line 431
    .local v1, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "v":Ljava/lang/String;
    const v3, 0x7fffffff

    if-eq p2, v3, :cond_5

    .line 436
    if-ltz p2, :cond_4

    .line 439
    const-string v3, ","

    if-eqz v2, :cond_0

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 444
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_2

    .line 445
    const-string v5, ""

    .line 446
    .local v5, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v6, v1

    if-ge v4, v6, :cond_1

    .line 447
    aget-object v5, v1, v4

    .line 449
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .end local v5    # "str":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 452
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    if-eqz v1, :cond_3

    .line 456
    add-int/lit8 v4, p2, 0x1

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 460
    .end local v4    # "i":I
    :cond_3
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 437
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putIntAtIndex index < 0 index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putIntAtIndex index == MAX_VALUE index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 7
    .param p1, "slotId"    # I

    .line 482
    const/4 v0, -0x1

    .line 483
    .local v0, "currentStatus":I
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    return v0

    .line 487
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 488
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    .line 489
    return v0

    .line 492
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 493
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 494
    .local v2, "subIds":[I
    if-eqz v2, :cond_3

    array-length v3, v2

    if-eqz v3, :cond_3

    .line 495
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mContext:Landroid/content/Context;

    .line 496
    const-string v4, "telephony_subscription_service"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 497
    .local v3, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    const/4 v4, 0x0

    aget v5, v2, v4

    invoke-virtual {v3, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    .line 498
    .local v5, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 499
    const/4 v4, 0x1

    goto :goto_0

    .line 500
    :cond_2
    nop

    :goto_0
    move v0, v4

    .line 501
    .end local v3    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v5    # "si":Landroid/telephony/SubscriptionInfo;
    goto :goto_1

    .line 502
    :cond_3
    const/4 v0, -0x2

    .line 504
    .end local v2    # "subIds":[I
    :goto_1
    goto :goto_2

    .line 505
    :cond_4
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v2

    .line 506
    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    .line 508
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getCurrentUiccCardProvisioningStatus, state["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QtiPhoneUtils"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return v0
.end method

.method public getPhoneCount()I
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 420
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 419
    return v0
.end method

.method public getPropertyValueBool(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 100
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0, p1, p2}, Lcom/qti/extphone/ExtTelephonyManager;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method getQtiRadioCapability(ILandroid/os/Message;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x0

    return v0

    .line 388
    :cond_0
    const/4 v0, 0x0

    .line 389
    .local v0, "serial":I
    const-string v1, "QtiPhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQtiRadioCapability, response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, v2}, Lcom/qti/extphone/ExtTelephonyManager;->getQtiRadioCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 391
    .local v1, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v0

    .line 392
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v2

    .line 393
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    monitor-exit v2

    .line 395
    const/4 v2, 0x1

    return v2

    .line 394
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isValidPhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 424
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method sendCdmaSms(I[BLandroid/os/Message;Z)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "pdu"    # [B
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "expectMore"    # Z

    .line 279
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_0
    const/4 v0, 0x0

    .line 283
    .local v0, "serial":I
    const-string v1, "QtiPhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCdmaSms, expectMore="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, p2, p4, v2}, Lcom/qti/extphone/ExtTelephonyManager;->sendCdmaSms(I[BZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 288
    .local v1, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 291
    .end local v1    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception sendCdmaSms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v1

    .line 293
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    monitor-exit v1

    .line 295
    const/4 v1, 0x1

    return v1

    .line 294
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p3, "response"    # Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    .line 400
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    return-void

    .line 403
    :cond_0
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, "tokenSerial":I
    const-string v1, "QtiPhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCarrierInfoForImsiEncryption, phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, p2, v2}, Lcom/qti/extphone/ExtTelephonyManager;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 409
    .local v1, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 412
    .end local v1    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception setCarrierInfoForImsiEncryption "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v1

    .line 414
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method setNetworkSelectionModeAutomatic(IILandroid/os/Message;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "accessType"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 366
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const/4 v0, 0x0

    return v0

    .line 369
    :cond_0
    const/4 v0, 0x0

    .line 372
    .local v0, "serial":I
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, p2, v2}, Lcom/qti/extphone/ExtTelephonyManager;->setNetworkSelectionModeAutomatic(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 374
    .local v1, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 377
    .end local v1    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception setNetworkSelectionModeAutomatic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v1

    .line 379
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    monitor-exit v1

    .line 381
    const/4 v1, 0x1

    return v1

    .line 380
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)Z
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p3, "result"    # Landroid/os/Message;

    .line 336
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    return v0

    .line 339
    :cond_0
    const/4 v0, 0x0

    .line 340
    .local v0, "serial":I
    const-wide/16 v1, -0x1

    .line 341
    .local v1, "cagId":J
    const/4 v3, 0x0

    .line 342
    .local v3, "nId":[B
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getCagInfo()Landroid/telephony/CagInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 343
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getCagInfo()Landroid/telephony/CagInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/CagInfo;->getCagId()J

    move-result-wide v1

    .line 345
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getSnpnInfo()Landroid/telephony/SnpnInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 346
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getSnpnInfo()Landroid/telephony/SnpnInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SnpnInfo;->getNid()[B

    move-result-object v3

    .line 348
    :cond_2
    new-instance v11, Lcom/qti/extphone/QtiSetNetworkSelectionMode;

    .line 349
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getRan()I

    move-result v6

    .line 350
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getAccessMode()I

    move-result v7

    move-object v4, v11

    move-wide v8, v1

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/qti/extphone/QtiSetNetworkSelectionMode;-><init>(Ljava/lang/String;IIJ[B)V

    .line 353
    .local v4, "mode":Lcom/qti/extphone/QtiSetNetworkSelectionMode;
    :try_start_0
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v5, p1, v4, v6}, Lcom/qti/extphone/ExtTelephonyManager;->setNetworkSelectionModeManual(ILcom/qti/extphone/QtiSetNetworkSelectionMode;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v5

    .line 355
    .local v5, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v5}, Lcom/qti/extphone/Token;->get()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    .line 358
    .end local v5    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 356
    :catch_0
    move-exception v5

    .line 357
    .local v5, "e":Ljava/lang/RuntimeException;
    const-string v6, "QtiPhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception setNetworkSelectionModeManual "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v5

    .line 360
    :try_start_1
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    monitor-exit v5

    .line 362
    const/4 v5, 0x1

    return v5

    .line 361
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method startNetworkScan(ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "networkScanRequest"    # Landroid/telephony/NetworkScanRequest;
    .param p3, "result"    # Landroid/os/Message;

    .line 299
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    const/4 v0, 0x0

    return v0

    .line 302
    :cond_0
    const/4 v0, 0x0

    .line 305
    .local v0, "serial":I
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, p2, v2}, Lcom/qti/extphone/ExtTelephonyManager;->startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 307
    .local v1, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 310
    .end local v1    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception startNetworkScan "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v1

    .line 312
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    monitor-exit v1

    .line 314
    const/4 v1, 0x1

    return v1

    .line 313
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method stopNetworkScan(ILandroid/os/Message;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 318
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    return v0

    .line 321
    :cond_0
    const/4 v0, 0x0

    .line 324
    .local v0, "serial":I
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, v2}, Lcom/qti/extphone/ExtTelephonyManager;->stopNetworkScan(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 325
    .local v1, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 328
    .end local v1    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception stopNetworkScan "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v1

    .line 330
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    monitor-exit v1

    .line 332
    const/4 v1, 0x1

    return v1

    .line 331
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
