.class public Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
.super Ljava/lang/Object;
.source "QtiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;
    }
.end annotation


# static fields
.field private static final PROPERTY_DSDS_TO_SS:Ljava/lang/String; = "persist.vendor.radio.dsds_to_ss"

.field private static final TAG:Ljava/lang/String; = "QtiPhoneUtils"

.field private static sDsdsToSsConfigStatus:I

.field private static sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

.field private static sReadyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCellularDataServiceCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Lcom/qti/extphone/Client;

.field private mContext:Landroid/content/Context;

.field protected mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

.field private mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mIsSmartDdsSwitchFeatureAvailable:Z

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
.method static bridge synthetic -$$Nest$fgetmCellularDataServiceCallbacks(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mCellularDataServiceCallbacks:Ljava/util/HashMap;

    return-object p0
.end method

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

.method static bridge synthetic -$$Nest$fgetmIsSmartDdsSwitchFeatureAvailable(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mIsSmartDdsSwitchFeatureAvailable:Z

    return p0
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

.method static bridge synthetic -$$Nest$fputmIsSmartDdsSwitchFeatureAvailable(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mIsSmartDdsSwitchFeatureAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueryDsdsToSsConfig(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->queryDsdsToSsConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsReadyListeners()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sReadyListeners:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sReadyListeners:Ljava/util/List;

    .line 87
    const/4 v0, -0x1

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sDsdsToSsConfigStatus:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mCellularDataServiceCallbacks:Ljava/util/HashMap;

    .line 153
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$1;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 183
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$2;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    .line 108
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {p1}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 110
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 111
    return-void
.end method

.method public static addOnQtiPhoneReadyListener(Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils$OnQtiPhoneReadyListener;

    .line 120
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sReadyListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    .locals 3

    .line 99
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    if-eqz v1, :cond_0

    .line 103
    monitor-exit v0

    return-object v1

    .line 101
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "QtiPhoneUtils was not initialized!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
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

    .line 608
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 610
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v2, v1

    if-ge p2, v2, :cond_0

    aget-object v2, v1, p2

    if-eqz v2, :cond_0

    .line 613
    :try_start_0
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 614
    :catch_0
    move-exception v2

    .line 619
    .end local v1    # "valArray":[Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getPhoneId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 553
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 554
    .local v0, "subManager":Landroid/telephony/SubscriptionManager;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 555
    return v1

    .line 557
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 558
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_1

    .line 559
    return v1

    .line 561
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    return v1
.end method

.method static init(Landroid/content/Context;)Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    const-class v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    .line 94
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sInstance:Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    return-object v0

    .line 94
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

    .line 570
    const-string v0, ""

    .line 571
    .local v0, "data":Ljava/lang/String;
    const/4 v1, 0x0

    .line 572
    .local v1, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "v":Ljava/lang/String;
    const v3, 0x7fffffff

    if-eq p2, v3, :cond_5

    .line 577
    if-ltz p2, :cond_4

    .line 580
    const-string v3, ","

    if-eqz v2, :cond_0

    .line 581
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 585
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p2, :cond_2

    .line 586
    const-string v5, ""

    .line 587
    .local v5, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v6, v1

    if-ge v4, v6, :cond_1

    .line 588
    aget-object v5, v1, v4

    .line 590
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

    .line 585
    .end local v5    # "str":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 593
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

    .line 596
    if-eqz v1, :cond_3

    .line 597
    add-int/lit8 v4, p2, 0x1

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_3

    .line 598
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

    .line 597
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 601
    .end local v4    # "i":I
    :cond_3
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 578
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

    .line 575
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

.method private queryDsdsToSsConfig()V
    .locals 3

    .line 146
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sDsdsToSsConfigStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 148
    const-string v1, "persist.vendor.radio.dsds_to_ss"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qti/extphone/ExtTelephonyManager;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sDsdsToSsConfigStatus:I

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryDsdsToSsConfig value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sDsdsToSsConfigStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiPhoneUtils"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method


# virtual methods
.method public getCurrentUiccCardProvisioningStatus(I)I
    .locals 6
    .param p1, "slotId"    # I

    .line 623
    const/4 v0, -0x1

    .line 624
    .local v0, "currentStatus":I
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    return v0

    .line 628
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 629
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    .line 630
    return v0

    .line 633
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 634
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mContext:Landroid/content/Context;

    .line 635
    const-string v3, "telephony_subscription_service"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 636
    .local v2, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v3

    .line 637
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 638
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 639
    .local v4, "si":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 640
    const/4 v5, 0x1

    goto :goto_0

    .line 641
    :cond_2
    const/4 v5, 0x0

    :goto_0
    move v0, v5

    .line 642
    .end local v4    # "si":Landroid/telephony/SubscriptionInfo;
    goto :goto_1

    .line 643
    :cond_3
    const/4 v0, -0x2

    .line 645
    .end local v2    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v3    # "subId":I
    :goto_1
    goto :goto_2

    .line 646
    :cond_4
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;

    move-result-object v2

    .line 647
    invoke-virtual {v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiUiccCardProvisioner;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v0

    .line 649
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

    .line 651
    return v0
.end method

.method public getPhoneCount()I
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 549
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 548
    return v0
.end method

.method public getPropertyValueBool(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 138
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0, p1, p2}, Lcom/qti/extphone/ExtTelephonyManager;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getQosParameters(IILandroid/os/Message;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "cid"    # I
    .param p3, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    return-void

    .line 659
    :cond_0
    const-string v0, "QtiPhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getQosParameters, phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 664
    const/4 v1, 0x0

    .line 666
    .local v1, "token":Lcom/qti/extphone/Token;
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v2, p1, p2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->getQosParameters(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 669
    goto :goto_0

    .line 676
    .end local v1    # "token":Lcom/qti/extphone/Token;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 667
    .restart local v1    # "token":Lcom/qti/extphone/Token;
    :catch_0
    move-exception v2

    .line 668
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "QtiPhoneUtils"

    const-string v4, "getQosParameters, caught exception"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_1

    .line 674
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    nop

    .end local v1    # "token":Lcom/qti/extphone/Token;
    monitor-exit v0

    .line 677
    return-void

    .line 672
    .restart local v1    # "token":Lcom/qti/extphone/Token;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "API is not available"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    .end local p1    # "phoneId":I
    .end local p2    # "cid":I
    .end local p3    # "response":Landroid/os/Message;
    throw v2

    .line 676
    .end local v1    # "token":Lcom/qti/extphone/Token;
    .restart local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;
    .restart local p1    # "phoneId":I
    .restart local p2    # "cid":I
    .restart local p3    # "response":Landroid/os/Message;
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getQtiRadioCapability(ILandroid/os/Message;)Z
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    const/4 v0, 0x0

    return v0

    .line 522
    :cond_0
    const-string v0, "QtiPhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getQtiRadioCapability, response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, v2}, Lcom/qti/extphone/ExtTelephonyManager;->getQtiRadioCapability(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 525
    .local v1, "token":Lcom/qti/extphone/Token;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    nop

    .end local v1    # "token":Lcom/qti/extphone/Token;
    monitor-exit v0

    .line 527
    const/4 v0, 0x1

    return v0

    .line 526
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDsdsToSsConfigEnabled()Z
    .locals 1

    .line 142
    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sDsdsToSsConfigStatus:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSmartDdsSwitchFeatureAvailable()Z
    .locals 1

    .line 680
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mIsSmartDdsSwitchFeatureAvailable:Z

    return v0
.end method

.method public isValidPhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 565
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

.method public registerDataServiceCallbackForQos(ILcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager$QtiCellularDataServiceCallback;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerDataServiceCallbackForQos, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiPhoneUtils"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mCellularDataServiceCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method sendCdmaSms(I[BLandroid/os/Message;Z)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "pdu"    # [B
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "expectMore"    # Z

    .line 413
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const/4 v0, 0x0

    return v0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, "serial":I
    :try_start_0
    const-string v2, "QtiPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCdmaSms, expectMore="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v2, p1, p2, p4, v3}, Lcom/qti/extphone/ExtTelephonyManager;->sendCdmaSms(I[BZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v2

    .line 423
    .local v2, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v2}, Lcom/qti/extphone/Token;->get()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v3

    .line 426
    .end local v2    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 424
    :catch_0
    move-exception v2

    .line 425
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception sendCdmaSms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    nop

    .end local v1    # "serial":I
    monitor-exit v0

    .line 429
    const/4 v0, 0x1

    return v0

    .line 428
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;
    .param p3, "response"    # Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    .line 532
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    return-void

    .line 535
    :cond_0
    iput-object p3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "tokenSerial":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCarrierInfoForImsiEncryption, phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QtiPhoneUtils"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v1, p1, p2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v1

    .line 541
    .local v1, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v1}, Lcom/qti/extphone/Token;->get()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 544
    .end local v1    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 542
    :catch_0
    move-exception v1

    .line 543
    .local v1, "e":Ljava/lang/RuntimeException;
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

    .line 545
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method setNetworkSelectionModeAutomatic(IILandroid/os/Message;)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "accessType"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 500
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const/4 v0, 0x0

    return v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 504
    const/4 v1, 0x0

    .line 507
    .local v1, "serial":I
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v2, p1, p2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->setNetworkSelectionModeAutomatic(IILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v2

    .line 509
    .local v2, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v2}, Lcom/qti/extphone/Token;->get()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 512
    .end local v2    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 514
    .end local v1    # "serial":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 510
    .restart local v1    # "serial":I
    :catch_0
    move-exception v2

    .line 511
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception setNetworkSelectionModeAutomatic "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    nop

    .end local v1    # "serial":I
    monitor-exit v0

    .line 515
    const/4 v0, 0x1

    return v0

    .line 514
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)Z
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p3, "result"    # Landroid/os/Message;

    .line 470
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    const/4 v0, 0x0

    return v0

    .line 473
    :cond_0
    const-wide/16 v0, -0x1

    .line 474
    .local v0, "cagId":J
    const/4 v2, 0x0

    .line 475
    .local v2, "nId":[B
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getCagInfo()Landroid/telephony/CagInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 476
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getCagInfo()Landroid/telephony/CagInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CagInfo;->getCagId()J

    move-result-wide v0

    .line 478
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getSnpnInfo()Landroid/telephony/SnpnInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 479
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getSnpnInfo()Landroid/telephony/SnpnInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SnpnInfo;->getNid()[B

    move-result-object v2

    .line 481
    :cond_2
    new-instance v10, Lcom/qti/extphone/QtiSetNetworkSelectionMode;

    .line 482
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getRan()I

    move-result v5

    .line 483
    invoke-virtual {p2}, Lcom/android/internal/telephony/OperatorInfo;->getAccessMode()I

    move-result v6

    move-object v3, v10

    move-wide v7, v0

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/qti/extphone/QtiSetNetworkSelectionMode;-><init>(Ljava/lang/String;IIJ[B)V

    .line 485
    .local v3, "mode":Lcom/qti/extphone/QtiSetNetworkSelectionMode;
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v4

    .line 486
    const/4 v5, 0x0

    .line 488
    .local v5, "serial":I
    :try_start_0
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v6, p1, v3, v7}, Lcom/qti/extphone/ExtTelephonyManager;->setNetworkSelectionModeManual(ILcom/qti/extphone/QtiSetNetworkSelectionMode;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v6

    .line 490
    .local v6, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v6}, Lcom/qti/extphone/Token;->get()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v7

    .line 493
    .end local v6    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 495
    .end local v5    # "serial":I
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 491
    .restart local v5    # "serial":I
    :catch_0
    move-exception v6

    .line 492
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v7, "QtiPhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception setNetworkSelectionModeManual "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    nop

    .end local v5    # "serial":I
    monitor-exit v4

    .line 496
    const/4 v4, 0x1

    return v4

    .line 495
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method startNetworkScan(ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "networkScanRequest"    # Landroid/telephony/NetworkScanRequest;
    .param p3, "result"    # Landroid/os/Message;

    .line 433
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x0

    return v0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 437
    const/4 v1, 0x0

    .line 440
    .local v1, "serial":I
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v2, p1, p2, v3}, Lcom/qti/extphone/ExtTelephonyManager;->startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v2

    .line 442
    .local v2, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v2}, Lcom/qti/extphone/Token;->get()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 445
    .end local v2    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 447
    .end local v1    # "serial":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 443
    .restart local v1    # "serial":I
    :catch_0
    move-exception v2

    .line 444
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception startNetworkScan "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    nop

    .end local v1    # "serial":I
    monitor-exit v0

    .line 448
    const/4 v0, 0x1

    return v0

    .line 447
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method stopNetworkScan(ILandroid/os/Message;)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 452
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x0

    return v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    monitor-enter v0

    .line 456
    const/4 v1, 0x0

    .line 459
    .local v1, "serial":I
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v2, p1, v3}, Lcom/qti/extphone/ExtTelephonyManager;->stopNetworkScan(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    move-result-object v2

    .line 460
    .local v2, "token":Lcom/qti/extphone/Token;
    invoke-virtual {v2}, Lcom/qti/extphone/Token;->get()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 463
    .end local v2    # "token":Lcom/qti/extphone/Token;
    goto :goto_0

    .line 465
    .end local v1    # "serial":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 461
    .restart local v1    # "serial":I
    :catch_0
    move-exception v2

    .line 462
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v3, "QtiPhoneUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception stopNetworkScan "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->mPendingRequests:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    nop

    .end local v1    # "serial":I
    monitor-exit v0

    .line 466
    const/4 v0, 0x1

    return v0

    .line 465
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
