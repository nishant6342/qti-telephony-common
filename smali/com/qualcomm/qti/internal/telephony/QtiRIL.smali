.class public final Lcom/qualcomm/qti/internal/telephony/QtiRIL;
.super Lcom/android/internal/telephony/RIL;
.source "QtiRIL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;,
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;,
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;,
        Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;
    }
.end annotation


# static fields
.field private static final ACCESS_MODE_PLMN:I = 0x1

.field private static final NETWORK_ACCESS_MODE:Ljava/lang/String; = "access_mode"

.field private static final PROPERTY_CAG_SNPN:Ljava/lang/String; = "persist.vendor.cag_snpn"

.field static final QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "QTIRILJ"


# instance fields
.field private mCagSnpnFeatureStatus:I

.field mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

.field mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadioResponse$Stub;

.field final mDeathRecipient:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

.field private mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

.field mQtiPhoneId:I

.field private mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

.field mQtiRadioIndication:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;

.field final mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;

.field private final mServiceNotification:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;


# direct methods
.method static bridge synthetic -$$Nest$minitQtiRadio(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->initQtiRadio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misQtiRadioServiceConnected(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isQtiRadioServiceConnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mresetServiceAndRequestList(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetServiceAndRequestList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 63
    const-string v0, "slot1"

    const-string v1, "slot2"

    const-string v2, "slot3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mCagSnpnFeatureStatus:I

    .line 81
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mServiceNotification:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;

    .line 180
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    .line 181
    const-string v0, "QTIRILJ"

    const-string v1, "QtiRIL"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mDeathRecipient:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

    .line 183
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->registerForQtiRadioServiceNotification()V

    .line 184
    return-void
.end method

.method private addRanToOperatorNumeric(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "ran"    # I

    .line 466
    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 462
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private declared-synchronized initQtiRadio()V
    .locals 4

    monitor-enter p0

    .line 156
    :try_start_0
    sget-object v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->getService(Ljava/lang/String;)Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 157
    if-nez v0, :cond_0

    .line 158
    const-string v0, "QTIRILJ"

    const-string v1, "initQtiRadio: mQtiRadio is null. Return"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 161
    .end local p0    # "this":Lcom/qualcomm/qti/internal/telephony/QtiRIL;
    :cond_0
    :try_start_1
    const-string v0, "QTIRILJ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initQtiRadio: mQtiRadio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mDeathRecipient:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioProxyDeathRecipient;

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 163
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 162
    invoke-interface {v0, v1, v2, v3}, Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 164
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;

    invoke-direct {v0, p0, p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;Lcom/qualcomm/qti/internal/telephony/QtiRIL;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;

    .line 165
    new-instance v0, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;-><init>(Lcom/qualcomm/qti/internal/telephony/QtiRIL;I)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioIndication:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "QTIRILJ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initQtiRadio: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetServiceAndRequestList()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private isQtiRadioServiceConnected()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerForQtiRadioServiceNotification()V
    .locals 5

    .line 139
    const-string v0, "QTIRILJ"

    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    const-string v2, "vendor.qti.hardware.radio.qtiradio@1.0::IQtiRadio"

    sget-object v3, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->QTI_HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mServiceNotification:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioServiceNotification;

    .line 140
    invoke-interface {v1, v2, v3, v4}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v1

    .line 142
    .local v1, "ret":Z
    if-nez v1, :cond_0

    .line 143
    const-string v2, "Failed to register for service start notifications"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "ret":Z
    :cond_0
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register for service start notifications. Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private resetServiceAndRequestList()V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->resetProxyAndRequestList()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 96
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioResponse:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioResponse;

    .line 97
    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioIndication:Lcom/qualcomm/qti/internal/telephony/QtiRIL$QtiRadioIndication;

    .line 98
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadioProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 99
    return-void
.end method

.method private sendCdmaSms([BLandroid/os/Message;Z)V
    .locals 3
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;
    .param p3, "expectMore"    # Z

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCdmaSms,  expectMore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->sendCdmaSms(I[BLandroid/os/Message;Z)Z

    move-result v0

    .line 543
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 544
    const-string v2, "fall back to default sendCdmaSms"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->sendCdmaSms([BLandroid/os/Message;)V

    .line 547
    :cond_0
    return-void
.end method


# virtual methods
.method public disable5g(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 227
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 228
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->disable5g(I)V

    .line 233
    return-void

    .line 231
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enable5g(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 217
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 218
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->enable5g(I)V

    .line 223
    return-void

    .line 221
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enable5gOnly(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 237
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 238
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->enable5gOnly(I)V

    .line 243
    return-void

    .line 241
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enableEndc(IZ)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 395
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v0

    .line 396
    .local v0, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v0, :cond_0

    .line 397
    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->enableEndc(IZ)V

    .line 401
    return-void

    .line 399
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAccessMode()I
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "access_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEnhancedRadioCapability(Landroid/os/Message;)V
    .locals 8
    .param p1, "response"    # Landroid/os/Message;

    .line 440
    const-string v0, "getEnhancedRadioCapability request failed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnhancedRadioCapability,  response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QTIRILJ"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v1, 0x0

    .line 442
    .local v1, "exception":Z
    const/4 v3, 0x0

    .line 444
    .local v3, "ret":Z
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v6

    iget v7, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v6, v7, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getQtiRadioCapability(ILandroid/os/Message;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v6

    .line 450
    if-nez v1, :cond_0

    if-nez v3, :cond_2

    .line 451
    :cond_0
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    if-eqz p1, :cond_2

    .line 453
    :goto_0
    nop

    .line 454
    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 453
    invoke-static {p1, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 455
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 450
    :catchall_0
    move-exception v6

    goto :goto_2

    .line 445
    :catch_0
    move-exception v6

    .line 446
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "getEnhancedRadioCapability, exception"

    invoke-static {v2, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    const/4 v1, 0x1

    .line 450
    .end local v6    # "e":Ljava/lang/Exception;
    if-nez v1, :cond_1

    if-nez v3, :cond_2

    .line 451
    :cond_1
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    if-eqz p1, :cond_2

    .line 453
    goto :goto_0

    .line 459
    :cond_2
    :goto_1
    return-void

    .line 450
    :goto_2
    if-nez v1, :cond_3

    if-nez v3, :cond_4

    .line 451
    :cond_3
    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    if-eqz p1, :cond_4

    .line 453
    nop

    .line 454
    invoke-static {v4}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 453
    invoke-static {p1, v5, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 455
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 458
    :cond_4
    throw v6
.end method

.method public getPropertyValueBool(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    move v0, p2

    .line 359
    .local v0, "propVal":Z
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 360
    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v1

    .line 361
    .local v1, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v1, :cond_0

    .line 363
    :try_start_0
    invoke-interface {v1, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 366
    goto :goto_0

    .line 364
    :catch_0
    move-exception v2

    .line 365
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "API Error"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 368
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "QTIRILJ"

    const-string v3, "getPropertyValueBool HAL API not available"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 372
    :goto_0
    return v0
.end method

.method public getPropertyValueInt(Ljava/lang/String;I)I
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    move v0, p2

    .line 341
    .local v0, "propVal":I
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 342
    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v1

    .line 343
    .local v1, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v1, :cond_0

    .line 345
    :try_start_0
    invoke-interface {v1, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->getPropertyValueInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 348
    goto :goto_0

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "API Error"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 350
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "QTIRILJ"

    const-string v3, "getPropertyValueInt HAL API not available"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 354
    :goto_0
    return v0
.end method

.method public getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    move-object v0, p2

    .line 377
    .local v0, "propVal":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 378
    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v1

    .line 379
    .local v1, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v1, :cond_0

    .line 381
    :try_start_0
    invoke-interface {v1, p1, p2}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->getPropertyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 384
    goto :goto_0

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "API Error"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 386
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "QTIRILJ"

    const-string v3, "getPropertyValueString HAL API not available"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    :goto_0
    return-object v0
.end method

.method public getQtiRadioProxy(Landroid/os/Message;)Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;
    .locals 4
    .param p1, "result"    # Landroid/os/Message;

    .line 188
    iget-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mIsCellularSupported:Z

    const/4 v1, 0x1

    const-string v2, "QTIRILJ"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 189
    const-string v0, "getQtiRadioProxy: Not calling getService(): wifi-only"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eqz p1, :cond_0

    .line 191
    nop

    .line 192
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 191
    invoke-static {p1, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 193
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 195
    :cond_0
    return-object v3

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    if-nez v0, :cond_2

    .line 200
    const-string v0, "getQtiRadioProxy: mRadioProxy == null"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-eqz p1, :cond_2

    .line 202
    nop

    .line 203
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 202
    invoke-static {p1, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 204
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    return-object v0
.end method

.method public isCagSnpnEnabled()Z
    .locals 4

    .line 572
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mCagSnpnFeatureStatus:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 573
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    const-string v3, "persist.vendor.cag_snpn"

    invoke-virtual {v0, v3, v1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mCagSnpnFeatureStatus:I

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCagSnpnEnable, mCagSnpnFeatureStatus = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mCagSnpnFeatureStatus:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "QTIRILJ"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_1
    iget v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mCagSnpnFeatureStatus:I

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public notifyNetworkScanResult(Lcom/android/internal/telephony/NetworkScanResult;)V
    .locals 3
    .param p1, "nsr"    # Lcom/android/internal/telephony/NetworkScanResult;

    .line 102
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mRilNetworkScanResultRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 104
    return-void
.end method

.method qtiGetMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;
    .locals 1
    .param p1, "request"    # Ljava/lang/Object;

    .line 551
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getMessageFromRequest(Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method qtiProcessResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;

    .line 556
    invoke-virtual {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    return-object v0
.end method

.method qtiProcessResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 0
    .param p1, "ret"    # Ljava/lang/Object;
    .param p2, "responseInfo"    # Landroid/hardware/radio/V1_0/RadioResponseInfo;
    .param p3, "str"    # Ljava/lang/Object;

    .line 560
    invoke-virtual {p0, p1, p2, p3}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->processResponseDone(Ljava/lang/Object;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 561
    return-void
.end method

.method public query5gConfigInfo(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 309
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;

    move-result-object v0

    .line 310
    .local v0, "radioProxy2_1":Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;
    if-eqz v0, :cond_0

    .line 311
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->query5gConfigInfo(I)V

    .line 315
    return-void

    .line 313
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public query5gStatus(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 247
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 248
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->query5gStatus(I)V

    .line 253
    return-void

    .line 251
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryEndcStatus(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 405
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;

    move-result-object v0

    .line 406
    .local v0, "radioProxy2_3":Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;
    if-eqz v0, :cond_0

    .line 407
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_3/IQtiRadio;->queryEndcStatus(I)V

    .line 411
    return-void

    .line 409
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrBearerAllocation(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 267
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 268
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->queryNrBearerAllocation(I)V

    .line 273
    return-void

    .line 271
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrConfig(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 330
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;

    move-result-object v0

    .line 331
    .local v0, "radioProxy2_5":Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;
    if-eqz v0, :cond_0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNrConfig: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QTIRILJ"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;->queryNrConfig(I)V

    .line 337
    return-void

    .line 335
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrDcParam(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 257
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 258
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 259
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->queryNrDcParam(I)V

    .line 263
    return-void

    .line 261
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrIconType(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 298
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;

    move-result-object v0

    .line 299
    .local v0, "radioProxy2_2":Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;
    if-eqz v0, :cond_0

    .line 300
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadio;->queryNrIconType(I)V

    .line 304
    return-void

    .line 302
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryNrSignalStrength(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 277
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;

    move-result-object v0

    .line 278
    .local v0, "radioProxy2_0":Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;
    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_0/IQtiRadio;->queryNrSignalStrength(I)V

    .line 283
    return-void

    .line 281
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryUpperLayerIndInfo(I)V
    .locals 3
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 287
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;

    move-result-object v0

    .line 288
    .local v0, "radioProxy2_1":Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;
    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/qtiradio/V2_1/IQtiRadio;->queryUpperLayerIndInfo(I)V

    .line 293
    return-void

    .line 291
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public sendCdmaSMSExpectMore([BLandroid/os/Message;)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 532
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->canToggleUiccApplicationsEnablement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->sendCdmaSMSExpectMore([BLandroid/os/Message;)V

    .line 534
    return-void

    .line 536
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->sendCdmaSms([BLandroid/os/Message;Z)V

    .line 537
    return-void
.end method

.method public sendCdmaSms([BLandroid/os/Message;)V
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "result"    # Landroid/os/Message;

    .line 521
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->canToggleUiccApplicationsEnablement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->sendCdmaSms([BLandroid/os/Message;)V

    .line 523
    return-void

    .line 526
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->sendCdmaSms([BLandroid/os/Message;Z)V

    .line 527
    return-void
.end method

.method public setCallbacks(Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadioResponse$Stub;Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;)V
    .locals 0
    .param p1, "qtiRadioResponse"    # Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadioResponse$Stub;
    .param p2, "qtiRadioIndication"    # Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    .line 567
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioResponseCb:Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadioResponse$Stub;

    .line 568
    iput-object p2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mClientRadioIndicationCb:Lvendor/qti/hardware/radio/qtiradio/V2_2/IQtiRadioIndication$Stub;

    .line 569
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "imsiEncryptionInfo"    # Landroid/telephony/ImsiEncryptionInfo;

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCarrierInfoForImsiEncryption,  serial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTIRILJ"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    invoke-virtual {v0, v1, p2, v2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;)V

    .line 417
    return-void
.end method

.method public setImsiEncryptionResponseCallback(Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;)V
    .locals 0
    .param p1, "qtiCarrierInfo"    # Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    .line 212
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiCarrierInfoResponse:Lcom/qualcomm/qti/internal/telephony/QtiCarrierInfoManager$QtiCarrierInfoResponse;

    .line 213
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 3
    .param p1, "result"    # Landroid/os/Message;

    .line 509
    const-string v0, "QTIRILJ"

    const-string v1, "setNetworkSelectionModeAutomatic"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isCagSnpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    .line 512
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getAccessMode()I

    move-result v2

    .line 511
    invoke-virtual {v0, v1, v2, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->setNetworkSelectionModeAutomatic(IILandroid/os/Message;)Z

    goto :goto_0

    .line 514
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 516
    :goto_0
    return-void
.end method

.method public setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 2
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "result"    # Landroid/os/Message;

    .line 500
    const-string v0, "QTIRILJ"

    const-string v1, "setNetworkSelectionModeManual"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isCagSnpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)Z

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getRan()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V

    .line 506
    :goto_0
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "ran"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 472
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getHalVersion()Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {p0, p3}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->getRadioProxy(Landroid/os/Message;)Landroid/hardware/radio/V1_0/IRadio;

    move-result-object v0

    .line 479
    .local v0, "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    if-eqz v0, :cond_1

    .line 480
    const/16 v1, 0x2f

    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p0, v1, p3, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 483
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalRadioAccessNetworks(I)I

    move-result v2

    .line 484
    .local v2, "halRan":I
    nop

    .line 485
    invoke-direct {p0, p1, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->addRanToOperatorNumeric(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "operatorNumericWithRan":Ljava/lang/String;
    const-string v4, "QTIRILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " operatorNumeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [PHONE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result v4

    invoke-interface {v0, v4, v3}, Landroid/hardware/radio/V1_0/IRadio;->setNetworkSelectionModeManual(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v2    # "halRan":I
    .end local v3    # "operatorNumericWithRan":Ljava/lang/String;
    goto :goto_0

    .line 491
    :catch_0
    move-exception v2

    .line 492
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    const-string v4, "setNetworkSelectionModeManual"

    invoke-virtual {p0, v3, v4, v2}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 497
    .end local v0    # "radioProxy":Landroid/hardware/radio/V1_0/IRadio;
    .end local v1    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public setNrConfig(ILorg/codeaurora/internal/NrConfig;)V
    .locals 3
    .param p1, "serial"    # I
    .param p2, "config"    # Lorg/codeaurora/internal/NrConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiRadio:Lvendor/qti/hardware/radio/qtiradio/V1_0/IQtiRadio;

    .line 319
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;

    move-result-object v0

    .line 320
    .local v0, "radioProxy2_5":Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;
    if-eqz v0, :cond_0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNrConfig: serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " config= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/codeaurora/internal/NrConfig;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QTIRILJ"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p2}, Lorg/codeaurora/internal/NrConfig;->get()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/qtiradio/V2_5/IQtiRadio;->setNrConfig(II)V

    .line 326
    return-void

    .line 324
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "API not available!"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 2
    .param p1, "networkScanRequest"    # Landroid/telephony/NetworkScanRequest;
    .param p2, "result"    # Landroid/os/Message;

    .line 420
    const-string v0, "QTIRILJ"

    const-string v1, "startNetworkScan"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isCagSnpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->startNetworkScan(ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)Z

    goto :goto_0

    .line 425
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    .line 428
    :goto_0
    return-void
.end method

.method public stopNetworkScan(Landroid/os/Message;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Message;

    .line 431
    const-string v0, "QTIRILJ"

    const-string v1, "stopNetworkScan"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {p0}, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->isCagSnpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->getInstance()Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiRIL;->mQtiPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/qti/internal/telephony/QtiPhoneUtils;->stopNetworkScan(ILandroid/os/Message;)Z

    goto :goto_0

    .line 435
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->stopNetworkScan(Landroid/os/Message;)V

    .line 437
    :goto_0
    return-void
.end method
