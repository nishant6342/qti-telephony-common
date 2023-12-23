.class public Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;
.super Ljava/lang/Object;
.source "QtiUiccCardProvisionerHelper.java"


# static fields
.field private static final APM_SIM_NOT_PWDN_PROPERTY:Ljava/lang/String; = "persist.vendor.radio.apm_sim_not_pwdn"

.field private static final DEFAULT_PHONE_INDEX:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "QtiUiccCardProvisionerHelper"

.field private static final NOT_PROVISIONED:I = 0x0

.field private static final PROVISIONED:I = 0x1

.field private static final SETTING_USER_PREF_DATA_SUB:Ljava/lang/String; = "user_preferred_data_sub"

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private sNumPhones:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mContext:Landroid/content/Context;

    .line 87
    const-string v0, "telecom"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 88
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 89
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->sNumPhones:I

    .line 90
    const-string v0, " init by Context"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logd(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;
    .locals 2

    .line 78
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "QtiUiccCardProvisionerHelper"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    return-object v0
.end method

.method private getUiccProvisionStatus(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 300
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    .line 301
    .local v0, "qtiPhoneUtils":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    return v1

    .line 304
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private handleDataPreference(I)V
    .locals 8
    .param p1, "nextActiveSubId"    # I

    .line 260
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mContext:Landroid/content/Context;

    .line 261
    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 262
    .local v0, "subMgr":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 263
    .local v1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v1, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    const-string v2, " handleDataPreference "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logd(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->getUserPrefDataSubIdFromDB()I

    move-result v2

    .line 269
    .local v2, "userPrefDataSubId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    .line 270
    .local v3, "currentDataSubId":I
    const/4 v4, 0x0

    .line 272
    .local v4, "userPrefSubValid":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 273
    .local v6, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    if-ne v7, v2, :cond_1

    .line 274
    const/4 v4, 0x1

    .line 276
    .end local v6    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    goto :goto_0

    .line 277
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "havePrefSub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " user pref subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current dds "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " next active subId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logd(Ljava/lang/String;)V

    .line 282
    if-eqz v4, :cond_3

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->isSubProvisioned(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eq v3, v2, :cond_3

    .line 284
    invoke-virtual {v0, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    goto :goto_1

    .line 285
    :cond_3
    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->isSubProvisioned(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 286
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 290
    :cond_4
    :goto_1
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v5

    .line 291
    .local v5, "uiccCardProvisioner":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;
    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->setDdsIfRequired()V

    .line 292
    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .line 67
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    goto :goto_0

    .line 71
    :cond_0
    const-string v1, "QtiUiccCardProvisionerHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;

    monitor-exit v0

    return-object v1

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isNonSimAccountFound()Z
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 146
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 148
    .local v0, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 150
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 151
    .local v2, "phoneAccount":Landroid/telecom/PhoneAccount;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 153
    const-string v3, "Other than SIM account found. "

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logi(Ljava/lang/String;)V

    .line 154
    const/4 v3, 0x1

    return v3

    .line 156
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "phoneAccount":Landroid/telecom/PhoneAccount;
    :cond_0
    goto :goto_0

    .line 157
    :cond_1
    const-string v1, "Other than SIM account not found "

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logi(Ljava/lang/String;)V

    .line 158
    const/4 v1, 0x0

    return v1
.end method

.method private isRadioAvailableOnAllSubs()Z
    .locals 3

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->sNumPhones:I

    if-ge v0, v1, :cond_1

    .line 128
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 130
    const/4 v1, 0x0

    return v1

    .line 127
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isRadioInValidState()Z
    .locals 6

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "simNotPwrDown":I
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/QtiTelephonyComponentFactory;->getRil(I)Lcom/qualcomm/qti/internal/telephony/QtiRIL;

    move-result-object v2

    const-string v3, "persist.vendor.radio.apm_sim_not_pwdn"

    .line 97
    invoke-virtual {v2, v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->loge(Ljava/lang/String;)V

    .line 101
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v1

    .line 102
    .local v3, "isApmSimNotPwrDown":Z
    :goto_1
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 106
    .local v4, "isAPMOn":I
    if-ne v4, v2, :cond_1

    if-nez v3, :cond_1

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRadioInValidState, isApmSimNotPwrDown = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", isAPMOn:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logd(Ljava/lang/String;)V

    .line 109
    return v1

    .line 113
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->isRadioAvailableOnAllSubs()Z

    move-result v5

    if-nez v5, :cond_2

    .line 114
    const-string v2, " isRadioInValidState, radio not available"

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logd(Ljava/lang/String;)V

    .line 115
    return v1

    .line 119
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->isShuttingDown()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    const-string v2, " isRadioInValidState: device shutdown in progress "

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logd(Ljava/lang/String;)V

    .line 121
    return v1

    .line 123
    :cond_3
    return v2
.end method

.method private isShuttingDown()Z
    .locals 2

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->sNumPhones:I

    if-ge v0, v1, :cond_1

    .line 138
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSubProvisioned(I)Z
    .locals 4
    .param p1, "subId"    # I

    .line 311
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    .line 313
    .local v0, "isSubIdUsable":Z
    if-eqz v0, :cond_2

    .line 314
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    .line 315
    .local v1, "slotId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Invalid slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->loge(Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x0

    goto :goto_0

    .line 319
    :cond_0
    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->getUiccProvisionStatus(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 320
    const/4 v0, 0x0

    .line 322
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSubProvisioned, state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->loge(Ljava/lang/String;)V

    .line 325
    .end local v1    # "slotId":I
    :cond_2
    :goto_0
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 329
    const-string v0, "QtiUiccCardProvisionerHelper"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 337
    const-string v0, "QtiUiccCardProvisionerHelper"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 333
    const-string v0, "QtiUiccCardProvisionerHelper"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 4
    .param p1, "subId"    # I

    .line 162
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 163
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 165
    .local v0, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 167
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 168
    .local v2, "phoneAccount":Landroid/telecom/PhoneAccount;
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 169
    return-object v1

    .line 171
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "phoneAccount":Landroid/telecom/PhoneAccount;
    :cond_0
    goto :goto_0

    .line 173
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method protected getUserPrefDataSubIdFromDB()I
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_preferred_data_sub"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method declared-synchronized updateUserPreferences()V
    .locals 12

    monitor-enter p0

    .line 177
    :try_start_0
    const-string v0, "updateUserPreferences"

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logi(Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;

    move-result-object v0

    .line 179
    .local v0, "qtiSubMgrSer":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->areAllSubscriptionsLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 184
    :cond_0
    const/4 v1, 0x0

    .line 185
    .local v1, "mNextActivatedSub":Landroid/telephony/SubscriptionInfo;
    const/4 v2, 0x0

    .line 186
    .local v2, "activeCount":I
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->isRadioInValidState()Z

    move-result v3

    if-nez v3, :cond_1

    .line 187
    const-string v3, "Radio is in Invalid state, Ignore Updating User Preference!!!"

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 191
    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mContext:Landroid/content/Context;

    const-string v4, "telephony_subscription_service"

    .line 192
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 193
    .local v3, "subMgr":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 196
    .local v4, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2

    goto/16 :goto_2

    .line 201
    :cond_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v5

    .line 202
    .local v5, "defaultVoiceSubId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v7

    .line 203
    .local v7, "defaultDataSubId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v8

    .line 206
    .local v8, "defaultSmsSubId":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    .line 207
    .local v10, "subInfo":Landroid/telephony/SubscriptionInfo;
    nop

    .line 208
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v11

    .line 207
    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->isSubProvisioned(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 209
    add-int/lit8 v2, v2, 0x1

    .line 210
    if-nez v1, :cond_3

    move-object v1, v10

    .line 212
    .end local v10    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_3
    goto :goto_0

    .line 213
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateUserPreferences:: active sub count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " dds = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " voice = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sms = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logd(Ljava/lang/String;)V

    .line 218
    if-eqz v1, :cond_c

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v9

    if-ne v9, v6, :cond_5

    goto/16 :goto_1

    .line 222
    :cond_5
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->handleDataPreference(I)V

    .line 224
    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    if-ne v2, v6, :cond_7

    .line 225
    :cond_6
    invoke-direct {p0, v8}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->isSubProvisioned(I)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->isSubIdCreationPending()Z

    move-result v10

    if-nez v10, :cond_7

    .line 226
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 229
    :cond_7
    if-ne v5, v9, :cond_8

    if-ne v2, v6, :cond_9

    .line 230
    :cond_8
    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->isSubProvisioned(I)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->isSubIdCreationPending()Z

    move-result v9

    if-nez v9, :cond_9

    .line 231
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubscriptionId(I)V

    .line 239
    :cond_9
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->isNonSimAccountFound()Z

    move-result v9

    if-nez v9, :cond_a

    if-ne v2, v6, :cond_a

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->isSubIdCreationPending()Z

    move-result v6

    if-nez v6, :cond_a

    .line 240
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 241
    .local v6, "subId":I
    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    .line 242
    .local v9, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set default phoneaccount to  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logi(Ljava/lang/String;)V

    .line 243
    iget-object v10, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v10, v9}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 246
    .end local v6    # "subId":I
    .end local v9    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_a
    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;->updateDefaultSubId()V

    .line 248
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->mContext:Landroid/content/Context;

    const-class v9, Landroid/telephony/TelephonyRegistryManager;

    .line 249
    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyRegistryManager;

    .line 250
    .local v6, "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    if-eqz v6, :cond_b

    .line 251
    invoke-virtual {v6}, Landroid/telephony/TelephonyRegistryManager;->notifySubscriptionInfoChanged()V

    .line 253
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateUserPreferences: after currentDds = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 254
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " voice = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 255
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sms = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 256
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 253
    invoke-direct {p0, v9}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 219
    .end local v6    # "telephonyRegistryManager":Landroid/telephony/TelephonyRegistryManager;
    :cond_c
    :goto_1
    monitor-exit p0

    return-void

    .line 197
    .end local v5    # "defaultVoiceSubId":I
    .end local v7    # "defaultDataSubId":I
    .end local v8    # "defaultSmsSubId":I
    :cond_d
    :goto_2
    :try_start_2
    const-string v5, "updateUserPreferences: Subscription list is empty"

    invoke-direct {p0, v5}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logi(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 180
    .end local v1    # "mNextActivatedSub":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "activeCount":I
    .end local v3    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v4    # "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_e
    :goto_3
    :try_start_3
    const-string v1, "Subscriptions not yet loaded"

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisionerHelper;->logd(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 176
    .end local v0    # "qtiSubMgrSer":Lcom/qualcomm/qti/internal/telephony/QtiSubscriptionManagerService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
