.class public Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;
.super Lcom/android/internal/telephony/SmsDispatchersController;
.source "QtiSmsDispatchersController.java"


# static fields
.field private static final ACTION_RADIO_POWER_STATE_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.RADIO_POWER_STATE"

.field private static final LOG_TAG:Ljava/lang/String; = "QtiSmsDispatchersController"

.field private static final RADIO_POWER_STATE:Ljava/lang/String; = "state"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig;

.field private mClient:Lcom/qti/extphone/Client;

.field private mContext:Landroid/content/Context;

.field private mCsSmsAllowedInCiwlanOnly:Z

.field private mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mIsInSecureMode:Z

.field private mPackageName:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mServiceCallback:Lcom/qti/extphone/ServiceCallback;

.field private mSlotId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Lcom/qti/extphone/Client;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mClient:Lcom/qti/extphone/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtPhoneCallbackListener(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Lcom/qti/extphone/ExtPhoneCallbackListener;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlotId(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mSlotId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCiwlanConfig(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Lcom/qti/extphone/CiwlanConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Lcom/qti/extphone/Client;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsInSecureMode(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mIsInSecureMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCarrierConfigChanged(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->handleCarrierConfigChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRadioPowerStateChanged(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->handleRadioPowerStateChanged(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogd(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloge(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SmsDispatchersController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mIsInSecureMode:Z

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig;

    .line 63
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mCsSmsAllowedInCiwlanOnly:Z

    .line 69
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 138
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController$3;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    .line 95
    const-string v0, "Constructor"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 97
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mSlotId:I

    .line 98
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mPackageName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 101
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 102
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "org.codeaurora.intent.action.RADIO_POWER_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method private filterDestAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/SmsNumberUtils;->filterDestAddr(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method private getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;
    .locals 4

    .line 289
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    .line 290
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 291
    const-string v1, "getImsMmTelManager: subId unusable"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 292
    return-object v2

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 295
    const-class v3, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsManager;

    .line 296
    .local v1, "imsMgr":Landroid/telephony/ims/ImsManager;
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v2

    :goto_0
    return-object v2

    .line 298
    .end local v1    # "imsMgr":Landroid/telephony/ims/ImsManager;
    :cond_2
    const-string v1, "getImsMmTelManager: context null"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 299
    return-object v2
.end method

.method private handleCarrierConfigChanged(I)V
    .locals 1
    .param p1, "subId"    # I

    .line 361
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 362
    return-void

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->isCsSmsAllowedInCiwlanOnlyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mCsSmsAllowedInCiwlanOnly:Z

    .line 365
    return-void
.end method

.method private handleRadioPowerStateChanged(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "radioState"    # I

    .line 369
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mSlotId:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    :try_start_0
    const-string v0, "Retrieving C_IWLAN config"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->getCiwlanConfig(I)Lcom/qti/extphone/CiwlanConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCiwlanConfig, remote exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->loge(Ljava/lang/String;)V

    .line 379
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private isCiwlanEnabled()Z
    .locals 6

    .line 273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 275
    .local v0, "identity":J
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .local v3, "imsMmTelMgr":Landroid/telephony/ims/ImsMmTelManager;
    if-nez v3, :cond_0

    .line 277
    nop

    .line 284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    return v2

    .line 279
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/telephony/ims/ImsMmTelManager;->isCrossSimCallingEnabled()Z

    move-result v2
    :try_end_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    return v2

    .line 284
    .end local v3    # "imsMmTelMgr":Landroid/telephony/ims/ImsMmTelManager;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 280
    :catch_0
    move-exception v3

    .line 281
    .local v3, "exception":Landroid/telephony/ims/ImsException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get C_IWLAN toggle status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    nop

    .line 284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    return v2

    .line 284
    .end local v3    # "exception":Landroid/telephony/ims/ImsException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    throw v2
.end method

.method private isCsSmsAllowedInCiwlanOnlyMode()Z
    .locals 6

    .line 342
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 344
    .local v0, "carrierConfigMgr":Landroid/telephony/CarrierConfigManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 346
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 347
    .local v2, "subId":I
    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 348
    .local v3, "config":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_0

    .line 349
    const-string v4, "cs_sms_in_ciwlan_only_mode"

    invoke-virtual {v3, v4, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 352
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Carrier config null for subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 354
    .end local v2    # "subId":I
    .end local v3    # "config":Landroid/os/PersistableBundle;
    goto :goto_0

    .line 355
    :cond_1
    const-string v2, "Carrier config manager null"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 357
    :goto_0
    return v1
.end method

.method private isInCiwlanOnlyMode()Z
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig;

    if-nez v0, :cond_0

    .line 305
    const-string v0, "C_IWLAN config null"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    return v0

    .line 308
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig;

    invoke-virtual {v0}, Lcom/qti/extphone/CiwlanConfig;->isCiwlanOnlyInRoam()Z

    move-result v0

    return v0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mCiwlanConfig:Lcom/qti/extphone/CiwlanConfig;

    invoke-virtual {v0}, Lcom/qti/extphone/CiwlanConfig;->isCiwlanOnlyInHome()Z

    move-result v0

    return v0
.end method

.method private isRoaming()Z
    .locals 6

    .line 315
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 316
    const-string v0, "isRoaming: TelephonyManager null"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x0

    return v0

    .line 319
    :cond_0
    const/4 v0, 0x0

    .line 320
    .local v0, "nriRoaming":Z
    const/4 v1, 0x0

    .line 321
    .local v1, "serviceState":Landroid/telephony/ServiceState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 323
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 325
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    nop

    .line 327
    if-eqz v1, :cond_2

    .line 328
    nop

    .line 329
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    .line 330
    .local v4, "nri":Landroid/telephony/NetworkRegistrationInfo;
    if-eqz v4, :cond_1

    .line 331
    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0

    .line 333
    :cond_1
    const-string v5, "isRoaming: network registration info null"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 335
    .end local v4    # "nri":Landroid/telephony/NetworkRegistrationInfo;
    :goto_0
    goto :goto_1

    .line 336
    :cond_2
    const-string v4, "isRoaming: service state null"

    invoke-direct {p0, v4}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 338
    :goto_1
    return v0

    .line 325
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    throw v4
.end method

.method private isSmsAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "funcName"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 154
    .local v0, "isEmergency":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isAvailable()Z

    move-result v1

    .line 155
    .local v1, "isImsAvailable":Z
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mImsSmsDispatcher:Lcom/android/internal/telephony/ImsSmsDispatcher;

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/ImsSmsDispatcher;->isEmergencySmsSupport(Ljava/lang/String;)Z

    move-result v2

    .line 156
    .local v2, "isEmergencySmsSupported":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->isCiwlanEnabled()Z

    move-result v3

    .line 157
    .local v3, "isCiwlanEnabled":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->isInCiwlanOnlyMode()Z

    move-result v4

    .line 158
    .local v4, "isInCiwlanOnlyMode":Z
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    .line 159
    .local v7, "isCiwlanEnabledAndInOnlyMode":Z
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": mIsInSecureMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mIsInSecureMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isEmergency = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isImsAvailable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isEmergencySmsSupported = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isCiwlanEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isInCiwlanOnlyMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", csSmsAllowedInCiwlanOnly = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mCsSmsAllowedInCiwlanOnly:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->logd(Ljava/lang/String;)V

    .line 167
    iget-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mIsInSecureMode:Z

    if-eqz v8, :cond_2

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    return v6

    .line 171
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 172
    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    return v5

    .line 174
    :cond_4
    if-eqz v7, :cond_7

    .line 175
    if-nez v1, :cond_6

    iget-boolean v8, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->mCsSmsAllowedInCiwlanOnly:Z

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    move v5, v6

    :cond_6
    :goto_3
    return v5

    .line 177
    :cond_7
    return v5
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 382
    const-string v0, "QtiSmsDispatchersController"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 386
    const-string v0, "QtiSmsDispatchersController"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method private triggerSentIntentForFailure(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .line 249
    if-eqz p1, :cond_0

    .line 251
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "Intent has been canceled!"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->loge(Ljava/lang/String;)V

    .line 256
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_0
    :goto_0
    return-void
.end method

.method private triggerSentIntentForFailure(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 259
    .local p1, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 263
    .local v1, "sentIntent":Landroid/app/PendingIntent;
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    .line 264
    .end local v1    # "sentIntent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 265
    :cond_1
    return-void
.end method


# virtual methods
.method protected sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "isForVvm"    # Z

    .line 188
    const-string v0, "sendData"

    invoke-direct {p0, v0, p2}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->isSmsAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-super/range {p0 .. p8}, Lcom/android/internal/telephony/SmsDispatchersController;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-direct {p0, p6}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    .line 194
    :goto_0
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZIJ)V
    .locals 1
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I
    .param p12, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "ZIZIJ)V"
        }
    .end annotation

    .line 230
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "sendMultipartText"

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->isSmsAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-super/range {p0 .. p13}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;ZIZIJ)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0, p4}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->triggerSentIntentForFailure(Ljava/util/ArrayList;)V

    .line 237
    :goto_0
    return-void
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 241
    const-string v0, "sendRetrySms"

    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->isSmsAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    .line 246
    :goto_0
    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZIZJ)V
    .locals 1
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I
    .param p12, "isForVvm"    # Z
    .param p13, "messageId"    # J

    .line 201
    const-string v0, "sendText"

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->isSmsAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-super/range {p0 .. p14}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZIZJ)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-direct {p0, p4}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    .line 208
    :goto_0
    return-void
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZIZJZ)V
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "persistMessage"    # Z
    .param p9, "priority"    # I
    .param p10, "expectMore"    # Z
    .param p11, "validityPeriod"    # I
    .param p12, "isForVvm"    # Z
    .param p13, "messageId"    # J
    .param p15, "skipShortCodeCheck"    # Z

    .line 215
    move-object v0, p0

    const-string v1, "sendText"

    move-object v2, p1

    invoke-direct {p0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->isSmsAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-super/range {p0 .. p15}, Lcom/android/internal/telephony/SmsDispatchersController;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;ZIZIZJZ)V

    move-object v1, p4

    goto :goto_0

    .line 220
    :cond_0
    move-object v1, p4

    invoke-direct {p0, p4}, Lcom/qualcomm/qti/internal/telephony/QtiSmsDispatchersController;->triggerSentIntentForFailure(Landroid/app/PendingIntent;)V

    .line 222
    :goto_0
    return-void
.end method
