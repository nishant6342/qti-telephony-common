.class public final Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;
.super Lcom/android/internal/telephony/dataconnection/DcTracker;
.source "QtiDcTracker.java"


# static fields
.field private static final APN_NAME:I = 0x3

.field private static final APN_TYPE:I = 0x1

.field private static final DEVICE_CAPABILITY:I = 0x2

.field private static final EVENT_CARRIER_CONFIG_LOADED_ON_ESSENTIAL_RECORDS:I = 0x420c9

.field private static final EVENT_QTI_DISCONNECT_DEFAULT_PDN:I = 0x420cb

.field private static final EVENT_QTI_SUBSCRIPTION_CHANGED:I = 0x420ca

.field private static final EVENT_RECONNECT_QTI_EXT_TELEPHONY_SERVICE:I = 0x420c8

.field private static final GID:I = 0x0

.field private static final KEY_MULTI_APN_ARRAY_FOR_SAME_GID_ENTRY_LENGTH:I = 0x4

.field public static final MAX_PDP_REJECT_COUNT:I = 0x3

.field private static final MAX_RETRY_ATTEMPTS:I = 0x3

.field private static final RECONNECT_EXT_TELEPHONY_SERVICE_DELAY_MILLISECOND:I = 0x7d0

.field private static final RETRY_DELAY:I = 0x1f4

.field protected static mDataRejectDialog:Landroid/app/AlertDialog;

.field private static mGetEnhancedRadioCapabilityRetryCount:I


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field protected mCallback:Lcom/qti/extphone/IExtPhoneCallback;

.field private mCiwlanTimer:J

.field private mClient:Lcom/qti/extphone/Client;

.field private mCrossSimCallingUri:Landroid/net/Uri;

.field private mDataRejectCount:I

.field private mDataRejectReason:Ljava/lang/String;

.field private mEnabledChangedReason:I

.field private mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mExtTelephonyServiceConnected:Z

.field private mIsCiwlanFeatureEnabledByPlatform:Z

.field private mIsCiwlanFeatureEnabledByUser:Z

.field private mIsEssentialRecordsLoaded:Z

.field private mIsMobileDataEnabled:Z

.field private mMessageType:I

.field private mPdpRejectCauseCode:I

.field private mPendingDataOff:Z

.field private mPendingRoamingOff:Z

.field private mQtiDataResetEventTracker:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

.field private mResetEventListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;

.field private mResolver:Landroid/content/ContentResolver;

.field private mServiceCallback:Lcom/qti/extphone/ServiceCallback;

.field private mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mTransportType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCiwlanTimer(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)J
    .locals 2

    iget-wide v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mCiwlanTimer:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmClient(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/qti/extphone/Client;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mClient:Lcom/qti/extphone/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCrossSimCallingUri(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mCrossSimCallingUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataRejectCount(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtTelephonyManager(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsCiwlanFeatureEnabledByPlatform:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCiwlanFeatureEnabledByUser(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsCiwlanFeatureEnabledByUser:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQtiDataResetEventTracker(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mQtiDataResetEventTracker:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCiwlanTimer(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;J)V
    .locals 0

    iput-wide p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mCiwlanTimer:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClient(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Lcom/qti/extphone/Client;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmExtTelephonyServiceConnected(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mExtTelephonyServiceConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCiwlanFeatureEnabledByPlatform(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsCiwlanFeatureEnabledByPlatform:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCiwlanFeatureEnabledByUser(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsCiwlanFeatureEnabledByUser:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misCrossSimCallingEnabledByUser(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isCrossSimCallingEnabledByUser()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetDataRejectCounter(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->resetDataRejectCounter()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendCrossSimCallingEnabled(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->sendCrossSimCallingEnabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendDataDuringVoiceCallInfo(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->sendDataDuringVoiceCallInfo(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 93
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mGetEnhancedRadioCapabilityRetryCount:I

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;I)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "transportType"    # I

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/Phone;I)V

    .line 75
    const-string v0, "QtiDCT"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mTransportType:I

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mQtiDataResetEventTracker:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 104
    const-string v1, "NONE"

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectReason:Ljava/lang/String;

    .line 106
    const/4 v1, 0x0

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectCount:I

    .line 108
    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPdpRejectCauseCode:I

    .line 110
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsEssentialRecordsLoaded:Z

    .line 115
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mExtTelephonyServiceConnected:Z

    .line 116
    const/4 v2, -0x1

    iput v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mSubId:I

    .line 117
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mCiwlanTimer:J

    .line 119
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsCiwlanFeatureEnabledByPlatform:Z

    .line 120
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsCiwlanFeatureEnabledByUser:Z

    .line 121
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsMobileDataEnabled:Z

    .line 124
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPendingDataOff:Z

    .line 125
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPendingRoamingOff:Z

    .line 153
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$1;-><init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 186
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$2;-><init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    .line 474
    new-instance v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$4;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$4;-><init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)V

    iput-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 893
    new-instance v2, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$5;

    invoke-direct {v2, p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$5;-><init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)V

    iput-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mResetEventListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;

    .line 138
    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mTransportType:I

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 140
    if-ne p2, v0, :cond_0

    const-string v0, "-C"

    goto :goto_0

    :cond_0
    const-string v0, "-I"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->initQtiRadioCapability()V

    .line 144
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 145
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v2}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 147
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 148
    nop

    .line 149
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->getHandlerExecutor()Lcom/android/internal/telephony/util/HandlerExecutor;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Lcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 74
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->cancelReconnect(Lcom/android/internal/telephony/dataconnection/ApnContext;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;

    .line 74
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private displayPopup(Ljava/lang/String;)V
    .locals 5
    .param p1, "pdpRejectCause"    # Ljava/lang/String;

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayPopup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 925
    const v1, 0x104028d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "title":Ljava/lang/String;
    const/4 v1, 0x0

    .line 927
    .local v1, "message":Ljava/lang/String;
    const-string v2, "USER_AUTHENTICATION"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 928
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040290

    .line 929
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 930
    :cond_0
    const-string v2, "SERVICE_OPTION_NOT_SUBSCRIBED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 931
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104028f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 933
    :cond_1
    const-string v2, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 934
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104028e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 937
    :cond_2
    :goto_0
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_4

    .line 938
    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 939
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 940
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 941
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectDialog:Landroid/app/AlertDialog;

    .line 943
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 944
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 945
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 946
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 948
    sget-object v2, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 949
    return-void
.end method

.method private getApnBasedOnRadioCapability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "deviceCapability"    # Ljava/lang/String;

    .line 628
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 629
    const-string v1, "getApnBasedOnRadioCapability: deviceCapability is null"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->loge(Ljava/lang/String;)V

    .line 630
    return-object v0

    .line 633
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 634
    const-string v2, "multi_apn_array_for_same_gid"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "apnConfig":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 636
    .local v5, "apnEntry":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 637
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    if-eqz p3, :cond_1

    .line 639
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

    .line 640
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 641
    const/4 v0, 0x3

    aget-object v0, v6, v0

    return-object v0

    .line 635
    .end local v5    # "apnEntry":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 645
    :cond_2
    return-object v0
.end method

.method private getCiwlanUiInfoAndStartTimer()V
    .locals 4

    .line 422
    sget-object v0, Landroid/telephony/SubscriptionManager;->CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mSubId:I

    .line 424
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 423
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mCrossSimCallingUri:Landroid/net/Uri;

    .line 425
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mCrossSimCallingUri:Landroid/net/Uri;

    new-instance v2, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker$3;-><init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;Landroid/os/Handler;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 459
    return-void
.end method

.method private getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;
    .locals 3

    .line 521
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 522
    return-object v1

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsManager;

    .line 525
    .local v0, "imsManager":Landroid/telephony/ims/ImsManager;
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getPhoneCount()I
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 470
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 471
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    return v1
.end method

.method private handlePdpRejectCauseFailure(Ljava/lang/String;)Z
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 857
    const/4 v0, 0x0

    .line 859
    .local v0, "handleFailure":Z
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getDataRat()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isWCDMA(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePdpRejectCauseFailure: reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDataRejectReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 866
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectReason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 867
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->resetDataRejectCounter()V

    .line 875
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isMatchingPdpRejectCause(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 876
    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectCount:I

    .line 877
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectReason:Ljava/lang/String;

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePdpRejectCauseFailure: DataRejectCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 880
    const/4 v0, 0x1

    goto :goto_0

    .line 883
    :cond_1
    const-string v1, "isPdpRejectCauseFailureHandled: DataConnection not on wcdma"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 884
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->resetDataRejectCounter()V

    .line 886
    :cond_2
    :goto_0
    return v0
.end method

.method private handlePdpRejectCauseSuccess()V
    .locals 1

    .line 843
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectCount:I

    if-lez v0, :cond_0

    .line 844
    const-string v0, "handlePdpRejectCauseSuccess: reset reject count"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 845
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->resetDataRejectCounter()V

    .line 847
    :cond_0
    return-void
.end method

.method private initQtiRadioCapability()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initQtiRadioCapability"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    invoke-direct {v0}, Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    .line 131
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x4203b

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getEnhancedRadioCapability(Landroid/os/Message;)V

    .line 133
    return-void
.end method

.method private isApnFilteringRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .line 602
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 603
    const-string v1, "multi_apn_array_for_same_gid"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "apnConfig":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 605
    .local v4, "apnEntry":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 606
    .local v5, "split":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 607
    aget-object v6, v5, v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 608
    return v6

    .line 604
    .end local v4    # "apnEntry":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 613
    :cond_1
    return v2
.end method

.method private isCrossSimCallingEnabledByUser()Z
    .locals 5

    .line 503
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 504
    return v1

    .line 507
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 508
    .local v0, "imsMmTelMgr":Landroid/telephony/ims/ImsMmTelManager;
    if-nez v0, :cond_1

    .line 509
    return v1

    .line 513
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isCrossSimCallingEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 514
    :catch_0
    move-exception v2

    .line 515
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

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 517
    .end local v2    # "exception":Landroid/telephony/ims/ImsException;
    return v1
.end method

.method private isCurrentSubDds(Lcom/android/internal/telephony/Phone;)Z
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 462
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 463
    return v0

    .line 465
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isDataEnabledOnDds()Z
    .locals 6

    .line 249
    const/4 v0, -0x1

    .line 250
    .local v0, "defaultDataPhoneId":I
    const/4 v1, 0x0

    .line 251
    .local v1, "defaultDataPhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    .line 252
    .local v2, "isDataEnableOnDds":Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 254
    .local v3, "subscriptionController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v4

    .line 255
    .local v4, "defaultDataSubId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 256
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 259
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 263
    :cond_1
    if-eqz v1, :cond_2

    .line 264
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v2

    .line 267
    :cond_2
    return v2
.end method

.method private isEssentialRecordsLoaded()Z
    .locals 2

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEssentialRecordsLoaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsEssentialRecordsLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 836
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsEssentialRecordsLoaded:Z

    return v0
.end method

.method private isMatchingPdpRejectCause(Ljava/lang/String;)Z
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 955
    const-string v0, "USER_AUTHENTICATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 956
    const-string v0, "SERVICE_OPTION_NOT_SUBSCRIBED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 957
    const-string v0, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 955
    :goto_1
    return v0
.end method

.method private isWCDMA(I)Z
    .locals 1
    .param p1, "radioTechnology"    # I

    .line 964
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private resetDataRejectCounter()V
    .locals 1

    .line 975
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectCount:I

    .line 976
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectReason:Ljava/lang/String;

    .line 977
    return-void
.end method

.method private resetEssentialRecordsLoadedStateIfRequired(I)V
    .locals 1
    .param p1, "simState"    # I

    .line 792
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 802
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setEssentialRecordsLoaded(Z)V

    .line 805
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private sendCrossSimCallingEnabled()V
    .locals 4

    .line 485
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    return-void

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 490
    .local v0, "imsMmTelMgr":Landroid/telephony/ims/ImsMmTelManager;
    if-nez v0, :cond_1

    .line 491
    return-void

    .line 493
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCrossSimCallingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsCiwlanFeatureEnabledByUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 495
    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsCiwlanFeatureEnabledByUser:Z

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager;->setCrossSimCallingEnabled(Z)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    goto :goto_0

    .line 496
    :catch_0
    move-exception v1

    .line 497
    .local v1, "exception":Landroid/telephony/ims/ImsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to send cross SIM calling configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsCiwlanFeatureEnabledByUser:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 500
    .end local v1    # "exception":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method

.method private sendDataDuringVoiceCallInfo(ZI)V
    .locals 2
    .param p1, "dataDuringCall"    # Z
    .param p2, "phoneId"    # I

    .line 271
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 276
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isCurrentSubDds(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    const/4 p1, 0x0

    goto :goto_0

    .line 279
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isDataEnabledOnDds()Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    const/4 p1, 0x0

    .line 283
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmartTempDdsSwitchSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data during voice call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v0, p2, p1, v1}, Lcom/qti/extphone/ExtTelephonyManager;->sendUserPreferenceForDataDuringVoiceCall(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    .line 289
    :cond_3
    return-void

    .line 272
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 2
    .param p1, "detach"    # Z
    .param p2, "releaseType"    # I
    .param p3, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 664
    if-nez p3, :cond_0

    .line 665
    const-string v0, "cleanUpConnectionInternal: apn context is null"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 666
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectCount:I

    if-lez v0, :cond_1

    .line 671
    invoke-virtual {p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    const-string v0, "cleanUpConnectionInternal: data retry in progress, skip cleanup"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->cleanUpConnectionInternal(ZILcom/android/internal/telephony/dataconnection/ApnContext;)V

    .line 676
    :goto_0
    return-void
.end method

.method public enableApn(IILandroid/os/Message;)V
    .locals 2
    .param p1, "apnType"    # I
    .param p2, "requestType"    # I
    .param p3, "onHandoverCompleteMsg"    # Landroid/os/Message;

    .line 711
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectCount:I

    if-lez v0, :cond_0

    .line 714
    invoke-static {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    const-string v0, "enableApn: data retry in progress, skip processing"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->enableApn(IILandroid/os/Message;)V

    .line 720
    :goto_0
    return-void
.end method

.method protected filterApnSettingsWithRadioCapability()V
    .locals 6

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 571
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/ApnSetting;

    .line 572
    .local v1, "apn":Landroid/telephony/data/ApnSetting;
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "apnType":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->hasMvnoParams()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 574
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isApnFilteringRequired(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 575
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    .line 576
    invoke-virtual {v4}, Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;->getEnhancedRadioCapability()Ljava/lang/String;

    move-result-object v4

    .line 575
    invoke-direct {p0, v3, v2, v4}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getApnBasedOnRadioCapability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, "apnName":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 578
    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterApnSettingsWithRadioCapability: removed not supported apn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 581
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 583
    .end local v3    # "apnName":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 584
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 586
    .end local v1    # "apn":Landroid/telephony/data/ApnSetting;
    .end local v2    # "apnType":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 590
    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 321
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 416
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 400
    :sswitch_0
    const-string v0, "EVENT_QTI_DISCONNECT_DEFAULT_PDN"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 401
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPendingDataOff:Z

    if-eqz v0, :cond_0

    .line 402
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPendingDataOff:Z

    .line 406
    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPendingRoamingOff:Z

    if-eqz v0, :cond_a

    .line 407
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPendingRoamingOff:Z

    goto/16 :goto_3

    .line 382
    :sswitch_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    return-void

    .line 385
    :cond_1
    const-string v0, "EVENT_QTI_SUBSCRIPTION_CHANGED"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 386
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mSubId:I

    .line 387
    .local v0, "oldSubId":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mSubId:I

    .line 388
    if-eq v0, v1, :cond_a

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 389
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mExtTelephonyServiceConnected:Z

    if-eqz v1, :cond_2

    .line 390
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsCiwlanFeatureEnabledByPlatform:Z

    if-eqz v1, :cond_2

    .line 392
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isCrossSimCallingEnabledByUser()Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsCiwlanFeatureEnabledByUser:Z

    .line 393
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->sendCrossSimCallingEnabled()V

    .line 396
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getCiwlanUiInfoAndStartTimer()V

    goto/16 :goto_3

    .line 412
    .end local v0    # "oldSubId":I
    :sswitch_2
    const-string v0, "EVENT_CARRIER_CONFIG_LOADED_ON_ESSENTIAL_RECORDS"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->onCarrierConfigChanged()V

    .line 414
    goto/16 :goto_3

    .line 378
    :sswitch_3
    const-string v0, "EVENT_RECONNECT_QTI_EXT_TELEPHONY_SERVICE"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 380
    goto/16 :goto_3

    .line 339
    :sswitch_4
    const-string v0, "EVENT_GET_ENHANCED_RADIO_CAPABILITY_RETRY"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x4203b

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getEnhancedRadioCapability(Landroid/os/Message;)V

    .line 342
    goto/16 :goto_3

    .line 323
    :sswitch_5
    const-string v0, "EVENT_GET_ENHANCED_RADIO_CAPABILITY"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 324
    sget v0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mGetEnhancedRadioCapabilityRetryCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 325
    goto/16 :goto_3

    .line 327
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 328
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_4

    goto :goto_0

    .line 335
    :cond_4
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 336
    .local v1, "raf":I
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    invoke-virtual {v2, v1}, Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;->updateEnhancedRadioCapability(I)V

    .line 337
    goto/16 :goto_3

    .line 329
    .end local v1    # "raf":I
    :cond_5
    :goto_0
    sget v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mGetEnhancedRadioCapabilityRetryCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mGetEnhancedRadioCapabilityRetryCount:I

    .line 330
    const v1, 0x4203c

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 332
    .local v1, "message":Landroid/os/Message;
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 333
    goto/16 :goto_3

    .line 344
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "message":Landroid/os/Message;
    :sswitch_6
    const-string v0, "EVENT_DATA_ENABLED_OVERRIDE_RULES_CHANGED"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 346
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 347
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataAllowedInVoiceCall()Z

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 348
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 347
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->sendDataDuringVoiceCallInfo(ZI)V

    .line 350
    :cond_6
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleMessage(Landroid/os/Message;)V

    .line 351
    goto :goto_3

    .line 353
    :sswitch_7
    const-string v0, "EVENT_DATA_ENABLED_CHANGED"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isUsingNewDataStack()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 355
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 356
    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isCurrentSubDds(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 357
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataEnabledSettings:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataEnabled()Z

    move-result v0

    .line 363
    .local v0, "isDataEnabledOnDds":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 364
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 365
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_8

    invoke-direct {p0, v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isCurrentSubDds(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 366
    if-nez v0, :cond_7

    .line 367
    invoke-direct {p0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->sendDataDuringVoiceCallInfo(ZI)V

    goto :goto_2

    .line 369
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v4

    .line 370
    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isDataAllowedInVoiceCall()Z

    move-result v4

    .line 369
    invoke-direct {p0, v4, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->sendDataDuringVoiceCallInfo(ZI)V

    .line 363
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 375
    .end local v0    # "isDataEnabledOnDds":Z
    .end local v2    # "i":I
    :cond_9
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->handleMessage(Landroid/os/Message;)V

    .line 376
    nop

    .line 418
    :cond_a
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4202e -> :sswitch_7
        0x42033 -> :sswitch_6
        0x4203b -> :sswitch_5
        0x4203c -> :sswitch_4
        0x420c8 -> :sswitch_3
        0x420c9 -> :sswitch_2
        0x420ca -> :sswitch_1
        0x420cb -> :sswitch_0
    .end sparse-switch
.end method

.method protected isSimCardPresentAndEssentialRecordsLoaded()Z
    .locals 4

    .line 808
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCardState()I

    move-result v0

    .line 809
    .local v0, "simCardState":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v1

    .line 810
    .local v1, "simApplicationState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simCardState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 811
    invoke-static {v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->simStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simApplicationState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 813
    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->simStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 810
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 814
    const/16 v2, 0xb

    if-ne v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 816
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isEssentialRecordsLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 814
    :goto_0
    return v2
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void
.end method

.method public onCarrierConfigLoadedForEssentialRecords()V
    .locals 1

    .line 820
    const-string v0, "onCarrierConfigLoadedForEssentialRecords"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 821
    const v0, 0x420c9

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->sendEmptyMessage(I)Z

    .line 822
    return-void
.end method

.method protected onDataSetupComplete(Lcom/android/internal/telephony/dataconnection/ApnContext;ZIII)V
    .locals 3
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .param p4, "requestType"    # I
    .param p5, "handoverFailureMode"    # I

    .line 694
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 696
    .local v0, "isPdpRejectConfigEnabled":Z
    if-eqz p2, :cond_0

    .line 697
    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->handlePdpRejectCauseSuccess()V

    goto :goto_0

    .line 702
    :cond_0
    iput p3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPdpRejectCauseCode:I

    .line 704
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onDataSetupComplete(Lcom/android/internal/telephony/dataconnection/ApnContext;ZIII)V

    .line 705
    return-void
.end method

.method protected onDataSetupCompleteError(Lcom/android/internal/telephony/dataconnection/ApnContext;IZ)V
    .locals 9
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "requestType"    # I
    .param p3, "fallbackOnFailedHandover"    # Z

    .line 725
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mFailFast:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getDelayForNextApn(Z)J

    move-result-wide v0

    .line 726
    .local v0, "delay":J
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110187

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 728
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "default"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 729
    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPdpRejectCauseCode:I

    invoke-static {v2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 731
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    .line 732
    .local v4, "apn":Landroid/telephony/data/ApnSetting;
    if-eqz v4, :cond_0

    .line 733
    const-string v5, "onDataSetupCompleteError: reset permanent failure on apn"

    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v4, v3}, Landroid/telephony/data/ApnSetting;->setPermanentFailed(Z)V

    .line 736
    :cond_0
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isMatchingPdpRejectCause(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 737
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mQtiDataResetEventTracker:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    if-nez v5, :cond_1

    .line 738
    new-instance v5, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mTransportType:I

    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mResetEventListener:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;

    invoke-direct {v5, v6, v7, v8}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;-><init>(ILcom/android/internal/telephony/Phone;Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker$ResetEventListener;)V

    iput-object v5, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mQtiDataResetEventTracker:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    .line 741
    :cond_1
    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectCount:I

    if-nez v5, :cond_2

    .line 742
    iget-object v5, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mQtiDataResetEventTracker:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;

    invoke-virtual {v5}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDataResetEventTracker;->startResetEventTracker()V

    .line 744
    :cond_2
    invoke-direct {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->handlePdpRejectCauseFailure(Ljava/lang/String;)Z

    move-result v5

    .line 746
    .local v5, "isHandled":Z
    const/4 v6, 0x3

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectCount:I

    if-gt v6, v7, :cond_3

    .line 747
    const-string v6, "onDataSetupCompleteError: reached max retry count"

    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 748
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectReason:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->displayPopup(Ljava/lang/String;)V

    .line 749
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 750
    :cond_3
    if-eqz v5, :cond_4

    .line 751
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v0, v6

    .line 753
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDataSetupCompleteError: delay from config: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 755
    .end local v5    # "isHandled":Z
    :cond_4
    :goto_0
    goto :goto_1

    .line 756
    :cond_5
    const-string v5, "onDataSetupCompleteError: reset reject count"

    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 757
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->resetDataRejectCounter()V

    .line 761
    .end local v2    # "reason":Ljava/lang/String;
    .end local v4    # "apn":Landroid/telephony/data/ApnSetting;
    :cond_6
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_7

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v0, v4

    if-eqz v2, :cond_7

    if-nez p3, :cond_7

    .line 763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataSetupCompleteError: APN type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Request type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 764
    invoke-static {p2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->requestTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Retry in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 763
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->startReconnect(JLcom/android/internal/telephony/dataconnection/ApnContext;I)V

    goto :goto_2

    .line 771
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 772
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setDataConnection(Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataSetupCompleteError: Stop retrying APNs. delay="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", requestType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 774
    invoke-static {p2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->requestTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 773
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {p0, v2, v3, p3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->sendHandoverCompleteMessages(IZZ)V

    .line 779
    :goto_2
    return-void
.end method

.method protected onSimStateUpdated(I)V
    .locals 0
    .param p1, "simState"    # I

    .line 783
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->resetEssentialRecordsLoadedStateIfRequired(I)V

    .line 784
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->onSimStateUpdated(I)V

    .line 785
    return-void
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    .line 293
    const-string v0, "onVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mInVoiceCall:Z

    .line 295
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->isAnyDataConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->startNetStatPoll()V

    .line 298
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->startDataStallAlarm(Z)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->resetPollStats()V

    .line 305
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 307
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const-string v1, "2GVoiceCallEnded"

    invoke-virtual {p0, v1, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->setupDataOnAllConnectableApns(Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 309
    :cond_2
    return-void
.end method

.method protected retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 680
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectCount:I

    if-lez v0, :cond_0

    .line 683
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    const-string v0, "retryAfterDisconnected: data retry in progress, skip this retry"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 685
    const/4 v0, 0x0

    return v0

    .line 687
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->retryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v0

    return v0
.end method

.method public setEssentialRecordsLoaded(Z)V
    .locals 2
    .param p1, "isLoaded"    # Z

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEssentialRecordsLoaded to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    .line 831
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mIsEssentialRecordsLoaded:Z

    .line 832
    return-void
.end method

.method protected setupDataOnConnectableApn(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V
    .locals 2
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "retryFailures"    # Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    .line 651
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->mDataRejectCount:I

    if-lez v0, :cond_0

    .line 654
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const-string v0, "setupDataOnConnectableApn: data retry in progress, skip processing"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setupDataOnConnectableApn(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;)V

    .line 659
    :goto_0
    return-void
.end method
