.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;
.super Lcom/android/internal/telephony/data/DataProfileManager;
.source "QtiDataProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;
    }
.end annotation


# static fields
.field private static final APN_NAME:I = 0x3

.field private static final APN_TYPE:I = 0x1

.field private static final DEVICE_CAPABILITY:I = 0x2

.field private static final EVENT_OVERRIDE_IP_PROTOCOL:I = 0xc8

.field private static final GID:I = 0x0

.field private static final KEY_MULTI_APN_ARRAY_FOR_SAME_GID_ENTRY_LENGTH:I = 0x4

.field private static final MBN_FLAG_MODEM:Ljava/lang/String; = "persist.radio.mcfg_version"

.field private static final MBN_FLAG_MODEM_NEW:Ljava/lang/String; = "persist.vendor.radio.mcfg_version"

.field private static final MBN_FLAG_RIL:Ljava/lang/String; = "persist.radio.allow_ia_apn_"

.field private static final OEM_RIL_UNSOL_MCFG_MBN_CHANGED:I = 0x40016

.field private static final RADIO_MBN_SOLUTION_PROP:Ljava/lang/String; = "persist.vendor.radio.sw_mbn_update"


# instance fields
.field private mDcPhoneStateListener:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;

.field private mMotoExtTelMananger:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

.field private mOverrideIpProtocol:I

.field private mOverrideIpProtocolSubId:I

.field private mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

.field private mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;


# direct methods
.method public static synthetic $r8$lambda$wFssCi4fMLNTmiirkITFGOzGml0(Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;Landroid/telephony/data/DataProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->lambda$overrideDataProfileIpProtocolIfNeeded$1(Landroid/telephony/data/DataProfile;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misReadyForProfileSync(Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->isReadyForProfileSync()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$munRegisterForMbnChanged(Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->unRegisterForMbnChanged()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dataNetworkController"    # Lcom/android/internal/telephony/data/DataNetworkController;
    .param p3, "dataServiceManager"    # Lcom/android/internal/telephony/data/DataServiceManager;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "callback"    # Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;

    .line 90
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataProfileManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocol:I

    .line 73
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocolSubId:I

    .line 91
    const-string v0, "QtiDataProfileManager: constructor"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 93
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private clearOverrideIpProtocolParams()V
    .locals 1

    .line 336
    const-string v0, "clearOverrideIpProtocolParams"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 337
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocol:I

    .line 338
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocolSubId:I

    .line 339
    return-void
.end method

.method private getApnBasedOnRadioCapability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "deviceCapability"    # Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 161
    const-string v1, "getApnBasedOnRadioCapability: deviceCapability is null"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->loge(Ljava/lang/String;)V

    .line 162
    return-object v0

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->getApnsWithSameGID()[Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "apnConfig":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 166
    .local v5, "apnEntry":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    if-eqz p3, :cond_1

    .line 169
    aget-object v7, v6, v3

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    aget-object v7, v6, v7

    .line 170
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 171
    const/4 v0, 0x3

    aget-object v0, v6, v0

    return-object v0

    .line 165
    .end local v5    # "apnEntry":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    :cond_2
    return-object v0
.end method

.method private isApnFilteringRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->getApnsWithSameGID()[Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "apnConfig":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 138
    .local v4, "apnEntry":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "split":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 140
    aget-object v6, v5, v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 141
    return v6

    .line 137
    .end local v4    # "apnEntry":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_1
    return v2
.end method

.method private isReadyForProfileSync()Z
    .locals 8

    .line 221
    const-string v0, "persist.vendor.radio.sw_mbn_update"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 223
    .local v0, "radioMBNUpdateSolution":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const-string v3, "persist.vendor.radio.mcfg_version"

    const-string v4, "null"

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "rilMcfgVersion":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    const-string v5, "persist.radio.mcfg_version"

    invoke-static {v3, v5, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.radio.allow_ia_apn_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 231
    .local v3, "rilAllowIA":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setInitialApn: radioMBNUpdateSolution = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rilMcfgVersion = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rilAllowIA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 235
    const-string v6, "MBN is ready, can set InitialApn."

    if-eq v0, v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 236
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 237
    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 238
    return v5

    .line 241
    :cond_1
    if-ne v0, v5, :cond_2

    if-eqz v3, :cond_2

    .line 242
    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 243
    return v5

    .line 246
    :cond_2
    const-string v4, "setInitialApn: MBN is not ready yet."

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 248
    return v1
.end method

.method static synthetic lambda$overrideDataProfileIpProtocolIfNeeded$0(Landroid/telephony/data/DataProfile;)Z
    .locals 1
    .param p0, "dp"    # Landroid/telephony/data/DataProfile;

    .line 355
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$overrideDataProfileIpProtocolIfNeeded$1(Landroid/telephony/data/DataProfile;)V
    .locals 2
    .param p1, "dp"    # Landroid/telephony/data/DataProfile;

    .line 356
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocol:I

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->setProtocol(I)V

    return-void
.end method

.method private onOverrideIpProtocol(II)V
    .locals 2
    .param p1, "ipProtocol"    # I
    .param p2, "subId"    # I

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overrideIpProtocol: ipProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 330
    iput p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocol:I

    .line 331
    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocolSubId:I

    .line 332
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->updateDataProfiles(Z)V

    .line 333
    return-void
.end method

.method private registerForMbnChanged()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mDcPhoneStateListener:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;

    if-eqz v0, :cond_0

    .line 279
    return-void

    .line 282
    :cond_0
    const-string v0, "registerForMbnChanged"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mMotoExtTelMananger:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 285
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mMotoExtTelMananger:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    .line 289
    :cond_1
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;I)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mDcPhoneStateListener:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;

    .line 290
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mMotoExtTelMananger:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    const v2, 0x8000

    invoke-virtual {v1, v0, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 292
    return-void
.end method

.method private unRegisterForMbnChanged()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mDcPhoneStateListener:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;

    if-eqz v0, :cond_0

    .line 296
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mMotoExtTelMananger:Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mDcPhoneStateListener:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$DcPhoneStateListener;

    .line 300
    :cond_0
    return-void
.end method


# virtual methods
.method protected filterApnSettingsWithRadioCapability(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p1, "allApnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/data/ApnSetting;>;"
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->isApnFilteringWithRadioCapabilityRequired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filterApnSettingsWithRadioCapability start: allApnSettings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 107
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/ApnSetting;

    .line 108
    .local v1, "apn":Landroid/telephony/data/ApnSetting;
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "apnType":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->hasMvnoParams()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 110
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->isApnFilteringRequired(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mQtiDataNetworkController:Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 112
    invoke-virtual {v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getEnhancedRadioCapabilityResponse()Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;->getEnhancedRadioCapability()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-direct {p0, v3, v2, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->getApnBasedOnRadioCapability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "apnName":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 115
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterApnSettingsWithRadioCapability: removed not supported apn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 120
    .end local v3    # "apnName":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 121
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 123
    .end local v1    # "apn":Landroid/telephony/data/ApnSetting;
    .end local v2    # "apnType":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 124
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterApnSettingsWithRadioCapability: end: allApnSettings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 306
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 318
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 308
    :sswitch_0
    const-string v0, "EVENT_OVERRIDE_IP_PROTOCOL"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 309
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->onOverrideIpProtocol(II)V

    .line 310
    goto :goto_0

    .line 314
    :sswitch_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->clearOverrideIpProtocolParams()V

    .line 315
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->handleMessage(Landroid/os/Message;)V

    .line 316
    nop

    .line 321
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected overrideDataProfileIpProtocolIfNeeded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;)V"
        }
    .end annotation

    .line 350
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocol:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocolSubId:I

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 351
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 352
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->isOverrideIpProtocolEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OverrideDataProfileIpProtocol to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 354
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$$ExternalSyntheticLambda0;-><init>()V

    .line 355
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager$$ExternalSyntheticLambda1;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;)V

    .line 356
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OverrideIpProtocol param invalid: mOverrideIpProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOverrideIpProtocolSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocolSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 361
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->clearOverrideIpProtocolParams()V

    .line 364
    :goto_0
    return-void
.end method

.method protected overrideIpProtocol(II)V
    .locals 1
    .param p1, "ipProtocol"    # I
    .param p2, "subId"    # I

    .line 324
    const/16 v0, 0xc8

    invoke-virtual {p0, v0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->sendMessage(Landroid/os/Message;)Z

    .line 325
    return-void
.end method

.method protected resetOverrideIpProtocol()V
    .locals 2

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetOverrideIpProtocol: mOverrideIpProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->log(Ljava/lang/String;)V

    .line 343
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->mOverrideIpProtocol:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 344
    const/16 v0, 0xc8

    invoke-virtual {p0, v0, v1, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->sendMessage(Landroid/os/Message;)Z

    .line 347
    :cond_0
    return-void
.end method

.method protected updateDataProfilesAtModem()V
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->isReadyForProfileSync()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->registerForMbnChanged()V

    .line 210
    return-void

    .line 212
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfilesAtModem()V

    .line 213
    return-void
.end method

.method protected updateInitialAttachDataProfileAtModem(Z)V
    .locals 1
    .param p1, "forceUpdateIa"    # Z

    .line 198
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->isReadyForProfileSync()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->registerForMbnChanged()V

    .line 200
    return-void

    .line 203
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->updateInitialAttachDataProfileAtModem(Z)V

    .line 204
    return-void
.end method
