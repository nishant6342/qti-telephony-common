.class public Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;
.super Lcom/motorola/android/internal/telephony/ExtTelephonyUtils;
.source "ExtTelephonyUtilsWrapper.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ExtTelephonyUtilsWrapper"

.field private static sInstance:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;


# instance fields
.field private mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

.field private mSIB16CoverageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Handler;",
            "Lcom/motorola/android/telephony/MotoExtPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTOEInfoHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Handler;",
            "Lcom/motorola/android/telephony/MotoExtPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->sInstance:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtils;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mSIB16CoverageHandlers:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mTOEInfoHandlers:Ljava/util/Map;

    .line 59
    const-string v0, "ExtTelephonyUtilsWrapper constructor"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 62
    const-string v0, "moto_ext_telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    .line 64
    return-void
.end method

.method private getDataRoamingName(II)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "type"    # I

    .line 456
    const/4 v0, 0x0

    .line 458
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 474
    :pswitch_0
    const-string v0, "gsm_data_roaming"

    .line 475
    goto :goto_0

    .line 467
    :pswitch_1
    const-string v0, "international_data_roaming"

    .line 468
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 461
    :pswitch_2
    const-string v0, "domestic_data_roaming"

    .line 462
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_0
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    sget-object v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->sInstance:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->sInstance:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    .line 54
    :cond_0
    sget-object v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->sInstance:Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;

    return-object v0
.end method

.method private getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;
    .locals 2

    .line 317
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getOpPackageName()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 424
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserSettingDSS(I)I
    .locals 3
    .param p1, "subId"    # I

    .line 413
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moto_dss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 416
    .local v0, "rtnVal":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserSettingDSS : subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rtnVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 417
    return v0
.end method

.method private getUserSettingNRModeDisabled(I)I
    .locals 3
    .param p1, "subId"    # I

    .line 360
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moto_nr_mode_disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 363
    .local v0, "rtnVal":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserSettingNRModeDisabled : subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rtnVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 364
    return v0
.end method


# virtual methods
.method public adjustDSSForSub(I)V
    .locals 3
    .param p1, "subId"    # I

    .line 376
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getDSSForSub(I)I

    move-result v0

    .line 377
    .local v0, "adjustedDSS":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustDSSForSub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    .line 380
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 381
    :goto_0
    invoke-virtual {v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setDSSEnabled(Z)Z

    goto :goto_1

    .line 383
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current sim is not active, ignore setDSSEnabled, subid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 386
    :cond_2
    :goto_1
    return-void
.end method

.method public adjustNRModeForSub(I)V
    .locals 7
    .param p1, "subId"    # I

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustNRModeForSub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getLastNRModeDisabledDefaultValue(I)I

    move-result v0

    .line 331
    .local v0, "lastNRModeDefaultValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustNRModeForSub : lastNRModeDefaultValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getCurrentNRModeDefaultValue(I)I

    move-result v1

    .line 333
    .local v1, "currentNRModeDefaultValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustNRModeForSub : currentNRModeDefaultValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 334
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getUserSettingNRModeDisabled(I)I

    move-result v2

    .line 335
    .local v2, "userSettingNRMode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustNRModeForSub : userSettingNRMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 336
    const/4 v3, -0x1

    .line 337
    .local v3, "adjustedNRMode":I
    const-string v4, "adjustNRModeForSub"

    if-eq v1, v0, :cond_0

    .line 338
    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->isValidNRModeDisabledValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : New default value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 341
    move v3, v1

    .line 342
    invoke-virtual {p0, p1, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->persistLastNRModeDisabledDefaultValue(II)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->isValidNRModeDisabledValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 344
    move v3, v2

    goto :goto_0

    .line 346
    :cond_1
    move v3, v1

    .line 348
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustNRModeForSub : adjustedNRMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->isValidNRModeDisabledValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 351
    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 352
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setNrModeDisabled(I)V

    goto :goto_1

    .line 354
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current sim is not active, ignore setNrModeDisabled, subid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 357
    :cond_3
    :goto_1
    return-void
.end method

.method public getActiveSingleSimSlot()I
    .locals 1

    .line 261
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "getActiveSingleSimSlot"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getActiveSingleSimSlot()I

    move-result v0

    return v0
.end method

.method public getCampedCsgInfo()Lcom/motorola/android/internal/telephony/ExtTelephonyUtils$CsgInfo;
    .locals 5

    .line 288
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "getCampedCsgInfo"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getCampedCsgInfo()Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;

    move-result-object v0

    .line 292
    .local v0, "csgInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;
    if-nez v0, :cond_1

    .line 293
    const-string v1, "csgInfo is null"

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->loge(Ljava/lang/String;)V

    .line 294
    const/4 v1, 0x0

    return-object v1

    .line 297
    :cond_1
    new-instance v1, Lcom/motorola/android/internal/telephony/ExtTelephonyUtils$CsgInfo;

    iget v2, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;->mRat:I

    iget v3, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;->mCsgId:I

    iget-object v4, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;->mCsgName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtils$CsgInfo;-><init>(IILjava/lang/String;)V

    .line 299
    .local v1, "extCsgInfo":Lcom/motorola/android/internal/telephony/ExtTelephonyUtils$CsgInfo;
    return-object v1
.end method

.method public getCdmaSysInfo(ILandroid/os/Message;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .line 167
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCdmaSysInfo subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 170
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getCdmaSysInfo(ILandroid/os/Message;)V

    .line 171
    return-void
.end method

.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 2
    .param p1, "subId"    # I

    .line 155
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentUiccCardProvisioningStatus subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    return v0
.end method

.method protected getDSSForSub(I)I
    .locals 6
    .param p1, "subId"    # I

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustDSSForSub "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getLastDSSDefaultValue(I)I

    move-result v0

    .line 391
    .local v0, "lastDSSDefaultValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustDSSForSub : lastDSSDefaultValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getCurrentDSSDefaultValue(I)I

    move-result v1

    .line 393
    .local v1, "currentDSSDefaultValue":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustDSSForSub : currentDSSDefaultValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getUserSettingDSS(I)I

    move-result v2

    .line 395
    .local v2, "userSettingDSS":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustDSSForSub : userSettingDSS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 396
    const/4 v3, -0x1

    .line 397
    .local v3, "adjustedDSS":I
    if-eq v1, v0, :cond_0

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustDSSForSub"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : New default value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 400
    move v3, v1

    .line 401
    invoke-virtual {p0, p1, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->persistLastDSSDefaultValue(II)V

    goto :goto_0

    .line 403
    :cond_0
    move v3, v2

    .line 404
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 405
    move v3, v1

    .line 408
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustDSSForSub : adjustedDSS ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 409
    return v3
.end method

.method public getDataRoamingSettingsValue(Lcom/android/internal/telephony/Phone;II)I
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "type"    # I
    .param p3, "defVal"    # I

    .line 486
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getDataRoamingName(II)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "name":Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataRoamingSettingsValue name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 488
    :cond_0
    if-nez v0, :cond_1

    .line 489
    return p3

    .line 491
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 492
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {v1, v0, p3}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public getEndcEnabled()Z
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getEndcEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getEndcEnabled(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 203
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 205
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getEndcEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;
    .locals 2
    .param p1, "subId"    # I

    .line 313
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getMotoSettings(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "catagory"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 510
    packed-switch p2, :pswitch_data_0

    .line 520
    const/4 v0, 0x0

    return-object v0

    .line 516
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/motorola/android/provider/MotorolaSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 514
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 512
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVoNRSetting(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 564
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getVoNRSetting()Z

    move-result v0

    return v0
.end method

.method public isCarrierForceSingleSim()Z
    .locals 1

    .line 309
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->isCarrierForceSingleSim()Z

    move-result v0

    return v0
.end method

.method public isIntlSmsGuardEnabled()Z
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "international_outgoingsms_guard"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    .line 449
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIntlSmsGuardEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 450
    return v0
.end method

.method public isSmsDeliveryAckEnabled()Z
    .locals 4

    .line 433
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_delivery_report_ack_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 435
    .local v0, "rtnVal":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmsDeliveryAckEnabled : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logv(Ljava/lang/String;)V

    .line 436
    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public migrateVoNRUserSettingIfNecessary(I)Z
    .locals 6
    .param p1, "subId"    # I

    .line 569
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moto_vonr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 573
    .local v0, "oldVoNRSetting":I
    if-eq v0, v3, :cond_1

    .line 575
    nop

    .line 576
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v4, "1"

    goto :goto_0

    :cond_0
    const-string v4, "0"

    .line 575
    :goto_0
    const-string v5, "nr_advanced_calling_enabled"

    invoke-static {p1, v5, v4}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SubId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", load VoNRSetting from setting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and migrate it to NR_ADVANCED_CALLING_ENABLED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 581
    return v1

    .line 585
    .end local v0    # "oldVoNRSetting":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public notifyCellIdentityChange(ILandroid/telephony/CellIdentity;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "cellIdentity"    # Landroid/telephony/CellIdentity;

    .line 543
    if-nez p2, :cond_0

    .line 544
    return-void

    .line 548
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    if-eqz v0, :cond_1

    .line 549
    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;->notifyCellIdentityForPhone(ILandroid/telephony/CellIdentity;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_1
    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 554
    :goto_0
    return-void
.end method

.method public regMotoNrModeChangedObserver(Lcom/android/internal/telephony/SettingsObserver;Lcom/android/internal/telephony/Phone;I)V
    .locals 3
    .param p1, "settingsObserver"    # Lcom/android/internal/telephony/SettingsObserver;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "msgId"    # I

    .line 527
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 528
    .local v0, "subId":I
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regMotoNrModeChangedObserver:moto_nr_mode_disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moto_nr_mode_disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-static {v1}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 535
    invoke-virtual {p1, v1, p3}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 538
    return-void

    .line 530
    :cond_1
    :goto_0
    const-string v1, "regMotoNrModeChangedObserver: Invalid subId"

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->loge(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public registerSIB16CoverageChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSIB16CoverageChanged: subId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$1;-><init>(Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;Ljava/lang/Integer;Landroid/os/Looper;Landroid/os/Handler;ILjava/lang/Object;)V

    .line 84
    .local v0, "listener":Lcom/motorola/android/telephony/MotoExtPhoneStateListener;
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 85
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mSIB16CoverageHandlers:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public registerTOEInfoChanged(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "what"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 112
    new-instance v7, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v0, v7

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper$2;-><init>(Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;Ljava/lang/Integer;Landroid/os/Looper;Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    .local v0, "listener":Lcom/motorola/android/telephony/MotoExtPhoneStateListener;
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 128
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mTOEInfoHandlers:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public setActiveSingleSimSlot(I)Z
    .locals 2
    .param p1, "slotType"    # I

    .line 274
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveSingleSimSlot slotType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setActiveSingleSimSlot(I)Z

    move-result v0

    return v0
.end method

.method public setDataRoamingSettingsValue(Lcom/android/internal/telephony/Phone;II)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "type"    # I
    .param p3, "val"    # I

    .line 497
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getDataRoamingName(II)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "name":Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataRoamingSettingsValue name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 499
    :cond_0
    if-nez v0, :cond_1

    .line 500
    return-void

    .line 502
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 503
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-static {v1, v0, p3}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 504
    return-void
.end method

.method public setEnabledAdvancedBandList(I[I[I)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "enabledSaBands"    # [I
    .param p3, "enabledNsaBands"    # [I

    .line 221
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    const-string v1, "setEnabledAdvancedBandList subId="

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 222
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getUiConfigDataFromPreference(I)[B

    move-result-object v0

    .line 223
    .local v0, "prevBArr":[B
    const/4 v2, 0x0

    .line 224
    .local v2, "needsUpdate":Z
    if-nez v0, :cond_3

    .line 225
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->getUiIconConfigData(I)[B

    move-result-object v0

    .line 226
    if-eqz v0, :cond_2

    .line 227
    sget-boolean v3, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEnabledAdvancedBandList uiConfigData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 228
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 229
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->persistUiConfigData(I[B)V

    goto :goto_0

    .line 231
    :cond_2
    return-void

    .line 234
    :cond_3
    :goto_0
    if-eqz p2, :cond_9

    if-nez p3, :cond_4

    goto :goto_3

    .line 235
    :cond_4
    nop

    .line 236
    invoke-static {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UiIconConfigData;->deserialize([B)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UiIconConfigData;

    move-result-object v3

    .line 237
    .local v3, "prev":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UiIconConfigData;
    iget-object v4, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UiIconConfigData;->uWbSaBandList:[I

    invoke-virtual {p0, p2, v4}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->isBandArrayEqual([I[I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UiIconConfigData;->uWbNsaBandList:[I

    .line 238
    invoke-virtual {p0, p3, v4}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->isBandArrayEqual([I[I)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v4, 0x1

    :goto_2
    move v2, v4

    .line 239
    if-eqz v2, :cond_8

    .line 240
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v4

    .line 241
    invoke-virtual {v4, p1, p2, p3, v0}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setEnabledAdvancedBandList(I[I[I[B)[B

    move-result-object v4

    .line 242
    .local v4, "retVal":[B
    if-eqz v4, :cond_7

    .line 243
    invoke-virtual {p0, p1, v4}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->persistUiConfigData(I[B)V

    .line 245
    :cond_7
    sget-boolean v5, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v5, :cond_8

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " update successful: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 247
    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 250
    .end local v4    # "retVal":[B
    :cond_8
    return-void

    .line 234
    .end local v3    # "prev":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UiIconConfigData;
    :cond_9
    :goto_3
    return-void
.end method

.method public setEndcEnabled(IZ)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 181
    sget-boolean v0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->logd(Ljava/lang/String;)V

    .line 183
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setEndcEnabled(IZ)V

    .line 184
    return-void
.end method

.method public setEndcEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 192
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->setEndcEnabled(IZ)V

    .line 193
    return-void
.end method

.method public setVoNRSetting(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 559
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager(I)Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->setVoNRSetting(Z)Z

    move-result v0

    return v0
.end method

.method public unregisterSIB16CoverageChanged(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 95
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mSIB16CoverageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mSIB16CoverageHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/telephony/MotoExtPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 99
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mSIB16CoverageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public unregisterTOEInfoChanged(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    .line 138
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mTOEInfoHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->getMotoExtTelephonyManager()Lcom/motorola/android/telephony/MotoExtTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mTOEInfoHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/telephony/MotoExtPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/MotoExtTelephonyManager;->listen(Lcom/motorola/android/telephony/MotoExtPhoneStateListener;I)V

    .line 142
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/ExtTelephonyUtilsWrapper;->mTOEInfoHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method
