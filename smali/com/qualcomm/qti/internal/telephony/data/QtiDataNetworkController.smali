.class public Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
.super Lcom/android/internal/telephony/data/DataNetworkController;
.source "QtiDataNetworkController.java"


# static fields
.field private static final EVENT_QTI_DISCONNECT_DEFAULT_PDN:I = 0x420c9

.field private static final EVENT_RECONNECT_QTI_EXT_TELEPHONY_SERVICE:I = 0x420c8

.field private static final RECONNECT_EXT_TELEPHONY_SERVICE_DELAY_MILLISECOND:I = 0x7d0


# instance fields
.field protected mCallback:Lcom/qti/extphone/IExtPhoneCallback;

.field private mCiwlanTimer:J

.field private mClient:Lcom/qti/extphone/Client;

.field private mCrossSimCallingUri:Landroid/net/Uri;

.field private mEnabledChangedReason:I

.field private mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mIsCiwlanFeatureEnabledByPlatform:Z

.field private mIsCiwlanFeatureEnabledByUser:Z

.field private mIsDataRoamingEnabled:Z

.field private mIsEssentialRecordsLoaded:Z

.field private mIsInSecureMode:Z

.field private mIsMobileDataEnabled:Z

.field private mPendingDataOff:Z

.field private mPendingRoamingOff:Z

.field private mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

.field private mQtiRadioConfigClient:Lcom/qti/extphone/Client;

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

.method static bridge synthetic -$$Nest$fgetmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/qti/extphone/Client;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiRadioConfigClient:Lcom/qti/extphone/Client;

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

.method static bridge synthetic -$$Nest$fputmQtiRadioConfigClient(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Lcom/qti/extphone/Client;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiRadioConfigClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method static bridge synthetic -$$Nest$misCrossSimCallingEnabledByUser(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCrossSimCallingEnabledByUser()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendCrossSimCallingEnabled(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendCrossSimCallingEnabled()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)V

    .line 78
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsInSecureMode:Z

    .line 88
    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsEssentialRecordsLoaded:Z

    .line 101
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$1;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 148
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$2;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCallback:Lcom/qti/extphone/IExtPhoneCallback;

    .line 94
    const-string v0, "QtiDataNetworkController: constructor"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    invoke-direct {v0}, Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    .line 96
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 97
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 98
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 64
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 64
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 64
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 64
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 64
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 64
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 64
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 64
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 64
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 64
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;

    .line 64
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private getCiwlanUiInfoAndStartTimer()V
    .locals 4

    .line 324
    sget-object v0, Landroid/telephony/SubscriptionManager;->CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 326
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCrossSimCallingUri:Landroid/net/Uri;

    .line 327
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCrossSimCallingUri:Landroid/net/Uri;

    new-instance v2, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController$3;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;Landroid/os/Handler;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 360
    return-void
.end method

.method private getDefaultDataPhone()Lcom/android/internal/telephony/Phone;
    .locals 8

    .line 412
    const/4 v0, -0x1

    .line 413
    .local v0, "defaultDataPhoneId":I
    const/4 v1, 0x0

    .line 414
    .local v1, "defaultDataPhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    .line 415
    .local v2, "isDataEnableOnDds":Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 417
    .local v3, "subscriptionController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v4

    .line 418
    .local v4, "defaultDataSubId":I
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 419
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 422
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 424
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 427
    goto :goto_0

    .line 425
    :catch_0
    move-exception v5

    .line 426
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

    .line 430
    .end local v5    # "ex":Ljava/lang/IllegalStateException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method private getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 316
    return-object v1

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsManager;

    .line 319
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

    .line 506
    const/4 v0, 0x0

    .local v0, "phoneId":I
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 507
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 508
    .local v1, "subIds":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget v2, v1, v2

    .line 510
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 511
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

    .line 512
    return v0

    .line 506
    .end local v1    # "subIds":[I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    .end local v0    # "phoneId":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private getPhoneCount()I
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 596
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 597
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    return v1
.end method

.method private handleDdsRoamingStateChangesIfRequired()V
    .locals 4

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    .line 489
    .local v0, "oldRoamingState":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 490
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    .line 492
    .local v1, "newRoamingState":Z
    if-eq v0, v1, :cond_0

    .line 493
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

    .line 494
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getNonDdsPhoneId()I

    move-result v2

    const-string v3, "DDS_ROAMING_STATE_CHANGED"

    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v0    # "oldRoamingState":Z
    .end local v1    # "newRoamingState":Z
    :cond_0
    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
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

    .line 500
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method

.method private isCrossSimCallingEnabledByUser()Z
    .locals 5

    .line 279
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 280
    return v1

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 284
    .local v0, "imsMmTelMgr":Landroid/telephony/ims/ImsMmTelManager;
    if-nez v0, :cond_1

    .line 285
    return v1

    .line 289
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isCrossSimCallingEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 290
    :catch_0
    move-exception v2

    .line 291
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

    .line 293
    .end local v2    # "exception":Landroid/telephony/ims/ImsException;
    return v1
.end method

.method private isCurrentSubDds(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 588
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 589
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 591
    :cond_1
    return v1
.end method

.method private isDataEnabledOnDds()Z
    .locals 3

    .line 437
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getDefaultDataPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 438
    .local v0, "defaultDataPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    .line 440
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabledForReason(I)Z

    move-result v1

    .line 439
    return v1

    .line 443
    :cond_0
    return v1
.end method

.method private isDdsRoamingCriteriaSatisfiedForTempSwitch()Z
    .locals 5

    .line 454
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getDefaultDataPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 455
    .local v0, "defaultDataPhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 456
    return v1

    .line 461
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    const/4 v1, 0x1

    return v1

    .line 466
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 467
    :catch_0
    move-exception v2

    .line 468
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

    .line 469
    return v1
.end method

.method private isEssentialRecordsLoaded()Z
    .locals 2

    .line 623
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

    .line 624
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsEssentialRecordsLoaded:Z

    return v0
.end method

.method private resetEssentialRecordsLoadedStateIfRequired(I)V
    .locals 1
    .param p1, "simState"    # I

    .line 643
    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 645
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->setEssentialRecordsLoaded(Z)V

    .line 647
    :cond_0
    return-void
.end method

.method private sendCrossSimCallingEnabled()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    return-void

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getImsMmTelManager()Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 302
    .local v0, "imsMmTelMgr":Landroid/telephony/ims/ImsMmTelManager;
    if-nez v0, :cond_1

    .line 303
    return-void

    .line 305
    :cond_1
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

    .line 307
    :try_start_0
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager;->setCrossSimCallingEnabled(Z)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    goto :goto_0

    .line 308
    :catch_0
    move-exception v1

    .line 309
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

    .line 312
    .end local v1    # "exception":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method


# virtual methods
.method protected addDataDisallowedReasonWhenInSecureMode(Lcom/android/internal/telephony/data/DataEvaluation;)V
    .locals 2
    .param p1, "evaluation"    # Lcom/android/internal/telephony/data/DataEvaluation;

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDataDisallowedReasonWhenInSecureMode: mIsInSecureMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsInSecureMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 659
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsInSecureMode:Z

    if-eqz v0, :cond_0

    .line 660
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->DATA_RESTRICTED_BY_SECURE_MODE:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 662
    :cond_0
    return-void
.end method

.method protected checkSimStateForDataEvaluation(Lcom/android/internal/telephony/data/DataEvaluation;)V
    .locals 2
    .param p1, "evaluation"    # Lcom/android/internal/telephony/data/DataEvaluation;

    .line 673
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mSimState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 674
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isEssentialRecordsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    const-string v0, "QtiDCT SIM is neither loaded, nor essentially loaded"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 676
    sget-object v0, Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;->SIM_NOT_READY:Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataEvaluation;->addDataDisallowedReason(Lcom/android/internal/telephony/data/DataEvaluation$DataDisallowedReason;)V

    .line 678
    :cond_0
    return-void
.end method

.method evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 529
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    return-void

    .line 536
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    nop

    .line 542
    if-nez v0, :cond_1

    .line 543
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

    .line 544
    return-void

    .line 547
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 548
    const-string v1, "evaluateAndSendDataDuringVoiceCallInfo, sub id is invalid"

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->loge(Ljava/lang/String;)V

    .line 549
    return-void

    .line 553
    :cond_2
    const/4 v1, 0x0

    .line 555
    .local v1, "isDataAllowedDuringCall":Z
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getNonDdsPhoneId()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 560
    nop

    .line 561
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataAllowedInVoiceCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 562
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isDataEnabledOnDds()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 563
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isDdsRoamingCriteriaSatisfiedForTempSwitch()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDataAllowedDuringCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data during calls switch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 567
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataAllowedInVoiceCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isDataEnabledOnDds: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 568
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isDataEnabledOnDds()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isDdsRoamingSatisfied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 569
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

    .line 565
    invoke-virtual {p0, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 574
    :cond_4
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    if-eqz v2, :cond_5

    .line 575
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmartTempDdsSwitchSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 576
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

    .line 578
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mClient:Lcom/qti/extphone/Client;

    invoke-virtual {v2, p1, v1, v3}, Lcom/qti/extphone/ExtTelephonyManager;->sendUserPreferenceForDataDuringVoiceCall(IZLcom/qti/extphone/Client;)Lcom/qti/extphone/Token;

    .line 582
    :cond_5
    return-void

    .line 537
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "isDataAllowedDuringCall":Z
    :catch_0
    move-exception v0

    .line 538
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

    .line 539
    return-void
.end method

.method public getEnhancedRadioCapabilityResponse()Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnhancedRadioCapability:Lorg/codeaurora/telephony/utils/EnhancedRadioCapabilityResponse;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 233
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

    .line 234
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 252
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 240
    :pswitch_0
    const-string v0, "EVENT_QTI_DISCONNECT_DEFAULT_PDN"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 241
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingDataOff:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingDataOff:Z

    .line 243
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsMobileDataEnabled:Z

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnabledChangedReason:I

    invoke-super {p0, v0, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataEnabledChanged(ZI)V

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingRoamingOff:Z

    if-eqz v0, :cond_1

    .line 247
    iput-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingRoamingOff:Z

    .line 248
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsDataRoamingEnabled:Z

    invoke-super {p0, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataRoamingEnabledChanged(Z)V

    goto :goto_0

    .line 236
    :pswitch_1
    const-string v0, "EVENT_RECONNECT_QTI_EXT_TELEPHONY_SERVICE"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 238
    nop

    .line 254
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x420c8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected isPdpRejectRetryOngoing(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)Z
    .locals 4
    .param p1, "networkRequest"    # Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 705
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    .line 706
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result v1

    .line 705
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getPreferredTransportByNetworkCapability(I)I

    move-result v0

    .line 707
    .local v0, "transport":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 708
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getDataNetworkType(I)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 709
    .local v1, "dataProfile":Landroid/telephony/data/DataProfile;
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    check-cast v2, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;

    .line 711
    .local v2, "qtiDataRetryManager":Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;
    invoke-virtual {v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->isPdpRejectRetryOngoing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 712
    invoke-virtual {v2, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataRetryManager;->isDataProfileOfTypeDefault(Landroid/telephony/data/DataProfile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 713
    const-string v3, "isPdpRejectRetryOngoing: true"

    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 714
    const/4 v3, 0x1

    return v3

    .line 716
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public onCarrierConfigLoadedForEssentialRecords()V
    .locals 1

    .line 605
    const-string v0, "QtiDNC onCarrierConfigLoadedForEssentialRecords"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->onCarrierConfigLoadedForEssentialRecords()V

    .line 607
    return-void
.end method

.method protected onDataDuringVoiceCallChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 258
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

    .line 259
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const-string v1, "DATA_DURING_VOICE_CALL_CHANGED"

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V

    .line 261
    return-void
.end method

.method protected onDataEnabledChanged(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 365
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

    .line 367
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCurrentSubDds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getNonDdsPhoneId()I

    move-result v0

    const-string v1, "DDS_DATA_ENABLED_CHANGED"

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V

    .line 374
    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 375
    const v0, 0x420c9

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsMobileDataEnabled:Z

    .line 377
    iput p2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mEnabledChangedReason:I

    .line 378
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 381
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingDataOff:Z

    goto :goto_0

    .line 383
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataEnabledChanged(ZI)V

    .line 385
    :goto_0
    return-void
.end method

.method public onDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetwork;)V
    .locals 1
    .param p1, "dataNetwork"    # Lcom/android/internal/telephony/data/DataNetwork;

    .line 687
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mQtiDataConfigManager:Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;

    invoke-virtual {v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataConfigManager;->isPdpRejectConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->isInternetSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    const-string v0, "QtiDNC onDataNetworkConnected: Reset data reject count .."

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->log(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mDataRetryManager:Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataRetryManager;->handlePdpRejectCauseSuccess()V

    .line 692
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataNetworkConnected(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 693
    return-void
.end method

.method protected onDataRoamingEnabledChanged(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 389
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

    .line 391
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCurrentSubDds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getNonDdsPhoneId()I

    move-result v0

    const-string v1, "DDS_DATA_ROAMING_ENABLED_CHANGED"

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->evaluateAndSendDataDuringVoiceCallInfo(ILjava/lang/String;)V

    .line 399
    :cond_0
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 400
    const v0, 0x420c9

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsDataRoamingEnabled:Z

    .line 402
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mCiwlanTimer:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 405
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPendingRoamingOff:Z

    goto :goto_0

    .line 407
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onDataRoamingEnabledChanged(Z)V

    .line 409
    :goto_0
    return-void
.end method

.method protected onServiceStateChanged()V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCurrentSubDds(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->handleDdsRoamingStateChangesIfRequired()V

    .line 479
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onServiceStateChanged()V

    .line 480
    return-void
.end method

.method protected onSimStateChanged(I)V
    .locals 0
    .param p1, "simState"    # I

    .line 634
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->resetEssentialRecordsLoadedStateIfRequired(I)V

    .line 635
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->onSimStateChanged(I)V

    .line 636
    return-void
.end method

.method protected onSubscriptionChanged()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mSubId:I

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 267
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 268
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mClient:Lcom/qti/extphone/Client;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByPlatform:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->isCrossSimCallingEnabledByUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsCiwlanFeatureEnabledByUser:Z

    .line 271
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->sendCrossSimCallingEnabled()V

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->getCiwlanUiInfoAndStartTimer()V

    .line 275
    :cond_1
    invoke-super {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->onSubscriptionChanged()V

    .line 276
    return-void
.end method

.method public setEssentialRecordsLoaded(Z)V
    .locals 2
    .param p1, "isLoaded"    # Z

    .line 615
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

    .line 616
    iput-boolean p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiDataNetworkController;->mIsEssentialRecordsLoaded:Z

    .line 617
    return-void
.end method
