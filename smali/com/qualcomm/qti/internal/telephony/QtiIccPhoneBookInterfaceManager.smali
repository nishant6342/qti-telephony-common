.class public Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.source "QtiIccPhoneBookInterfaceManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "QtiIccPhoneBookInterfaceManager"


# instance fields
.field private mPhoneId:I

.field private mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 60
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhoneId:I

    .line 61
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 64
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    iget-object v3, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;-><init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 67
    :cond_0
    return-void
.end method

.method private isSimPhoneBookEnabled()Z
    .locals 2

    .line 70
    const-string v0, "persist.vendor.radio.sim_contacts_from_iccio"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_0
    return v1
.end method


# virtual methods
.method public getAdnRecordsCapacity()Lcom/android/internal/telephony/uicc/AdnCapacity;
    .locals 15

    .line 223
    new-instance v11, Lcom/android/internal/telephony/uicc/AdnCapacity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>(IIIIIIIIII)V

    .line 224
    .local v0, "capacity":Lcom/android/internal/telephony/uicc/AdnCapacity;
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v1, :cond_3

    .line 226
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    .line 227
    .local v1, "profile":Lcom/android/internal/telephony/uicc/UiccProfile;
    if-nez v1, :cond_0

    .line 228
    const-string v2, "uicc profile is null, sim card may have error."

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 229
    return-object v0

    .line 231
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 232
    .local v2, "cardstate":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    const-string v3, "sim state is not ready when getAdnRecordsCapacity."

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 234
    :cond_2
    :goto_0
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnCapacity;

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 235
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getAdnCount()I

    move-result v5

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 236
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedAdnCount()I

    move-result v6

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 237
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getEmailCount()I

    move-result v7

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 238
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedEmailCount()I

    move-result v8

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 239
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getAnrCount()I

    move-result v9

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 240
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getUsedAnrCount()I

    move-result v10

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 241
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxNameLen()I

    move-result v11

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 242
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxNumberLen()I

    move-result v12

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 243
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxEmailLen()I

    move-result v13

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    .line 244
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->getMaxAnrLen()I

    move-result v14

    move-object v4, v3

    invoke-direct/range {v4 .. v14}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>(IIIIIIIIII)V

    move-object v0, v3

    .line 248
    .end local v1    # "profile":Lcom/android/internal/telephony/uicc/UiccProfile;
    .end local v2    # "cardstate":Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_1
    goto :goto_2

    .line 249
    :cond_3
    const-string v1, "mAdnCache is NULL when getAdnRecordsCapacity."

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 252
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdnRecordsCapacity on slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": max adn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxAdnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", used adn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getUsedAdnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxEmailCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", used email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getUsedEmailCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max anr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 257
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxAnrCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", used anr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getUsedAnrCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max name length ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxNameLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max number length ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxNumberLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max email length ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxEmailLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max anr length ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxAnrLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 264
    return-object v0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 4
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 87
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v0

    .line 88
    .end local p1    # "efid":I
    .local v0, "efid":I
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdnRecordsInEF: efid=0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->checkThread()V

    .line 91
    new-instance p1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    move-object v1, p1

    .line 92
    .local v1, "loadRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v1

    .line 93
    :try_start_0
    iget-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 95
    .local p1, "response":Landroid/os/Message;
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x4f30

    if-eq v0, v2, :cond_0

    const/16 v2, 0x6f3a

    if-ne v0, v2, :cond_2

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->requestLoadAllAdnLike(Landroid/os/Message;)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    goto :goto_0

    .line 101
    :cond_1
    const-string v2, "Failure while trying to load from SIM due to uninit  sim pb adncache"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 106
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 105
    invoke-virtual {v2, v0, v3, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    goto :goto_0

    .line 109
    :cond_3
    const-string v2, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 112
    .end local p1    # "response":Landroid/os/Message;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object p1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 112
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 83
    .end local v0    # "efid":I
    .end local v1    # "loadRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .local p1, "efid":I
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAdnRecordsInEfByIndex(ILandroid/content/ContentValues;ILjava/lang/String;)Z
    .locals 21
    .param p1, "efid"    # I
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "index"    # I
    .param p4, "pin2"    # Ljava/lang/String;

    .line 176
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v9, p3

    iget-object v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", values = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " index="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", pin2="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v10, p4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 183
    const-string v0, "newTag"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "newTag":Ljava/lang/String;
    const-string v0, "newNumber"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "newPhoneNumber":Ljava/lang/String;
    const-string v0, "newEmails"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "newEmail":Ljava/lang/String;
    const-string v0, "newAnrs"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "newAnr":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    move-object v0, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v6}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v15, v0

    .line 188
    .local v15, "newEmailArray":[Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "newAnrArray":[Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v3

    .line 191
    .end local p1    # "efid":I
    .local v3, "efid":I
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->checkThread()V

    .line 192
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    move-object v14, v0

    .line 193
    .local v14, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v14

    .line 194
    :try_start_0
    iget-object v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v11, 0x3

    invoke-virtual {v0, v11, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 195
    .local v0, "response":Landroid/os/Message;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v11, :cond_5

    const/16 v11, 0x4f30

    if-eq v3, v11, :cond_3

    const/16 v11, 0x6f3a

    if-ne v3, v11, :cond_2

    goto :goto_2

    :cond_2
    move-object v12, v14

    move-object/from16 v20, v15

    goto/16 :goto_4

    .line 197
    :cond_3
    :goto_2
    :try_start_1
    new-instance v18, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v12, 0x6f3a

    const/4 v13, 0x0

    move-object/from16 v11, v18

    move-object/from16 v19, v14

    .end local v14    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .local v19, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    move-object v14, v8

    move-object/from16 v20, v15

    .end local v15    # "newEmailArray":[Ljava/lang/String;
    .local v20, "newEmailArray":[Ljava/lang/String;
    move-object v15, v7

    move-object/from16 v16, v20

    move-object/from16 v17, v5

    :try_start_2
    invoke-direct/range {v11 .. v17}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v11, v18

    .line 200
    .local v11, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v12, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v12, :cond_4

    .line 201
    invoke-virtual {v12, v11, v9, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->updateSimPbAdnByRecordId(Lcom/android/internal/telephony/uicc/AdnRecord;ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 202
    move-object/from16 v12, v19

    .end local v19    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .local v12, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :try_start_3
    invoke-virtual {v1, v12}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    goto :goto_3

    .line 204
    .end local v12    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v19    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :cond_4
    move-object/from16 v12, v19

    .end local v19    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v12    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    const-string v13, "Failure while trying to update by index due to uninit sim pb adncache"

    invoke-virtual {v1, v13}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    .end local v11    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_3
    move v15, v3

    move-object v11, v4

    move-object v14, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v13, v20

    goto/16 :goto_5

    .line 216
    .end local v0    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v0

    move v15, v3

    move-object v11, v4

    move-object v14, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v13, v20

    goto/16 :goto_6

    .end local v12    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v19    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    :catchall_1
    move-exception v0

    move-object/from16 v12, v19

    move v15, v3

    move-object v11, v4

    move-object v14, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v13, v20

    .end local v19    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v12    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    goto/16 :goto_6

    .end local v12    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v20    # "newEmailArray":[Ljava/lang/String;
    .restart local v14    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v15    # "newEmailArray":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v12, v14

    move-object v11, v4

    move-object v14, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object v13, v15

    move v15, v3

    .end local v14    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v15    # "newEmailArray":[Ljava/lang/String;
    .restart local v12    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v20    # "newEmailArray":[Ljava/lang/String;
    goto/16 :goto_6

    .line 195
    .end local v12    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v20    # "newEmailArray":[Ljava/lang/String;
    .restart local v0    # "response":Landroid/os/Message;
    .restart local v14    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v15    # "newEmailArray":[Ljava/lang/String;
    :cond_5
    move-object v12, v14

    move-object/from16 v20, v15

    .line 207
    .end local v14    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v15    # "newEmailArray":[Ljava/lang/String;
    .restart local v12    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v20    # "newEmailArray":[Ljava/lang/String;
    :goto_4
    :try_start_4
    new-instance v11, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    move-object/from16 v13, v20

    .end local v20    # "newEmailArray":[Ljava/lang/String;
    .local v13, "newEmailArray":[Ljava/lang/String;
    :try_start_5
    invoke-direct {v11, v8, v7, v13, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object v14, v5

    .end local v5    # "newAnrArray":[Ljava/lang/String;
    .local v14, "newAnrArray":[Ljava/lang/String;
    move-object v5, v11

    .line 209
    .local v5, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_start_6
    iget-object v11, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v11, :cond_6

    .line 210
    iget-object v11, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move v15, v3

    .end local v3    # "efid":I
    .local v15, "efid":I
    move-object v3, v11

    move-object v11, v4

    .end local v4    # "newAnr":Ljava/lang/String;
    .local v11, "newAnr":Ljava/lang/String;
    move v4, v15

    move-object/from16 v16, v6

    .end local v6    # "newEmail":Ljava/lang/String;
    .local v16, "newEmail":Ljava/lang/String;
    move/from16 v6, p3

    move-object/from16 v17, v7

    .end local v7    # "newPhoneNumber":Ljava/lang/String;
    .local v17, "newPhoneNumber":Ljava/lang/String;
    move-object/from16 v7, p4

    move-object/from16 v18, v8

    .end local v8    # "newTag":Ljava/lang/String;
    .local v18, "newTag":Ljava/lang/String;
    move-object v8, v0

    :try_start_7
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V

    .line 211
    invoke-virtual {v1, v12}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    goto :goto_5

    .line 213
    .end local v11    # "newAnr":Ljava/lang/String;
    .end local v15    # "efid":I
    .end local v16    # "newEmail":Ljava/lang/String;
    .end local v17    # "newPhoneNumber":Ljava/lang/String;
    .end local v18    # "newTag":Ljava/lang/String;
    .restart local v3    # "efid":I
    .restart local v4    # "newAnr":Ljava/lang/String;
    .restart local v6    # "newEmail":Ljava/lang/String;
    .restart local v7    # "newPhoneNumber":Ljava/lang/String;
    .restart local v8    # "newTag":Ljava/lang/String;
    :cond_6
    move v15, v3

    move-object v11, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .end local v3    # "efid":I
    .end local v4    # "newAnr":Ljava/lang/String;
    .end local v6    # "newEmail":Ljava/lang/String;
    .end local v7    # "newPhoneNumber":Ljava/lang/String;
    .end local v8    # "newTag":Ljava/lang/String;
    .restart local v11    # "newAnr":Ljava/lang/String;
    .restart local v15    # "efid":I
    .restart local v16    # "newEmail":Ljava/lang/String;
    .restart local v17    # "newPhoneNumber":Ljava/lang/String;
    .restart local v18    # "newTag":Ljava/lang/String;
    const-string v3, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {v1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 216
    .end local v0    # "response":Landroid/os/Message;
    .end local v5    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_5
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 217
    iget-object v0, v12, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 216
    .end local v11    # "newAnr":Ljava/lang/String;
    .end local v15    # "efid":I
    .end local v16    # "newEmail":Ljava/lang/String;
    .end local v17    # "newPhoneNumber":Ljava/lang/String;
    .end local v18    # "newTag":Ljava/lang/String;
    .restart local v3    # "efid":I
    .restart local v4    # "newAnr":Ljava/lang/String;
    .restart local v6    # "newEmail":Ljava/lang/String;
    .restart local v7    # "newPhoneNumber":Ljava/lang/String;
    .restart local v8    # "newTag":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move v15, v3

    move-object v11, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .end local v3    # "efid":I
    .end local v4    # "newAnr":Ljava/lang/String;
    .end local v6    # "newEmail":Ljava/lang/String;
    .end local v7    # "newPhoneNumber":Ljava/lang/String;
    .end local v8    # "newTag":Ljava/lang/String;
    .restart local v11    # "newAnr":Ljava/lang/String;
    .restart local v15    # "efid":I
    .restart local v16    # "newEmail":Ljava/lang/String;
    .restart local v17    # "newPhoneNumber":Ljava/lang/String;
    .restart local v18    # "newTag":Ljava/lang/String;
    goto :goto_6

    .end local v11    # "newAnr":Ljava/lang/String;
    .end local v14    # "newAnrArray":[Ljava/lang/String;
    .end local v15    # "efid":I
    .end local v16    # "newEmail":Ljava/lang/String;
    .end local v17    # "newPhoneNumber":Ljava/lang/String;
    .end local v18    # "newTag":Ljava/lang/String;
    .restart local v3    # "efid":I
    .restart local v4    # "newAnr":Ljava/lang/String;
    .local v5, "newAnrArray":[Ljava/lang/String;
    .restart local v6    # "newEmail":Ljava/lang/String;
    .restart local v7    # "newPhoneNumber":Ljava/lang/String;
    .restart local v8    # "newTag":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move v15, v3

    move-object v11, v4

    move-object v14, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    .end local v3    # "efid":I
    .end local v4    # "newAnr":Ljava/lang/String;
    .end local v5    # "newAnrArray":[Ljava/lang/String;
    .end local v6    # "newEmail":Ljava/lang/String;
    .end local v7    # "newPhoneNumber":Ljava/lang/String;
    .end local v8    # "newTag":Ljava/lang/String;
    .restart local v11    # "newAnr":Ljava/lang/String;
    .restart local v14    # "newAnrArray":[Ljava/lang/String;
    .restart local v15    # "efid":I
    .restart local v16    # "newEmail":Ljava/lang/String;
    .restart local v17    # "newPhoneNumber":Ljava/lang/String;
    .restart local v18    # "newTag":Ljava/lang/String;
    goto :goto_6

    .end local v11    # "newAnr":Ljava/lang/String;
    .end local v13    # "newEmailArray":[Ljava/lang/String;
    .end local v14    # "newAnrArray":[Ljava/lang/String;
    .end local v15    # "efid":I
    .end local v16    # "newEmail":Ljava/lang/String;
    .end local v17    # "newPhoneNumber":Ljava/lang/String;
    .end local v18    # "newTag":Ljava/lang/String;
    .restart local v3    # "efid":I
    .restart local v4    # "newAnr":Ljava/lang/String;
    .restart local v5    # "newAnrArray":[Ljava/lang/String;
    .restart local v6    # "newEmail":Ljava/lang/String;
    .restart local v7    # "newPhoneNumber":Ljava/lang/String;
    .restart local v8    # "newTag":Ljava/lang/String;
    .restart local v20    # "newEmailArray":[Ljava/lang/String;
    :catchall_5
    move-exception v0

    move v15, v3

    move-object v11, v4

    move-object v14, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v13, v20

    .end local v3    # "efid":I
    .end local v4    # "newAnr":Ljava/lang/String;
    .end local v5    # "newAnrArray":[Ljava/lang/String;
    .end local v6    # "newEmail":Ljava/lang/String;
    .end local v7    # "newPhoneNumber":Ljava/lang/String;
    .end local v8    # "newTag":Ljava/lang/String;
    .end local v20    # "newEmailArray":[Ljava/lang/String;
    .restart local v11    # "newAnr":Ljava/lang/String;
    .restart local v13    # "newEmailArray":[Ljava/lang/String;
    .restart local v14    # "newAnrArray":[Ljava/lang/String;
    .restart local v15    # "efid":I
    .restart local v16    # "newEmail":Ljava/lang/String;
    .restart local v17    # "newPhoneNumber":Ljava/lang/String;
    .restart local v18    # "newTag":Ljava/lang/String;
    goto :goto_6

    .end local v11    # "newAnr":Ljava/lang/String;
    .end local v12    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v13    # "newEmailArray":[Ljava/lang/String;
    .end local v16    # "newEmail":Ljava/lang/String;
    .end local v17    # "newPhoneNumber":Ljava/lang/String;
    .end local v18    # "newTag":Ljava/lang/String;
    .restart local v3    # "efid":I
    .restart local v4    # "newAnr":Ljava/lang/String;
    .restart local v5    # "newAnrArray":[Ljava/lang/String;
    .restart local v6    # "newEmail":Ljava/lang/String;
    .restart local v7    # "newPhoneNumber":Ljava/lang/String;
    .restart local v8    # "newTag":Ljava/lang/String;
    .local v14, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .local v15, "newEmailArray":[Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object v11, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object v12, v14

    move-object v13, v15

    move v15, v3

    move-object v14, v5

    .end local v3    # "efid":I
    .end local v4    # "newAnr":Ljava/lang/String;
    .end local v5    # "newAnrArray":[Ljava/lang/String;
    .end local v6    # "newEmail":Ljava/lang/String;
    .end local v7    # "newPhoneNumber":Ljava/lang/String;
    .end local v8    # "newTag":Ljava/lang/String;
    .restart local v11    # "newAnr":Ljava/lang/String;
    .restart local v12    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v13    # "newEmailArray":[Ljava/lang/String;
    .local v14, "newAnrArray":[Ljava/lang/String;
    .local v15, "efid":I
    .restart local v16    # "newEmail":Ljava/lang/String;
    .restart local v17    # "newPhoneNumber":Ljava/lang/String;
    .restart local v18    # "newTag":Ljava/lang/String;
    :goto_6
    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_6

    .line 178
    .end local v11    # "newAnr":Ljava/lang/String;
    .end local v12    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v13    # "newEmailArray":[Ljava/lang/String;
    .end local v14    # "newAnrArray":[Ljava/lang/String;
    .end local v15    # "efid":I
    .end local v16    # "newEmail":Ljava/lang/String;
    .end local v17    # "newPhoneNumber":Ljava/lang/String;
    .end local v18    # "newTag":Ljava/lang/String;
    .restart local p1    # "efid":I
    :cond_7
    move/from16 v3, p1

    move-object/from16 v10, p4

    new-instance v0, Ljava/lang/SecurityException;

    const-string v4, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAdnRecordsInEfBySearchForSubscriber(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 31
    .param p1, "efid"    # I
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "pin2"    # Ljava/lang/String;

    .line 120
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 125
    const-string v0, "tag"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "oldTag":Ljava/lang/String;
    const-string v0, "newTag"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 127
    .local v11, "newTag":Ljava/lang/String;
    const-string v0, "number"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 128
    .local v12, "oldPhoneNumber":Ljava/lang/String;
    const-string v0, "newNumber"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, "newPhoneNumber":Ljava/lang/String;
    const-string v0, "emails"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 130
    .local v14, "oldEmail":Ljava/lang/String;
    const-string v0, "newEmails"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 131
    .local v15, "newEmail":Ljava/lang/String;
    const-string v0, "anrs"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 132
    .local v10, "oldAnr":Ljava/lang/String;
    const-string v0, "newAnrs"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, "newAnr":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move-object v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v14}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v8, v0

    .line 134
    .local v8, "oldEmailArray":[Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v15}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v7, v0

    .line 135
    .local v7, "newEmailArray":[Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v10}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v6, v0

    .line 136
    .local v6, "oldAnrArray":[Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v9}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->getAnrStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v5, v4

    .line 137
    .local v5, "newAnrArray":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result v4

    .line 140
    .end local p1    # "efid":I
    .local v4, "efid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    .end local v5    # "newAnrArray":[Ljava/lang/String;
    .local v16, "newAnrArray":[Ljava/lang/String;
    const-string v5, "updateAdnRecordsWithContentValuesInEfBySearch: efid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", values = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", pin2="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->checkThread()V

    .line 144
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;-><init>()V

    move-object/from16 v22, v0

    .line 145
    .local v22, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    move-object/from16 v5, v22

    .end local v22    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .local v5, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    monitor-enter v5

    .line 146
    :try_start_0
    iget-object v0, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 147
    .local v0, "response":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, v3, v12, v8, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    .local v2, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->isSimPhoneBookEnabled()Z

    move-result v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v17, :cond_7

    move-object/from16 v22, v3

    .end local v3    # "oldTag":Ljava/lang/String;
    .local v22, "oldTag":Ljava/lang/String;
    const/16 v3, 0x4f30

    if-eq v4, v3, :cond_5

    const/16 v3, 0x6f3a

    if-ne v4, v3, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v23, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v25, v12

    move-object/from16 v24, v16

    move-object v12, v5

    goto/16 :goto_6

    .line 150
    :cond_5
    :goto_4
    :try_start_1
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v17, 0x6f3a

    const/16 v18, 0x0

    move/from16 v23, v4

    .end local v4    # "efid":I
    .local v23, "efid":I
    move-object v4, v3

    move-object/from16 v25, v12

    move-object/from16 v24, v16

    move-object v12, v5

    .end local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v16    # "newAnrArray":[Ljava/lang/String;
    .local v12, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .local v24, "newAnrArray":[Ljava/lang/String;
    .local v25, "oldPhoneNumber":Ljava/lang/String;
    move/from16 v5, v17

    move-object/from16 v26, v6

    .end local v6    # "oldAnrArray":[Ljava/lang/String;
    .local v26, "oldAnrArray":[Ljava/lang/String;
    move/from16 v6, v18

    move-object/from16 v27, v7

    .end local v7    # "newEmailArray":[Ljava/lang/String;
    .local v27, "newEmailArray":[Ljava/lang/String;
    move-object v7, v11

    move-object/from16 v28, v8

    .end local v8    # "oldEmailArray":[Ljava/lang/String;
    .local v28, "oldEmailArray":[Ljava/lang/String;
    move-object v8, v13

    move-object/from16 v29, v9

    .end local v9    # "newAnr":Ljava/lang/String;
    .local v29, "newAnr":Ljava/lang/String;
    move-object/from16 v9, v27

    move-object/from16 v30, v10

    .end local v10    # "oldAnr":Ljava/lang/String;
    .local v30, "oldAnr":Ljava/lang/String;
    move-object/from16 v10, v24

    :try_start_2
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    .local v3, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v4, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mSimPbAdnCache:Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;

    if-eqz v4, :cond_6

    .line 154
    invoke-virtual {v4, v2, v3, v0}, Lcom/qualcomm/qti/internal/telephony/uicccontact/QtiSimPhoneBookAdnRecordCache;->updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V

    .line 155
    invoke-virtual {v1, v12}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    goto :goto_5

    .line 157
    :cond_6
    const-string v4, "Failure while trying to update by search due to uninit sim pb adncache"

    invoke-virtual {v1, v4}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    .end local v3    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_5
    move-object/from16 v5, v24

    move-object/from16 v4, v27

    goto :goto_7

    .line 169
    .end local v0    # "response":Landroid/os/Message;
    .end local v2    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catchall_0
    move-exception v0

    move-object/from16 v5, v24

    move-object/from16 v4, v27

    goto/16 :goto_8

    .end local v23    # "efid":I
    .end local v24    # "newAnrArray":[Ljava/lang/String;
    .end local v25    # "oldPhoneNumber":Ljava/lang/String;
    .end local v26    # "oldAnrArray":[Ljava/lang/String;
    .end local v27    # "newEmailArray":[Ljava/lang/String;
    .end local v28    # "oldEmailArray":[Ljava/lang/String;
    .end local v29    # "newAnr":Ljava/lang/String;
    .end local v30    # "oldAnr":Ljava/lang/String;
    .restart local v4    # "efid":I
    .restart local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v6    # "oldAnrArray":[Ljava/lang/String;
    .restart local v7    # "newEmailArray":[Ljava/lang/String;
    .restart local v8    # "oldEmailArray":[Ljava/lang/String;
    .restart local v9    # "newAnr":Ljava/lang/String;
    .restart local v10    # "oldAnr":Ljava/lang/String;
    .local v12, "oldPhoneNumber":Ljava/lang/String;
    .restart local v16    # "newAnrArray":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move/from16 v23, v4

    move-object/from16 v26, v6

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v25, v12

    move-object v12, v5

    move-object v4, v7

    move-object/from16 v5, v16

    .end local v4    # "efid":I
    .end local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v6    # "oldAnrArray":[Ljava/lang/String;
    .end local v7    # "newEmailArray":[Ljava/lang/String;
    .end local v8    # "oldEmailArray":[Ljava/lang/String;
    .end local v9    # "newAnr":Ljava/lang/String;
    .end local v10    # "oldAnr":Ljava/lang/String;
    .end local v16    # "newAnrArray":[Ljava/lang/String;
    .local v12, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v23    # "efid":I
    .restart local v24    # "newAnrArray":[Ljava/lang/String;
    .restart local v25    # "oldPhoneNumber":Ljava/lang/String;
    .restart local v26    # "oldAnrArray":[Ljava/lang/String;
    .restart local v27    # "newEmailArray":[Ljava/lang/String;
    .restart local v28    # "oldEmailArray":[Ljava/lang/String;
    .restart local v29    # "newAnr":Ljava/lang/String;
    .restart local v30    # "oldAnr":Ljava/lang/String;
    goto/16 :goto_8

    .line 148
    .end local v22    # "oldTag":Ljava/lang/String;
    .end local v23    # "efid":I
    .end local v24    # "newAnrArray":[Ljava/lang/String;
    .end local v25    # "oldPhoneNumber":Ljava/lang/String;
    .end local v26    # "oldAnrArray":[Ljava/lang/String;
    .end local v27    # "newEmailArray":[Ljava/lang/String;
    .end local v28    # "oldEmailArray":[Ljava/lang/String;
    .end local v29    # "newAnr":Ljava/lang/String;
    .end local v30    # "oldAnr":Ljava/lang/String;
    .restart local v0    # "response":Landroid/os/Message;
    .restart local v2    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .local v3, "oldTag":Ljava/lang/String;
    .restart local v4    # "efid":I
    .restart local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v6    # "oldAnrArray":[Ljava/lang/String;
    .restart local v7    # "newEmailArray":[Ljava/lang/String;
    .restart local v8    # "oldEmailArray":[Ljava/lang/String;
    .restart local v9    # "newAnr":Ljava/lang/String;
    .restart local v10    # "oldAnr":Ljava/lang/String;
    .local v12, "oldPhoneNumber":Ljava/lang/String;
    .restart local v16    # "newAnrArray":[Ljava/lang/String;
    :cond_7
    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v25, v12

    move-object/from16 v24, v16

    move-object v12, v5

    .line 160
    .end local v3    # "oldTag":Ljava/lang/String;
    .end local v4    # "efid":I
    .end local v5    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v6    # "oldAnrArray":[Ljava/lang/String;
    .end local v7    # "newEmailArray":[Ljava/lang/String;
    .end local v8    # "oldEmailArray":[Ljava/lang/String;
    .end local v9    # "newAnr":Ljava/lang/String;
    .end local v10    # "oldAnr":Ljava/lang/String;
    .end local v16    # "newAnrArray":[Ljava/lang/String;
    .local v12, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v22    # "oldTag":Ljava/lang/String;
    .restart local v23    # "efid":I
    .restart local v24    # "newAnrArray":[Ljava/lang/String;
    .restart local v25    # "oldPhoneNumber":Ljava/lang/String;
    .restart local v26    # "oldAnrArray":[Ljava/lang/String;
    .restart local v27    # "newEmailArray":[Ljava/lang/String;
    .restart local v28    # "oldEmailArray":[Ljava/lang/String;
    .restart local v29    # "newAnr":Ljava/lang/String;
    .restart local v30    # "oldAnr":Ljava/lang/String;
    :goto_6
    :try_start_3
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v5, v24

    move-object/from16 v4, v27

    .end local v24    # "newAnrArray":[Ljava/lang/String;
    .end local v27    # "newEmailArray":[Ljava/lang/String;
    .local v4, "newEmailArray":[Ljava/lang/String;
    .local v5, "newAnrArray":[Ljava/lang/String;
    :try_start_4
    invoke-direct {v3, v11, v13, v4, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v19, v3

    .line 162
    .local v19, "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v3, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v3, :cond_8

    .line 163
    iget-object v3, v1, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    move-object/from16 v16, v3

    move/from16 v17, v23

    move-object/from16 v18, v2

    move-object/from16 v20, p3

    move-object/from16 v21, v0

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 164
    invoke-virtual {v1, v12}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->waitForResult(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;)V

    goto :goto_7

    .line 166
    :cond_8
    const-string v3, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {v1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiIccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 169
    .end local v0    # "response":Landroid/os/Message;
    .end local v2    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v19    # "newAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_7
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 170
    iget-object v0, v12, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;->mResult:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 169
    .end local v4    # "newEmailArray":[Ljava/lang/String;
    .end local v5    # "newAnrArray":[Ljava/lang/String;
    .restart local v24    # "newAnrArray":[Ljava/lang/String;
    .restart local v27    # "newEmailArray":[Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v5, v24

    move-object/from16 v4, v27

    .end local v24    # "newAnrArray":[Ljava/lang/String;
    .end local v27    # "newEmailArray":[Ljava/lang/String;
    .restart local v4    # "newEmailArray":[Ljava/lang/String;
    .restart local v5    # "newAnrArray":[Ljava/lang/String;
    goto :goto_8

    .end local v22    # "oldTag":Ljava/lang/String;
    .end local v23    # "efid":I
    .end local v25    # "oldPhoneNumber":Ljava/lang/String;
    .end local v26    # "oldAnrArray":[Ljava/lang/String;
    .end local v28    # "oldEmailArray":[Ljava/lang/String;
    .end local v29    # "newAnr":Ljava/lang/String;
    .end local v30    # "oldAnr":Ljava/lang/String;
    .restart local v3    # "oldTag":Ljava/lang/String;
    .local v4, "efid":I
    .local v5, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v6    # "oldAnrArray":[Ljava/lang/String;
    .restart local v7    # "newEmailArray":[Ljava/lang/String;
    .restart local v8    # "oldEmailArray":[Ljava/lang/String;
    .restart local v9    # "newAnr":Ljava/lang/String;
    .restart local v10    # "oldAnr":Ljava/lang/String;
    .local v12, "oldPhoneNumber":Ljava/lang/String;
    .restart local v16    # "newAnrArray":[Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v26, v6

    move-object v4, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v25, v12

    move-object v12, v5

    move-object/from16 v5, v16

    .end local v3    # "oldTag":Ljava/lang/String;
    .end local v6    # "oldAnrArray":[Ljava/lang/String;
    .end local v7    # "newEmailArray":[Ljava/lang/String;
    .end local v8    # "oldEmailArray":[Ljava/lang/String;
    .end local v9    # "newAnr":Ljava/lang/String;
    .end local v10    # "oldAnr":Ljava/lang/String;
    .end local v16    # "newAnrArray":[Ljava/lang/String;
    .local v4, "newEmailArray":[Ljava/lang/String;
    .local v5, "newAnrArray":[Ljava/lang/String;
    .local v12, "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .restart local v22    # "oldTag":Ljava/lang/String;
    .restart local v23    # "efid":I
    .restart local v25    # "oldPhoneNumber":Ljava/lang/String;
    .restart local v26    # "oldAnrArray":[Ljava/lang/String;
    .restart local v28    # "oldEmailArray":[Ljava/lang/String;
    .restart local v29    # "newAnr":Ljava/lang/String;
    .restart local v30    # "oldAnr":Ljava/lang/String;
    :goto_8
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_8

    .line 122
    .end local v4    # "newEmailArray":[Ljava/lang/String;
    .end local v5    # "newAnrArray":[Ljava/lang/String;
    .end local v11    # "newTag":Ljava/lang/String;
    .end local v12    # "updateRequest":Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Request;
    .end local v13    # "newPhoneNumber":Ljava/lang/String;
    .end local v14    # "oldEmail":Ljava/lang/String;
    .end local v15    # "newEmail":Ljava/lang/String;
    .end local v22    # "oldTag":Ljava/lang/String;
    .end local v23    # "efid":I
    .end local v25    # "oldPhoneNumber":Ljava/lang/String;
    .end local v26    # "oldAnrArray":[Ljava/lang/String;
    .end local v28    # "oldEmailArray":[Ljava/lang/String;
    .end local v29    # "newAnr":Ljava/lang/String;
    .end local v30    # "oldAnr":Ljava/lang/String;
    .restart local p1    # "efid":I
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
