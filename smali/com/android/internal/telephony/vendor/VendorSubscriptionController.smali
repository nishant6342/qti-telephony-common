.class public Lcom/android/internal/telephony/vendor/VendorSubscriptionController;
.super Lcom/android/internal/telephony/SubscriptionController;
.source "VendorSubscriptionController.java"


# static fields
.field protected static final blacklist EVENT_RADIO_CAPABILITY_AVAILABLE:I = 0x66

.field private static blacklist sNumPhones:I


# instance fields
.field private blacklist mAddSubscriptionRecordRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mSetRcPending:Z

.field private blacklist mSubscriptionHandler:Landroid/os/Handler;

.field private blacklist mTelecomManager:Landroid/telecom/TelecomManager;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/vendor/VendorSubscriptionController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mSetRcPending:Z

    .line 60
    new-instance p1, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {p1}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mAddSubscriptionRecordRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 111
    new-instance p1, Lcom/android/internal/telephony/vendor/VendorSubscriptionController$1;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController$1;-><init>(Lcom/android/internal/telephony/vendor/VendorSubscriptionController;)V

    iput-object p1, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mSubscriptionHandler:Landroid/os/Handler;

    .line 86
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v0, "telecom"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 87
    iget-object p1, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 88
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    sput p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->sNumPhones:I

    return-void
.end method

.method private blacklist areAllRadioCapabilitiesReceived()Z
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    .line 335
    :goto_0
    sget v1, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->sNumPhones:I

    if-ge v0, v1, :cond_1

    .line 336
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 337
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v1

    if-nez v1, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/vendor/VendorSubscriptionController;
    .locals 2

    .line 76
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v0, :cond_0

    const-string v0, "VendorSubscriptionController"

    const-string v1, "getInstance null"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast v0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;

    return-object v0
.end method

.method public static blacklist init(Landroid/content/Context;)Lcom/android/internal/telephony/vendor/VendorSubscriptionController;
    .locals 3

    .line 65
    const-class v0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    goto :goto_0

    :cond_0
    const-string p0, "VendorSubscriptionController"

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/SubscriptionController;->sInstance:Lcom/android/internal/telephony/SubscriptionController;

    check-cast p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    const-string p0, "VendorSubscriptionController"

    .line 382
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .locals 0

    const-string p0, "VendorSubscriptionController"

    .line 378
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected blacklist getUserPrefDataSubIdFromDB()I
    .locals 2

    .line 317
    iget-object p0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "user_preferred_data_sub"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method protected blacklist handleDataPreference(I)V
    .locals 5

    .line 231
    invoke-virtual {p0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->getUserPrefDataSubIdFromDB()I

    move-result v0

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 234
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 235
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 240
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 241
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 245
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "havePrefSub = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " user pref subId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " current dds "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " next active subId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->logd(Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->isSubProvisioned(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq v1, v0, :cond_3

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->setDefaultDataSubId(I)V

    goto :goto_1

    .line 253
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->isSubProvisioned(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->setDefaultDataSubId(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected blacklist isNonSimAccountFound()Z
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 286
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 288
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 290
    iget-object v2, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v0, "Other than SIM account found. "

    .line 293
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->logi(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "Other than SIM account not found "

    .line 297
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->logi(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist isRadioAvailableOnAllSubs()Z
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    .line 125
    :goto_0
    sget v1, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->sNumPhones:I

    if-ge v0, v1, :cond_1

    .line 126
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 127
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isRadioInValidState()Z
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->isRadioAvailableOnAllSubs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, " isRadioInValidState, radio not available"

    .line 147
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->logd(Ljava/lang/String;)V

    return v1

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " isRadioInValidState: device shutdown in progress "

    .line 153
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->logd(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method blacklist isShuttingDown()Z
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    .line 136
    :goto_0
    sget v1, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->sNumPhones:I

    if-ge v0, v1, :cond_1

    .line 137
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isShuttingDown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method protected blacklist isSubProvisioned(I)Z
    .locals 4

    .line 267
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v2

    .line 271
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Invalid slotId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " or subId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->loge(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->isUiccProvisioned(I)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 278
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSubProvisioned, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->loge(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method

.method protected blacklist isUiccProvisioned(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method blacklist notifyRadioCapabilityAvailable()V
    .locals 1

    .line 322
    iget-object p0, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mSubscriptionHandler:Landroid/os/Handler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist registerForAddSubscriptionRecord(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 91
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mAddSubscriptionRecordRegistrants:Lcom/android/internal/telephony/RegistrantList;

    monitor-enter p1

    .line 93
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mAddSubscriptionRecordRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    .line 94
    iget-object p2, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 99
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist setDefaultDataSubId(I)V
    .locals 4
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    const-string v0, "setDefaultDataSubId"

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->enforceModifyPhoneState(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->areAllRadioCapabilitiesReceived()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    return-void

    .line 352
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const v2, 0x7fffffff

    if-eq p1, v2, :cond_2

    const/4 v2, 0x1

    .line 358
    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mSetRcPending:Z

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Radio capabilities not available, dds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->logi(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v2

    const-string v3, "multi_sim_data_call"

    .line 362
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->setGlobalSetting(Ljava/lang/String;I)V

    .line 363
    invoke-static {}, Lcom/android/internal/telephony/MultiSimSettingController;->getInstance()Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/MultiSimSettingController;->notifyDefaultDataSubChanged()V

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->broadcastDefaultDataSubIdChanged(I)V

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result p1

    if-eq v2, p1, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SubscriptionController;->sendDefaultChangedBroadcast(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 355
    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "setDefaultDataSubId called with DEFAULT_SUB_ID"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 370
    throw p0
.end method

.method blacklist setRadioCapabilityIfRequired()V
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mSetRcPending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->areAllRadioCapabilitiesReceived()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setRadioCapabilityIfRequired"

    .line 327
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->logi(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    const/4 v0, 0x0

    .line 330
    iput-boolean v0, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mSetRcPending:Z

    :cond_0
    return-void
.end method

.method protected blacklist subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 303
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 305
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 307
    iget-object v2, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 308
    iget-object v3, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v2

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist unregisterForAddSubscriptionRecord(Landroid/os/Handler;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mAddSubscriptionRecordRegistrants:Lcom/android/internal/telephony/RegistrantList;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mAddSubscriptionRecordRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 105
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist updateUserPreferences()V
    .locals 10

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->isRadioInValidState()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Radio is in Invalid state, Ignore Updating User Preference!!!"

    .line 166
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->logd(Ljava/lang/String;)V

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    goto/16 :goto_2

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v4

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 183
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->isUiccProvisioned(I)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v7, v7, 0x1

    if-nez v6, :cond_2

    move-object v6, v8

    goto :goto_0

    .line 188
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateUserPreferences:: active sub count = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " dds = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " voice = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " sms = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->logd(Ljava/lang/String;)V

    if-eqz v6, :cond_b

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCountMax()I

    move-result v0

    if-ne v0, v2, :cond_4

    goto/16 :goto_1

    .line 195
    :cond_4
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->handleDataPreference(I)V

    const/4 v0, -0x1

    if-ne v4, v0, :cond_5

    if-ne v7, v2, :cond_6

    .line 198
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->isSubProvisioned(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubIdCreationPending()Z

    move-result v4

    if-nez v4, :cond_6

    .line 200
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    :cond_6
    if-ne v1, v0, :cond_7

    if-ne v7, v2, :cond_8

    .line 204
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->isSubProvisioned(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubIdCreationPending()Z

    move-result v0

    if-nez v0, :cond_8

    .line 206
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    .line 214
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->isNonSimAccountFound()Z

    move-result v0

    if-nez v0, :cond_9

    if-ne v7, v2, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->isSubIdCreationPending()Z

    move-result v0

    if-nez v0, :cond_9

    .line 215
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 216
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set default phoneaccount to  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->logi(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 220
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/SubscriptionController;->sDefaultFallbackSubId:Lcom/android/internal/telephony/SubscriptionController$WatchedInt;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController$WatchedInt;->get()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->isSubProvisioned(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 221
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultFallbackSubId(II)V

    .line 225
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUserPreferences: after currentDds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->logd(Ljava/lang/String;)V

    :cond_b
    :goto_1
    return-void

    :cond_c
    :goto_2
    const-string v0, "updateUserPreferences: Subscription list is empty"

    .line 173
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/vendor/VendorSubscriptionController;->logi(Ljava/lang/String;)V

    return-void
.end method
