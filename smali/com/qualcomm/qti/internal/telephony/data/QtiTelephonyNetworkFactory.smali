.class public Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;
.super Lcom/android/internal/telephony/data/TelephonyNetworkFactory;
.source "QtiTelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory$QtiInternalHandler;
    }
.end annotation


# static fields
.field private static final EVENT_DUAL_DATA_RECOMMENDATION:I = 0x65


# instance fields
.field private mDualDataRecommendation:Lcom/qti/extphone/DualDataRecommendation;

.field private mHandler:Landroid/os/Handler;

.field private mQtiPhoneSwitcher:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;


# direct methods
.method static bridge synthetic -$$Nest$monDualDataRecommendation(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;Lcom/qti/extphone/DualDataRecommendation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->onDualDataRecommendation(Lcom/qti/extphone/DualDataRecommendation;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/PhoneSwitcher;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "phoneSwitcher"    # Lcom/android/internal/telephony/data/PhoneSwitcher;

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/TelephonyNetworkFactory;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/PhoneSwitcher;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QtiTelephonyNetworkFactory["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->LOG_TAG:Ljava/lang/String;

    .line 38
    instance-of v0, p3, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p3

    check-cast v0, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mQtiPhoneSwitcher:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    .line 40
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory$QtiInternalHandler;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory$QtiInternalHandler;-><init>(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mHandler:Landroid/os/Handler;

    .line 41
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mQtiPhoneSwitcher:Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 42
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 41
    const/16 v3, 0x65

    invoke-virtual {v1, v0, v3, v2}, Lcom/qualcomm/qti/internal/telephony/data/QtiPhoneSwitcher;->registerForDualDataRecommendation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;
    .param p1, "x1"    # Ljava/lang/String;

    .line 26
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->log(Ljava/lang/String;)V

    return-void
.end method

.method private onDualDataRecommendation(Lcom/qti/extphone/DualDataRecommendation;)V
    .locals 11
    .param p1, "rec"    # Lcom/qti/extphone/DualDataRecommendation;

    .line 73
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mDualDataRecommendation:Lcom/qti/extphone/DualDataRecommendation;

    .line 74
    invoke-virtual {p1}, Lcom/qti/extphone/DualDataRecommendation;->getRecommendedSub()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 75
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 76
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 77
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 78
    .local v3, "networkRequest":Lcom/android/internal/telephony/data/TelephonyNetworkRequest;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 80
    .local v4, "applied":Z
    :goto_1
    iget-object v7, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    iget-object v8, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 81
    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    .line 80
    invoke-virtual {v7, v3, v8}, Lcom/android/internal/telephony/data/PhoneSwitcher;->shouldApplyNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result v7

    .line 83
    .local v7, "shouldApply":Z
    invoke-static {v4, v7}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->getAction(ZZ)I

    move-result v8

    .line 84
    .local v8, "action":I
    if-nez v8, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDualDataRecommendation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ne v8, v6, :cond_2

    .line 87
    const-string v10, "Requesting"

    goto :goto_2

    :cond_2
    const-string v10, "Releasing"

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " network request "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 86
    invoke-virtual {p0, v9}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->logl(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v3}, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->getTransportTypeFromNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)I

    move-result v9

    .line 89
    .local v9, "transportType":I
    if-ne v8, v6, :cond_3

    .line 90
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getNativeNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v6

    iget v10, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mSubscriptionId:I

    invoke-static {v6, v10}, Lcom/android/internal/telephony/metrics/NetworkRequestsStats;->addNetworkRequest(Landroid/net/NetworkRequest;I)V

    .line 92
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->addNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    goto :goto_3

    .line 93
    :cond_3
    if-ne v8, v1, :cond_4

    .line 94
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->removeNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    .line 97
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mNetworkRequests:Ljava/util/Map;

    .line 98
    if-eqz v7, :cond_5

    move v5, v9

    goto :goto_4

    .line 99
    :cond_5
    nop

    .line 98
    :goto_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 97
    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Ljava/lang/Integer;>;"
    .end local v3    # "networkRequest":Lcom/android/internal/telephony/data/TelephonyNetworkRequest;
    .end local v4    # "applied":Z
    .end local v7    # "shouldApply":Z
    .end local v8    # "action":I
    .end local v9    # "transportType":I
    goto/16 :goto_0

    .line 102
    :cond_6
    return-void
.end method


# virtual methods
.method public isInternetDataAllowed()Z
    .locals 4

    .line 106
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mSubscriptionId:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 107
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mPhoneSwitcher:Lcom/android/internal/telephony/data/PhoneSwitcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->getPreferredDataPhoneId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 108
    return v2

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mDualDataRecommendation:Lcom/qti/extphone/DualDataRecommendation;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Lcom/qti/extphone/DualDataRecommendation;->getRecommendedSub()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/data/QtiTelephonyNetworkFactory;->mDualDataRecommendation:Lcom/qti/extphone/DualDataRecommendation;

    .line 114
    invoke-virtual {v0}, Lcom/qti/extphone/DualDataRecommendation;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 113
    :goto_0
    return v2

    .line 117
    :cond_2
    return v1
.end method
