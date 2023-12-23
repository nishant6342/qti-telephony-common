.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
.super Lcom/android/internal/telephony/data/DataNetworkController;
.source "QtiDataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DATA_STALL_DETECTED:Ljava/lang/String; = "com.motorola.intent.action.DATA_STALL_DETECTED"

.field private static final ACTION_OVERRIDE_IP_PROTOCOL:Ljava/lang/String; = "com.motorola.intent.action.OVERRIDE_IP_PROTOCOL"

.field private static final EVENT_MOTO_RE_REGISTER_TIMEOUT:I = 0x420cc

.field private static final EVENT_OVERRIDE_IP_PROTOCOL_TIMEOUT:I = 0x420cd

.field private static final EVENT_QOS_PARAMETERS_CHANGED:I = 0x420ca

.field private static final EVENT_QTI_DISCONNECT_DEFAULT_PDN:I = 0x420c9

.field private static final EVENT_QTI_PHONE_READY:I = 0x420cb

.field private static final EVENT_RECONNECT_QTI_EXT_TELEPHONY_SERVICE:I = 0x420c8

.field private static final INVALID_CID:I = -0x1

.field private static final INVALID_INDEX:I = -0x1

.field private static final OVERRIDE_IP_PROTOCOL_TIMEOUT:I = 0x3a98

.field private static final RECONNECT_EXT_TELEPHONY_SERVICE_DELAY_MILLISECOND:I = 0x7d0

.field private static final RE_REGISTER_TIMEOUT:I = 0x3a98


# instance fields
.field protected mCiwlanContentObserver:Landroid/database/ContentObserver;

.field private mCiwlanTimer:J

.field private mClient:Lcom/qti/extphone/Client;

.field private mCrossSimCallingUri:Landroid/net/Uri;

.field private mEnabledChangedReason:I

.field private mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

.field protected final mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsCiwlanFeatureEnabledByPlatform:Z

.field private mIsCiwlanFeatureEnabledByUser:Z

.field private mIsDataRoamingEnabled:Z

.field private mIsEssentialRecordsLoaded:Z

.field private mIsInSecureMode:Z

.field private mIsMobileDataEnabled:Z

.field private mPendingDataOff:Z

.field private mPendingRoamingOff:Z

.field private mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

.field private mQtiDataProfileManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

.field protected final mQtiDataServiceManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mServiceCallback:Lcom/qti/extphone/ServiceCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCiwlanTimer(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)J
    .locals 2

    iget-wide v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/Client;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mClient:Lcom/qti/extphone/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCrossSimCallingUri(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCrossSimCallingUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnhancedRadioCapability(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByPlatform:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCiwlanFeatureEnabledByUser(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiDataProfileManager(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataProfileManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCiwlanTimer(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;J)V
    .locals 0

    iput-wide p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Lcom/qti/extphone/Client;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByPlatform:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCiwlanFeatureEnabledByUser(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsInSecureMode(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsInSecureMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misCrossSimCallingEnabledByUser(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCrossSimCallingEnabledByUser()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misPhoneStateIdle(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isPhoneStateIdle()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misReRegisterNetworkType(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isReRegisterNetworkType(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendCrossSimCallingEnabled(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendCrossSimCallingEnabled()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsInSecureMode:Z

    .line 127
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsEssentialRecordsLoaded:Z

    .line 133
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 180
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataServiceManagers:Landroid/util/SparseArray;

    .line 212
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    const-string v1, "QtiDataNetworkController: constructor"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 186
    new-instance v1, Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    invoke-direct {v1}, Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    .line 187
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;

    invoke-direct {v1, p0, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$PhoneExtPhoneEventObserver;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    .line 188
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 189
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v1, v2}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 190
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    .line 192
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataProfileManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    .line 194
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 195
    .local v3, "transport":I
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataServiceManagers:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataServiceManagers:Landroid/util/SparseArray;

    .line 196
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    .line 195
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    .end local v3    # "transport":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataServiceManagers:Landroid/util/SparseArray;

    .line 200
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    .line 201
    const v1, 0x420ca

    invoke-virtual {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->registerForQosParametersChanged(Landroid/os/Handler;I)V

    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.motorola.intent.action.DATA_STALL_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v1, "com.motorola.intent.action.OVERRIDE_IP_PROTOCOL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataNetworkList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/data/DataConfigManager;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataNetworkList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 84
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private getDefaultDataPhone()Lcom/android/internal/telephony/Phone;
    .locals 8

    .line 615
    const/4 v0, -0x1

    .line 616
    .local v0, "defaultDataPhoneId":I
    const/4 v1, 0x0

    .line 617
    .local v1, "defaultDataPhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    .line 618
    .local v2, "isDataEnableOnDds":Z
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v3

    .line 620
    .local v3, "subMgrService":Lcom/android/internal/telephony/subscription/SubscriptionManagerService;
    invoke-virtual {v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getDefaultDataSubId()I

    move-result v4

    .line 621
    .local v4, "defaultDataSubId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 622
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getPhoneId(I)I

    move-result v0

    .line 625
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 627
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 630
    goto :goto_0

    .line 628
    :catch_0
    move-exception v5

    .line 629
    .local v5, "ex":Ljava/lang/IllegalStateException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultDataPhone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 633
    .end local v5    # "ex":Ljava/lang/IllegalStateException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method private getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;
    .locals 3

    .line 509
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 510
    return-object v1

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsManager;

    .line 513
    .local v0, "imsManager":Landroid/telephony/ims/ImsManager;
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getNonDdsPhoneId()I
    .locals 4

    .line 709
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 710
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 711
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget v2, v1, v2

    .line 713
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNonDdsPhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 715
    return v0

    .line 709
    .end local v1    # "subIds":[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 718
    .end local v0    # "phoneId":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getPhoneCount()I
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 802
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 803
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    return v1
.end method

.method private handleDdsRoamingStateChangesIfRequired()V
    .locals 4

    .line 691
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    .line 692
    .local v0, "oldRoamingState":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 693
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    .line 695
    .local v1, "newRoamingState":Z
    if-eq v0, v1, :cond_0

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DDS roaming state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 697
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getNonDdsPhoneId()I

    move-result v2

    const-string v3, "DDS_ROAMING_STATE_CHANGED"

    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v0    # "oldRoamingState":Z
    .end local v1    # "newRoamingState":Z
    :cond_0
    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while handling DDs roaming state changes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 703
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method private isCrossSimCallingEnabledByUser()Z
    .locals 5

    .line 472
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 473
    return v1

    .line 476
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 477
    .local v0, "imsMmTelMgr":Landroid/telephony/ims/ImsMmTelManager;
    if-nez v0, :cond_1

    .line 478
    return v1

    .line 482
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isCrossSimCallingEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 483
    :catch_0
    move-exception v2

    .line 484
    .local v2, "exception":Landroid/telephony/ims/ImsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get cross SIM calling configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 486
    .end local v2    # "exception":Landroid/telephony/ims/ImsException;
    return v1
.end method

.method private isCurrentSubDds(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 794
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 795
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 797
    :cond_1
    return v1
.end method

.method private isDataEnabledOnDds()Z
    .locals 3

    .line 640
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getDefaultDataPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 641
    .local v0, "defaultDataPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    .line 643
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabledForReason(I)Z

    move-result v1

    .line 642
    return v1

    .line 646
    :cond_0
    return v1
.end method

.method private isDdsRoamingCriteriaSatisfiedForTempSwitch()Z
    .locals 5

    .line 657
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getDefaultDataPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 658
    .local v0, "defaultDataPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 659
    return v1

    .line 664
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-nez v2, :cond_1

    .line 665
    const/4 v1, 0x1

    return v1

    .line 669
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 670
    :catch_0
    move-exception v2

    .line 671
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while checking DDS roaming state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 672
    return v1
.end method

.method private isEssentialRecordsLoaded()Z
    .locals 2

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDNC isEssentialRecordsLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsEssentialRecordsLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 832
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsEssentialRecordsLoaded:Z

    return v0
.end method

.method private isPhoneStateIdle()Z
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 313
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 314
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 315
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_0

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPhoneStateIdle false: Voice call active on phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 317
    const/4 v3, 0x0

    return v3

    .line 313
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isReRegisterNetworkType(I)Z
    .locals 3
    .param p1, "dataNetworkType"    # I

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "ret":Z
    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    .line 296
    const-string v1, "ro.product.is_prc"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 297
    const-string v1, "ReRegister for NR for NA/ROW products"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    .line 303
    :cond_1
    const-string v1, "ReRegister for LTE/NSA"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x1

    .line 307
    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic lambda$onQosParametersChanged$0(ILcom/android/internal/telephony/data/DataNetwork;)Z
    .locals 1
    .param p0, "cid"    # I
    .param p1, "dataNetwork"    # Lcom/android/internal/telephony/data/DataNetwork;

    .line 415
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onQosParametersChanged(ILcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "qosParams"    # Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQosParametersChanged, cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qosParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 407
    if-nez p2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 409
    if-nez p2, :cond_1

    .line 410
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataNetworkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 415
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 416
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 417
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataNetwork;

    .line 419
    .local v0, "dataNetworkForReceivedCid":Lcom/android/internal/telephony/data/DataNetwork;
    if-eqz v0, :cond_4

    .line 420
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 427
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQosParametersChanged: dataNetworkForReceivedCid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_3

    .line 432
    const-string v1, "onQosParametersChanged: associated DataNetwork not for IMS, ignore"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 433
    return-void

    .line 437
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataServiceManagers:Landroid/util/SparseArray;

    .line 438
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    .line 439
    invoke-virtual {v1, p1, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->addToQosParamsMap(ILcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;)V

    .line 442
    invoke-virtual {p2}, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;->getQosBearerSessions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->updateQosBearerSessions(Ljava/util/List;)V

    .line 443
    return-void

    .line 423
    :cond_4
    :goto_1
    const-string v1, "onQosParametersChanged: no associated DataNetwork yet, ignore"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method private registerCiwlanContentObserverAndStartTimer()V
    .locals 4

    .line 518
    sget-object v0, Landroid/telephony/SubscriptionManager;->CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 520
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCrossSimCallingUri:Landroid/net/Uri;

    .line 521
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$3;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanContentObserver:Landroid/database/ContentObserver;

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCrossSimCallingUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 556
    return-void
.end method

.method private resetEssentialRecordsLoadedStateIfRequired(I)V
    .locals 1
    .param p1, "simState"    # I

    .line 851
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 853
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->setEssentialRecordsLoaded(Z)V

    .line 855
    :cond_0
    return-void
.end method

.method private sendCrossSimCallingEnabled()V
    .locals 4

    .line 490
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    return-void

    .line 494
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 495
    .local v0, "imsMmTelMgr":Landroid/telephony/ims/ImsMmTelManager;
    if-nez v0, :cond_1

    .line 496
    return-void

    .line 498
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCrossSimCallingEnabledByUser()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCrossSimCallingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 501
    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager;->setCrossSimCallingEnabled(Z)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    goto :goto_0

    .line 502
    :catch_0
    move-exception v1

    .line 503
    .local v1, "exception":Landroid/telephony/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to send cross SIM calling configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 506
    .end local v1    # "exception":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method

.method private unregisterCiwlanContentObserver()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanContentObserver:Landroid/database/ContentObserver;

    .line 561
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 563
    :cond_0
    return-void
.end method


# virtual methods
.method evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 732
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    return-void

    .line 739
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    nop

    .line 745
    if-nez v0, :cond_1

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluateAndSendDataDuringVoiceCallInfo, phone null for phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 747
    return-void

    .line 750
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 751
    const-string v1, "evaluateAndSendDataDuringVoiceCallInfo, sub id is invalid"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 752
    return-void

    .line 756
    :cond_2
    const/4 v1, 0x0

    .line 758
    .local v1, "isDataAllowedDuringCall":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getNonDdsPhoneId()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 763
    nop

    .line 764
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    .line 765
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 767
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isDataEnabledOnDds()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 768
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isDdsRoamingCriteriaSatisfiedForTempSwitch()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDataAllowedDuringCall: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", data during calls switch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 772
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isMobileDataPolicyEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isDataEnabledOnDds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 774
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isDataEnabledOnDds()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isDdsRoamingSatisfied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 775
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isDdsRoamingCriteriaSatisfiedForTempSwitch()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 770
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 780
    :cond_4
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    if-eqz v2, :cond_5

    .line 781
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmartTempDdsSwitchSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evaluated data during voice call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 784
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v2, p1, v1, v3}, Lcom/qti/extphone/ExtTelephonyManager;->sendUserPreferenceForDataDuringVoiceCall(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    .line 788
    :cond_5
    return-void

    .line 740
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "isDataAllowedDuringCall":Z
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluateAndSendDataDuringVoiceCallInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public getEnhancedRadioCapabilityResponse()Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg.what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 341
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 388
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 380
    :pswitch_1
    const-string v0, "Override ip protocol TIMEOUT"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isOverrideIpProtocolOngoing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->setOverrideIpProtocolOngoing(Z)V

    goto :goto_0

    .line 371
    :pswitch_2
    const-string v0, "ForceReRegister TIMEOUT"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isForceReRegisterOngoing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->setForceReRegisterOngoing(Z)V

    goto :goto_0

    .line 359
    :pswitch_3
    const-string v0, "EVENT_QOS_PARAMETERS_CHANGED"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 360
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 361
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 363
    .local v1, "resultPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;>;"
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 364
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->onQosParametersChanged(ILcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;)V

    goto :goto_0

    .line 366
    :cond_0
    const-string v2, "EVENT_QOS_PARAMETERS_CHANGED: exception, ignore."

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 368
    goto :goto_0

    .line 347
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "resultPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/qualcomm/qti/internal/telephony/data/FrameworkQosParameters;>;"
    :pswitch_4
    const-string v0, "EVENT_QTI_DISCONNECT_DEFAULT_PDN"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 348
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingDataOff:Z

    if-eqz v0, :cond_1

    .line 349
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingDataOff:Z

    .line 350
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsMobileDataEnabled:Z

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnabledChangedReason:I

    invoke-super {p0, v0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataEnabledChanged(ZI)V

    .line 353
    :cond_1
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingRoamingOff:Z

    if-eqz v0, :cond_2

    .line 354
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingRoamingOff:Z

    .line 355
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsDataRoamingEnabled:Z

    invoke-super {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataRoamingEnabledChanged(Z)V

    goto :goto_0

    .line 343
    :pswitch_5
    const-string v0, "EVENT_RECONNECT_QTI_EXT_TELEPHONY_SERVICE"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 345
    nop

    .line 390
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x420c8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected isPdpRejectRetryOngoing(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 5
    .param p1, "networkRequest"    # Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 980
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 981
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result v1

    .line 980
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v0

    .line 982
    .local v0, "transport":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 983
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getDataNetworkType(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;IZ)Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 985
    .local v1, "dataProfile":Landroid/telephony/data/DataProfile;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    check-cast v2, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    .line 987
    .local v2, "qtiDataRetryManager":Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->isPdpRejectRetryOngoing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 988
    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->isDataProfileOfTypeDefault(Landroid/telephony/data/DataProfile;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 989
    const-string v4, "isPdpRejectRetryOngoing: true"

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 990
    return v3

    .line 992
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method protected onDataDuringVoiceCallChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataDuringVoiceCallChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "DATA_DURING_VOICE_CALL_CHANGED"

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V

    .line 450
    return-void
.end method

.method protected onDataEnabledChanged(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDNC onDataEnabledChanged: enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCurrentSubDds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getNonDdsPhoneId()I

    move-result v0

    const-string v1, "DDS_DATA_ENABLED_CHANGED"

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V

    .line 577
    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 578
    const v0, 0x420c9

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 579
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsMobileDataEnabled:Z

    .line 580
    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnabledChangedReason:I

    .line 581
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 584
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingDataOff:Z

    goto :goto_0

    .line 586
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataEnabledChanged(ZI)V

    .line 588
    :goto_0
    return-void
.end method

.method public onDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 2
    .param p1, "dataNetwork"    # Lcom/android/internal/telephony/data/DataNetwork;

    .line 899
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->isPdpRejectConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    const-string v0, "QtiDNC onDataNetworkConnected: Reset data reject count .."

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataRetryManager;->handlePdpRejectCauseSuccess()V

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isForceReRegisterOngoing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 906
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    const-string v0, "Default data setup completely, ForceReRegister done"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->setForceReRegisterOngoing(Z)V

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isOverrideIpProtocolOngoing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 915
    const-string v0, "Default data setup completely, Override ip protocol done"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->setOverrideIpProtocolOngoing(Z)V

    .line 919
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 920
    return-void
.end method

.method protected onDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetwork;II)V
    .locals 6
    .param p1, "dataNetwork"    # Lcom/android/internal/telephony/data/DataNetwork;
    .param p2, "cause"    # I
    .param p3, "tearDownReason"    # I

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDNC onDataNetworkDisconnected: cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tearDownReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataServiceManagers:Landroid/util/SparseArray;

    .line 947
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;

    .line 948
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataServiceManager;->removeFromQosParamsMap(I)V

    .line 949
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkDisconnected(Lcom/android/internal/telephony/data/DataNetwork;II)V

    .line 952
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getRetrySetupAfterDisconnectMillis()J

    move-result-wide v0

    .line 953
    .local v0, "retryMisllis":J
    nop

    .line 954
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getDataNetworkType(I)I

    move-result v2

    .line 953
    invoke-static {v2}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v2

    .line 955
    .local v2, "dataRat":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataNetworkDisconnected retryMisllis="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 957
    invoke-static {v2}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x1388

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 958
    const-wide/16 v0, 0x1388

    .line 959
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->RETRY_AFTER_DISCONNECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->removeMessages(ILjava/lang/Object;)V

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDataNetworkDisconnected CDMA delay: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 962
    sget-object v3, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->RETRY_AFTER_DISCONNECTED:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v4, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 968
    :cond_0
    return-void
.end method

.method protected onDataNetworkSetupFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .locals 1
    .param p1, "dataNetwork"    # Lcom/android/internal/telephony/data/DataNetwork;
    .param p2, "requestList"    # Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;
    .param p3, "cause"    # I
    .param p4, "retryDelayMillis"    # J

    .line 927
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/QtiGsmCdmaPhone;->isOverrideIpProtocolOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    const-string v0, "onDataNetworkSetupFailed, reset override ip protocol to default"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataProfileManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataProfileManager;->resetOverrideIpProtocol()V

    .line 932
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkSetupFailed(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    .line 933
    return-void
.end method

.method protected onDataRoamingEnabledChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDNC onDataRoamingEnabledChanged: enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCurrentSubDds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getNonDdsPhoneId()I

    move-result v0

    const-string v1, "DDS_DATA_ROAMING_ENABLED_CHANGED"

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V

    .line 602
    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 603
    const v0, 0x420c9

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 604
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsDataRoamingEnabled:Z

    .line 605
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 608
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingRoamingOff:Z

    goto :goto_0

    .line 610
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataRoamingEnabledChanged(Z)V

    .line 612
    :goto_0
    return-void
.end method

.method protected onServiceStateChanged()V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCurrentSubDds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->handleDdsRoamingStateChangesIfRequired()V

    .line 682
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onServiceStateChanged()V

    .line 683
    return-void
.end method

.method protected onSimStateChanged(I)V
    .locals 0
    .param p1, "simState"    # I

    .line 842
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->resetEssentialRecordsLoadedStateIfRequired(I)V

    .line 843
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onSimStateChanged(I)V

    .line 844
    return-void
.end method

.method protected onSubscriptionChanged()V
    .locals 2

    .line 455
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mSubId:I

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 456
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->unregisterCiwlanContentObserver()V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mClient:Lcom/qti/extphone/Client;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByPlatform:Z

    if-eqz v0, :cond_1

    .line 462
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCrossSimCallingEnabledByUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    .line 463
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendCrossSimCallingEnabled()V

    .line 465
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->registerCiwlanContentObserverAndStartTimer()V

    .line 468
    :cond_2
    invoke-super {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onSubscriptionChanged()V

    .line 469
    return-void
.end method

.method public removeOverrideIpProtocolTimeoutMsg()V
    .locals 1

    .line 330
    const v0, 0x420cd

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->removeMessages(I)V

    .line 331
    return-void
.end method

.method public removeReRegisterTimeoutMsg()V
    .locals 1

    .line 324
    const v0, 0x420cc

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->removeMessages(I)V

    .line 325
    return-void
.end method

.method public setEssentialRecordsLoaded(Z)V
    .locals 2
    .param p1, "isLoaded"    # Z

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiDNC setEssentialRecordsLoaded to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 824
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsEssentialRecordsLoaded:Z

    .line 825
    return-void
.end method
