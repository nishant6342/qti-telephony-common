.class public Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;
.super Lcom/android/internal/telephony/data/TelephonyNetworkAgent;
.source "QtiTelephonyNetworkAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent$InternalHandler;
    }
.end annotation


# static fields
.field private static final EVENT_ACTIVE_PHONE_SWITCH:I = 0x1

.field private static final NETWORK_LINGER_TIME_DDS:J = 0x7530L

.field private static final NETWORK_LINGER_TIME_NON_DDS:J = 0x7d0L

.field private static final TEARDOWN_DELAY_TIMEOUT_DDS:I

.field private static final TEARDOWN_DELAY_TIMEOUT_NON_DDS:I


# instance fields
.field private mInternalHandler:Landroid/os/Handler;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

.field private mScore:I


# direct methods
.method static bridge synthetic -$$Nest$monActivePhoneSwitch(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->onActivePhoneSwitch()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "dataNetwork"    # Lcom/android/internal/telephony/data/DataNetwork;
    .param p4, "score"    # Landroid/net/NetworkScore;
    .param p5, "config"    # Landroid/net/NetworkAgentConfig;
    .param p6, "provider"    # Landroid/net/NetworkProvider;
    .param p7, "callback"    # Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;

    .line 73
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/data/TelephonyNetworkAgent;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataNetwork;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/internal/telephony/data/TelephonyNetworkAgent$TelephonyNetworkAgentCallback;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiTNA-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mLogTag:Ljava/lang/String;

    .line 76
    invoke-virtual {p4}, Landroid/net/NetworkScore;->getLegacyInt()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mScore:I

    .line 77
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 78
    invoke-static {}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getInstance()Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 79
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent$InternalHandler;

    invoke-direct {v0, p0, p2}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent$InternalHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mInternalHandler:Landroid/os/Handler;

    .line 80
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/data/PhoneSwitcher;->registerForActivePhoneSwitch(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 82
    const-string v0, "Constructor"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->log(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;)Lcom/android/internal/telephony/data/DataNetwork;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;

    .line 43
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private onActivePhoneSwitch()V
    .locals 6

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "isPrimary":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 110
    const-wide/16 v1, 0x7530

    .line 111
    .local v1, "lingerTimer":J
    const/4 v3, 0x0

    .line 112
    .local v3, "timeoutDelay":I
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "lingerTimer":J
    .end local v3    # "timeoutDelay":I
    :cond_0
    const-wide/16 v1, 0x7d0

    .line 115
    .restart local v1    # "lingerTimer":J
    const/4 v3, 0x0

    .line 117
    .restart local v3    # "timeoutDelay":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivePhoneSwitch: setTransportPrimary = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->log(Ljava/lang/String;)V

    .line 118
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->setLingerDuration(Ljava/time/Duration;)V

    .line 119
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->setTeardownDelayMillis(I)V

    .line 120
    new-instance v4, Landroid/net/NetworkScore$Builder;

    invoke-direct {v4}, Landroid/net/NetworkScore$Builder;-><init>()V

    iget v5, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mScore:I

    invoke-virtual {v4, v5}, Landroid/net/NetworkScore$Builder;->setLegacyInt(I)Landroid/net/NetworkScore$Builder;

    move-result-object v4

    .line 121
    invoke-virtual {v4, v0}, Landroid/net/NetworkScore$Builder;->setTransportPrimary(Z)Landroid/net/NetworkScore$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkScore$Builder;->build()Landroid/net/NetworkScore;

    move-result-object v4

    .line 120
    invoke-virtual {p0, v4}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->sendNetworkScore(Landroid/net/NetworkScore;)V

    .line 122
    return-void
.end method


# virtual methods
.method public onNetworkDestroyed()V
    .locals 2

    .line 134
    const-string v0, "onNetworkDestroyed - tearing down"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->log(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mInternalHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->unregisterForActivePhoneSwitch(Landroid/os/Handler;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mInternalHandler:Landroid/os/Handler;

    .line 138
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mAbandoned:Z

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "The agent is already abandoned. Ignored to tear down"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->log(Ljava/lang/String;)V

    .line 140
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->mDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->tearDown(I)V

    .line 143
    return-void
.end method

.method public onNetworkUnwanted()V
    .locals 1

    .line 129
    const-string v0, "onNetworkUnwanted - no-op"

    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkAgent;->log(Ljava/lang/String;)V

    .line 130
    return-void
.end method
